extends Node2D

#--- project settings
#--- stretch:
#--- - mode: canvas_items
#--- - scale mode: integer (gets rid of jitter)

var level_boundaries = Vector2(500, 500) #--- placeholder
var border = Vector2(128, 96) #--- placeholder
var viewport


func _ready() -> void:
	viewport = get_viewport() #--- set viewport value
	viewport.snap_2d_transforms_to_pixel = true #--- gets rid of visual waviness


#--- sample code that demonstrates how functions work
#func _physics_process(delta: float) -> void:
	#var border_rect = create_camera_border_rect(border)
	#compare_border_rect_and_object_following(border_rect, character_body)
	#draw_debug_camera_border(create_camera_border_rect(border))


func move_camera(position: Vector2): #--- moves camera by a specific number of pixels. ex: Vector2(2, 2) would move the camera two pixels to the right and two pixels down
	var new_origin = -position #--- transform for camera takes a negative position
	var current_origin = viewport.get_canvas_transform().origin
	var combined_origin = new_origin + current_origin
	var new_trans = Transform2D(0.0, combined_origin)
	if can_move(combined_origin, level_boundaries):
		viewport.set_canvas_transform(new_trans)


func set_camera_pos(position: Vector2): #--- sets camera to a specific position
	var new_origin = -position
	var new_trans = Transform2D(0.0, new_origin)
	viewport.set_canvas_transform(new_trans)


func get_camera_pos(): #--- returns the position value for the camera based on its origin
	var current_pos = -viewport.get_canvas_transform().origin
	return current_pos


func can_move(destination_pos, level_boundaries): #--- determines whether camera can move based on level boundaries
	if -destination_pos < level_boundaries and -destination_pos > Vector2(0, 0):
		return true
	return false


func compare_border_rect_and_object_following(border_rect, object_following):
	#--- sides of the camera borders
	var left = border_rect.position.x
	var top = border_rect.position.y
	var right = border_rect.position.x + border_rect.size.x
	var bottom = border_rect.position.y + border_rect.size.y

	#--- moving the camera in a certain direction depending on which side the followed object goes outside of the box
	#--- camera moves the amount of pixels between the side moved away from and the followed object
	if object_following.position.x > right:
		move_camera(Vector2(object_following.position.x - right, 0))
	elif object_following.position.x < left:
		move_camera(Vector2(abs(object_following.position.x)-abs(left), 0))
	
	if object_following.position.y > bottom:
		move_camera(Vector2(0, object_following.position.y - bottom))
	elif object_following.position.y < top:
		move_camera(Vector2(0, abs(object_following.position.y) - abs(top)))


func create_camera_border_rect(border): #--- creates a Rect2D of the camera border
	var viewport_pos = get_camera_pos()
	var offset: Vector2
	offset.x = ((320 - border.x) / 2) + viewport_pos.x #--- for putting box in the center of the screen
	offset.y = ((240 - border.y) / 2) + viewport_pos.y #--- for putting box in the center of the screen
	var border_rect = Rect2(offset, border) #--- offset is the position and border is the size
	return border_rect


func draw_debug_camera_border(border_rect, color_rect): #--- shows a visual depiction of the camera border
	color_rect.size = border_rect.size
	color_rect.position = border_rect.position
