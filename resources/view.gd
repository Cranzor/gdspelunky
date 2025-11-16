extends Node2D
class_name View

#--- project settings
#--- stretch:
#--- - mode: canvas_items
#--- - scale mode: integer (gets rid of jitter)

static var level_boundaries = Vector2(500, 500) #--- placeholder
static var border = Vector2(128, 96) #--- placeholder
var object_following_name: String
static var object_following: GMObject
static var viewport: Viewport
var remote_transform: RemoteTransform2D
static var smooth_scroll_camera_vertically: bool = false
static var smooth_scroll_target_y_pos: float
static var smooth_scroll_starting_y_pos: float
static var smooth_scroll_pixel_amount: int
static var internal_position: Vector2
static var diff: int


func _process(delta: float) -> void:
	diff = viewport.get_visible_rect().size.x - 320
	
	if GameSettings.smooth_motion:
		if smooth_scroll_camera_vertically:
			move_camera(Vector2(0, smooth_scroll_pixel_amount * 30 * delta))
		update_camera_pos()


func _ready() -> void:
	viewport = get_viewport() #--- set viewport value
	if GameSettings.smooth_motion == false:
		viewport.snap_2d_transforms_to_pixel = true #--- gets rid of visual waviness


func setup(passed_level_boundaries: Vector2, passed_border: Vector2, passed_object_following: String):
	level_boundaries  = passed_level_boundaries
	border = passed_border
	object_following = gml.get_instance(passed_object_following)
	object_following_name = passed_object_following


func move_camera(position: Vector2): #--- moves camera by a specific number of pixels. ex: Vector2(2, 2) would move the camera two pixels to the right and two pixels down
	internal_position = position + internal_position
	internal_position = internal_position.clamp(Vector2(0, 0), Vector2(level_boundaries.x - 320, level_boundaries.y - 240))


static func set_camera_pos(position: Vector2): #--- sets camera to a specific position
	internal_position = position.clamp(Vector2(0, 0), Vector2(level_boundaries.x - 320, level_boundaries.y - 240))


func update_camera_pos():
	set_object_if_delayed() #--- setting the correct object to follow if the object spawns in later
	
	if object_following:
		var object_position: Vector2 = object_following.position
		if GameSettings.smooth_motion and not remote_transform:
				remote_transform = object_following.get_node("SmoothMotion/RemoteTransform2D")
		if GameSettings.smooth_motion:
			object_position = remote_transform.position
		#--- sides of the camera borders
		#--- comments are sample values for level
		var left = internal_position.x + border.x #--- 128
		var bottom = (internal_position.y + 240) - border.y #--- 144
		var right = (internal_position.x + 320) - border.x #--- 192
		var top = internal_position.y + border.y #--- 96

		#--- moving the camera in a certain direction depending on which side the followed object goes outside of the box
		#--- camera moves the amount of pixels between the side moved away from and the followed object
		if object_position.x > right: move_camera(Vector2(object_position.x - right, 0))
		elif object_position.x < left: move_camera(Vector2(-(abs(object_position.x - left)), 0))
		
		if object_position.y > bottom:
			move_camera(Vector2(0, object_position.y - bottom))
			smooth_scroll_camera_vertically = false
		elif object_position.y < top:
			move_camera(Vector2(0, -(abs(object_position.y - top))))
			smooth_scroll_camera_vertically = false
	
		apply_updated_view()
		#draw_debug_camera_border(Vector2(left, top), Vector2(right - left, bottom - top), get_tree().get_first_node_in_group("debug_color_rect"))


static func apply_updated_view() -> void:
	var new_pos: Vector2 = internal_position.clamp(Vector2(0, 0), Vector2(level_boundaries.x - 320 - diff, level_boundaries.y - 240)) #--- setting new clamped value for widescreen
	var new_origin: Vector2 = -new_pos
	var new_trans: Transform2D = Transform2D(0.0, new_origin)
	viewport.set_canvas_transform(new_trans)


static func set_camera_pos_and_apply(x_pos: int = -1, y_pos: int = -1) -> void: #--- -1 means to keep the passed value the same as that of internal_position
	var new_pos: Vector2 = internal_position
	if x_pos > -1: new_pos.x = x_pos
	if y_pos > -1: new_pos.y = y_pos
	
	set_camera_pos(new_pos)
	apply_updated_view()


func set_object_if_delayed():
	if object_following == null:
		var check = gml.get_instance(object_following_name)
		if check != null:
			object_following = check


func draw_debug_camera_border(pos, size, color_rect): #--- shows a visual depiction of the camera border
	color_rect.size = size
	color_rect.position = pos
	color_rect.visible = true


#--- called by player1 to scroll the screen vertically
static func vertical_scroll(pixels: int):
	if GameSettings.smooth_motion:
		smooth_scroll_starting_y_pos = internal_position.y
		smooth_scroll_target_y_pos = smooth_scroll_starting_y_pos + pixels
		smooth_scroll_pixel_amount = pixels
		smooth_scroll_camera_vertically = true
	else:
		gml.view_yview += pixels
