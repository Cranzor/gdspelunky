@icon("res://sprites/blocks/shop/sign_rare/sign_rare_0.png")
extends StaticBody2D
class_name GMObject

#---TODO: add simple "object setup" and "clear object setup" functions with buttons to make this easier in the editor

var object_database: ObjectDatabase = ObjectDatabase.new()
var sprites: Sprites = Sprites.new()
var new_collision: NewCollision = NewCollision.new()
var custom_collision = preload("res://collision/custom_collision.gd").new()

var grid_position

const SPRITE = preload("res://scenes/sprite.tscn")
var draw_object: bool = true #--- "draw" in GML (keyword is taken in Godot). determines whether or not associated sprite for the object gets drawn

var sprite
var solid = false

var parent
var groups: PackedStringArray

var dir #---[FLAG] not exactly sure what this does
var status: int #--- declaring this here for objects that use it but don't have drawn_sprite as their parent
var counter: int #--- same as above
var type: String
var my_grav: float
var trigger: bool
var grav: float
var dying: bool
var life: float
var UP: int
var DOWN: int
var bloodless: bool
var IDLE: int
var draw_status: int
var highscore: bool
var safe: bool
var money_count: int
var fade_out: bool
var fade_level: float
var poop: bool
var money_diff: int
var shake_toggle: bool
var t_money: int
var t_time: int
var t_kills: int
var t_saves: int
var scrolling: bool
var fade_in: bool
var scroll_start: bool
var y_delta: float #--- only used for those in enemy class besides Olmec
var RECOVER: int
var DEAD: int
var bounce_counter: int
var t: bool
var x_vel_integer: int
var y_vel_integer: int
var final_x_vel = 0
var final_y_vel = 0
var k_down: bool #--- moving this here from player1 script to make things easier since move_to references it
var lb
var tb
var rb
var bb
var up: bool
var down: bool
var left: bool
var right: bool
var timer: int
var reset_interpolation_this_frame: bool = false

#--- want access to these for all objects, so defining here
var collision_bounds_offset_left_x
var collision_bounds_offset_top_y
var collision_bounds_offset_right_x
var collision_bounds_offset_bottom_y

var moving_object: bool = false

@export_group("Sprite")
@export var sprite_index_name: String
@export var animated_sprite_node: AnimatedSprite2D
var sprites_holder: Node2D
@export var sprite_offset = Vector2(0, 0)
@export_group("")

@export var object_name: String
@export var persistent: bool = false
var object_hash: String

const ALARM = preload("res://scenes/alarm.tscn")

@export_group("Alarms")
@export var alarm_0_countdown: Node
@export var alarm_1_countdown: Node
@export var alarm_2_countdown: Node
@export var alarm_3_countdown: Node
@export var alarm_4_countdown: Node
@export var alarm_5_countdown: Node
@export var alarm_6_countdown: Node
@export var alarm_7_countdown: Node
@export var alarm_8_countdown: Node
@export var alarm_9_countdown: Node
@export var alarm_10_countdown: Node
@export var alarm_11_countdown: Node
@export_group("")

@export var alarms: Dictionary[StringName, Alarm]

@export var editor_setup_finished: bool = false

@export var collision_with: Dictionary
@export var collision_with2: Array[StringName]
var other #--- this keyword appears to mistakenly be used in step events and not collision events. in this case, it should have no
		  #--- reference and appears to act the same as passing in "self." it is set to self after run_collision_with for  this purpose

@export var depth: int = 0:
	set(new_depth):
		if object_name == "hint_hand":
			var value = new_depth
		new_depth = clampi(-new_depth, RenderingServer.CANVAS_ITEM_Z_MIN + 1, RenderingServer.CANVAS_ITEM_Z_MAX) #--- adding 1 to minimum to ensure background elements are always behind
		if object_name == "screen": #--- default values are 0. putting these higher to ensure that they draw above everything else
			new_depth = 2
		elif object_name == "game":
			new_depth = 1
		z_index = new_depth
		depth = new_depth
	get:
		return z_index
		
var sprite_index: String:
	set(new_sprite):
		#if new_sprite == "hang_left":
			#print("oh")
		set_animation(new_sprite, animated_sprite_node)
		set_sprite_offset(new_sprite)
		sprite_index_name = new_sprite
		
	get:
		var current_animation = get_animation()
		return current_animation
		#return sprite_index
		
var image_speed: float:
	set(new_speed):
		image_speed = new_speed
		set_animation_speed_scale(new_speed)
	
	get:
		var current_speed_scale = get_animation_speed_scale()
		return current_speed_scale
		
var image_index: int:
	set(new_index):
		image_index = new_index
		set_image_index(new_index)
	get:
		var animated_sprite = get_animated_sprite_2d()
		var index = animated_sprite.get_frame()
		return index

var subimg: int:
	get:
		return image_index

var image_xscale: float:
	set(value):
		animated_sprite_node.scale.x = value
		
		if object_name == "arrow_trap_test": #--- this is the only object in the game with a collision size that gets stretched by image_xscale
			var collision_shape = $CollisionShape2D
			var current_position = collision_shape.position
			var current_size = collision_shape.shape.size
			var new_size = Vector2(current_size.x * value, current_size.y)
			var new_position = Vector2(collision_shape.position.x * value, collision_shape.position.y)
			collision_shape.shape.set_size(new_size)
			collision_shape.position = new_position
			
			var bounding_box = $BoundingBoxArea
			var bb_shape = bounding_box.get_child(0)
			var bb_pos = bounding_box.position
			var bb_size = bb_shape.shape.size
			var bb_new_size = new_size
			bb_new_size = new_size * 2
			var bb_new_pos =  new_position
			bb_shape.shape.set_size(bb_new_size)
			bb_shape.position = bb_new_pos
			
	get:
		return animated_sprite_node.scale.x #--- [FLAG] may need to be adjusted
		
var image_yscale: float:
	set(value):
		animated_sprite_node.scale.y = value
	get:
		return animated_sprite_node.scale.y
		
var image_angle: float:
	set(value):
		animated_sprite_node.rotation_degrees = value
	get:
		return animated_sprite_node.rotation_degrees
		
var image_blend: Color:
	get:
		return Color.WHITE
		
var image_alpha: float:
	set(value):
		animated_sprite_node.self_modulate.a = value
	get:
		return animated_sprite_node.self_modulate.a

var sprite_width: int: #--- read-only variable that gives the width in pixels based on image_xscale.
	get:
		var width = animated_sprite_node.sprite_frames.get_frame_texture(animated_sprite_node.animation, animated_sprite_node.frame).get_width()
		return abs(width * image_xscale)

var sprite_height: int: #--- read-only variable that gives the width in pixels based on image_yscale.
	get:
		var height = animated_sprite_node.sprite_frames.get_frame_texture(animated_sprite_node.animation, animated_sprite_node.frame).get_height()
		return abs(height * image_yscale)

var sprite_xoffset: int #---[FLAG] have to account for this
var sprite_yoffset: int #---[FLAG] have to account for this

#---
var direction #--- only caveman, hawkman, yeti, and fire_bow script use this
var speed: int #--- only caveman, hawkman, and yeti use this
var owner_object: #--- only caveman, hawkman, and yeti use this
	set(value):
		owner_object = value
		if value != null:
			handle_enemy_sight(value) #--- as only sighted enemies use this, we can work with this assumption to handle enemy_sight behavior
		
	get:
		return owner_object
#---
var x_vel: float:
	set(value):
		x_vel = value

var y_vel: float:
	set(value):
		y_vel = value
		#assert(object_name != "push_block")
var x_acc: float
var y_acc: float

@export var object_size: Vector2 #--- created by me for collision purposes
var textures: Array
var sprites_to_draw_ext: Array

func get_animated_sprite_2d() -> AnimatedSprite2D:
	return animated_sprite_node

func set_animation(new_sprite, sprite_node) -> void:
	var animated_sprite = sprite_node
	#assert(animated_sprite.sprite_frames.has_animation(new_sprite))
	if animated_sprite.sprite_frames.has_animation(new_sprite):
		animated_sprite.play(new_sprite)
	else:
		animated_sprite.sprite_frames = sprite_animation_setup(new_sprite, animated_sprite.sprite_frames)
		assert(animated_sprite.sprite_frames.has_animation(new_sprite))
		animated_sprite.play(new_sprite)

func get_animation():
	var animated_sprite: AnimatedSprite2D = get_animated_sprite_2d()
	
	if animated_sprite != null:
		var current_animation = animated_sprite.animation
		return current_animation
	else:
		return null

func set_animation_speed_scale(new_speed) -> void:
	var animated_sprite: AnimatedSprite2D = get_animated_sprite_2d()
	if animated_sprite != null:
		animated_sprite.speed_scale = new_speed

func get_animation_speed_scale() -> float:
	var animated_sprite: AnimatedSprite2D = get_animated_sprite_2d()
	var current_speed_scale = animated_sprite.speed_scale
	return current_speed_scale
	
func set_image_index(new_index) -> void:
	var animated_sprite = get_animated_sprite_2d()
	animated_sprite.set_frame(new_index)

func set_sprite_offset(new_sprite) -> void:
	var animated_sprite = get_animated_sprite_2d()
	sprite_offset = sprites.sprite_database[new_sprite]["origin"]
	
	animated_sprite.offset = -sprite_offset

var x_velocity = 0
var y_velocity = 0
var tick_start_position: Vector2
var tick_end_position: Vector2

var starting_animation
var updated_animation

var sprite_initialized: bool = false
func smooth_animated_sprite_movement(x_velocity, y_velocity) -> void:
	var animated_sprite = get_animated_sprite_2d()
	if animated_sprite != null:
		initialize_sprite_for_smooth_movement(animated_sprite)
		update_sprite_position(animated_sprite)

#--- Setting up arguments here so they don't have to be called every time

func initialize_sprite_for_smooth_movement(animated_sprite) -> void:
	if sprite_initialized == false:
		if animated_sprite != null:
			set_up_sprite_parent_node(animated_sprite)
			sprite_initialized = true

func update_sprite_position(animated_sprite) -> void:
	animated_sprite.position.x += (x_velocity * 30) * get_process_delta_time()
	animated_sprite.position.y += (y_velocity * 30) * get_process_delta_time()
	
	#animated_sprite.position.x += (x_velocity * int(get_physics_process_delta_time())) * get_process_delta_time()
	#animated_sprite.position.y += (y_velocity * int(get_physics_process_delta_time())) * get_process_delta_time()

func find_specific_child(node_name) -> Node:
	var child = find_child(node_name, true, false)
	return child

func set_up_sprite_parent_node(animated_sprite) -> void:
	if animated_sprite != null:
		var parent_node = Node.new()
		add_child(parent_node)
		animated_sprite.reparent(parent_node)
		
		animated_sprite.show_behind_parent = true
		animated_sprite.z_as_relative = false
		
		animated_sprite.position = position

func smooth_motion_step_begin() -> void:
	if tick_end_position == position:
		x_velocity = 0
		y_velocity = 0
	tick_start_position = position
	
	starting_animation = get_animation()
	

func smooth_motion_step_end() -> void:
	tick_end_position = position
	var position_diff = tick_end_position - tick_start_position
	x_velocity = position_diff.x
	y_velocity = position_diff.y
	
	#---uncomment this
	#if position_diff != Vector2(0, 0):
		#gml.update_obj_list_collision(self)
		
	
	updated_animation = get_animation()
	
	#---uncomment this
	#if updated_animation != starting_animation:
		#gml.update_obj_list_collision(self)

var test_prior_tick_position
func handle_smooth_motion_values() -> void:
	if did_object_move():
		initialize_prior_tick_position()
		set_x_y_velocity()
		
		if position.x == test_prior_tick_position.x:
			x_velocity = 0
		if position.y == test_prior_tick_position.y:
			y_velocity = 0
	else:
		reset_x_y_velocity()
		if animated_sprite_node:
			animated_sprite_node.position = position
	
	update_prior_tick_position()

#--------
func object_setup() -> void:
	if has_node("BoundingBoxArea"):
		var bounding_box_area = $BoundingBoxArea
		bounding_box_area.area_entered.connect(_bounding_box_entered)
		bounding_box_area.area_exited.connect(_bounding_box_exited)
	sprite_index_name = $Sprite.default_animation

	disable_mode = CollisionObject2D.DISABLE_MODE_KEEP_ACTIVE
	var object_database = object_database.object_database
	var object_entry = object_database[object_name]
	parent = object_entry["parent"]
	#collision_shape_setup()
	groups_setup(object_entry)
	#depth_setup(object_entry)
	#sprite_setup(object_entry)
	#bounding_box_setup()
	#collision_layers_setup()
	##collision_setup()
	alarms_setup(object_entry)
	if parent != null:
		var parent_entry = object_database[parent]
		alarms_setup(parent_entry) #--- running this due to item class having alarm_2
	collision_with_setup(object_entry)
	groups_setup(object_entry)
	#---[FLAG] have to set up outside_room function
	
	
	
	#move_child($CollisionShape2D, -1)
	if persistent:
		run_create_function(self)
	
	#--- for flare_spark
	if has_method("_on_animated_sprite_2d_frame_changed"):
		var callable = Callable(self, "_on_animated_sprite_2d_frame_changed")
		var sprite = get_animated_sprite_2d()
		sprite.frame_changed.connect(callable)
	
	if has_method("_on_animated_sprite_2d_animation_looped"):
		var callable = Callable(self, "_on_animated_sprite_2d_animation_looped")
		var sprite = get_animated_sprite_2d()
		sprite.animation_looped.connect(callable)
	
	last_collision_check_position = position
	
	for group in get_groups():
		groups.append(group)
	
func run_create_function(obj) -> void:
	if obj.has_method("create"):
		obj.create()

func groups_setup(object_entry) -> void:
	var groups = object_entry['groups']
	
	for group in groups:
		if !is_in_group(group):
			add_to_group(group)
			
	if !collision_with.is_empty():
		add_to_group("collision_with_object")
		
	if has_method("draw"):
		add_to_group("draw_object")
	
	if has_method("animation_end"):
		add_to_group("animation_end_object")
	
	if has_method("step"):
		add_to_group("step_object")
	if object_name == "gamepad":
		remove_from_group("step_object")
	
	#--- alarm_object group added in alarms_setup()
	
	add_to_group("gm_object")

func depth_setup(object_entry) -> void:
	var object_depth = object_entry["depth"]
	depth = object_depth

func bounding_box_setup() -> void: #--- leaving here for now in case it's needed but planning to delete
	var sprite = get_animation()
	
	if sprite != "default":
		if sprites.sprite_database[sprite]["mask"]["shape"] == "RECTANGLE":
			object_size = sprites.sprite_database[sprite]["mask"]["collision_rectangles"][1]
		else:
			object_size = sprites.sprite_database[sprite]["mask"]["bounding_box"][1]
	else:
		var no_sprite_size = Vector2(0, 0)
		object_size = no_sprite_size

func get_bounding_box() -> Vector2:
	var sprite = get_animation()
	var bounding_box = sprites.sprite_database[sprite]["mask"]["bounding_box"][1] #---[FLAG] may not include bottom and rightmost edges
	return bounding_box

func collision_layers_setup() -> void:
	for group: String in get_groups():
		var layer = gml.collision_layers.find(group)
		if layer != -1:
			var layer_to_set = layer + 1
			var area_2d = animated_sprite_node.get_node("Area2D")
			area_2d.set_collision_layer_value(layer_to_set, true)

func sprite_setup(object_entry) -> void:
	z_index = depth
	var animated_sprite = get_animated_sprite_2d()
	
	var visibility = object_entry["visible"]
	
	if animated_sprite == null:
		var new_animated_sprite = SPRITE.instantiate()
		var sprite_frames = new_animated_sprite.sprite_frames
		sprite_frames.remove_animation("default")
		new_animated_sprite.sprite_frames = sprite_frames
		new_animated_sprite.name = "MainAnimations"
		new_animated_sprite.add_to_group("animated_sprite", true)
		animated_sprite_node = new_animated_sprite
		sprites_holder = Node2D.new()
		sprites_holder.name = "Sprites"
		if visibility == false:
			sprites_holder.hide()
		add_child(sprites_holder)
		sprites_holder.add_child(new_animated_sprite)
		
		var sprite_to_add = object_entry["sprite"]
		if sprite_to_add != null:
			var sprite_entry = sprites.sprite_database[sprite_to_add]
			var sprite_offset = sprite_entry["origin"]
			var sprite_folder_path = sprite_entry["folder_path"]
			
			var shape = sprite_entry["mask"]["shape"]
		
			sprite_frames = sprite_animation_setup(sprite_to_add, sprite_frames)
			sprite_frames.remove_animation("default")
			
			new_animated_sprite.sprite_frames = sprite_frames
			
			
			new_animated_sprite.play(sprite_to_add)
			set_sprite_offset(sprite_to_add)
			sprite_index_name = sprite_to_add
			
			var collision_size
			var collision_position
			var new_collision: NewCollision = NewCollision.new()
			if shape == "RECTANGLE":
				collision_size = sprite_entry["mask"]["collision_rectangles"][1]
				collision_position = collision_size / 2 + sprite_entry["mask"]["collision_rectangles"][0]
				collision_position -= sprite_entry["origin"]
				var collision_shape = get_node("CollisionShape2D")
				collision_shape.shape.size = collision_size
				collision_shape.position = collision_position
				if object_name != "level" and object_name != "room":
					new_collision.create_bounding_box(self, collision_position, collision_size)
				
			elif shape == "PRECISE":
				collision_size = sprite_entry["mask"]["bounding_box"][1]
				collision_position = collision_size / 2 + sprite_entry["mask"]["bounding_box"][0]
				collision_position -= sprite_entry["origin"]
				var collision_shape = get_node("CollisionShape2D")
				collision_shape.shape.size = collision_size
				collision_shape.position = collision_position
				if object_name != "level" and object_name != "room":
					new_collision.create_bounding_box(self, collision_position, collision_size)
				
	else:
		sprite_offset = Vector2(0, 0)

			
#--- Helper function to set up a single animation for an AnimatedSprite2D
func sprite_animation_setup(sprite_name, sprite_frames) -> SpriteFrames:
	sprite_frames.add_animation(sprite_name)
	sprite_frames.set_animation_speed(sprite_name, 30)
	sprite_frames.set_animation_loop(sprite_name, true)
	var sprite_folder_path = sprites.sprite_database[sprite_name]["folder_path"]
	var files = ResourceLoader.list_directory(sprite_folder_path)

	for file in files:
		if file.get_extension() == "png":
			var sprite_texture = load(sprite_folder_path + "/" + file)
			sprite_frames.add_frame(sprite_name, sprite_texture)
	
	return sprite_frames

var tick_start_position1
var tick_end_position1: Vector2

var smooth_motion = SmoothMotion.new()
func object_tick() -> void:
	#smooth_motion.tick_start(position, animated_sprite_node)

	#run_alarm_events()
	#run_step_event(self)
	#run_collision_with()
	#run_draw_event(self)
	#run_animation_end()
	#run_speed_position_update()

	#smooth_motion.tick_end(position, animated_sprite_node)
	pass

func alarms_setup(object_entry) -> void:
	var events: Array = object_entry["events"]
	var alarms: Array = ['alarm_0', 'alarm_1', 'alarm_2', 'alarm_3', 'alarm_4', 'alarm_5', 'alarm_6', 'alarm_7', 'alarm_8', 'alarm_9', 'alarm_10', 'alarm_11']
	
	for event: String in events:
		if event in alarms:
			if !is_in_group("alarm_object"):
				add_to_group("alarm_object")
			var alarm_countdown_instance: String = event + "_countdown"
			var alarm_function = Callable(self, event)
			var new_alarm: Node = Alarm.new()
			new_alarm.add_to_group("alarm")
			set(alarm_countdown_instance, new_alarm)
			new_alarm.set_physics_process(true)
			new_alarm.timeout.connect(alarm_function)
			add_child(new_alarm)


func collision_with_setup(object_entry) -> void:
	var events: Array = object_entry["events"]
	
	for event: String in events:
		var string_beginning = "collision_with_"
		if event.begins_with(string_beginning):
			var object = event.trim_prefix(string_beginning)
			var collision_with_function = Callable(self, event)
			collision_with[object] = collision_with_function
	
	#--- adding this for enemies as collision_with is in the parent class. should make a cleaner way to handle this.
	#--- any other parent class that checks collision_with would need separate handling too
	var groups = get_groups()
	if get_groups().has("enemy"):
		var objects = ["character", "whip", "whip_pre"]
		for object in objects:
			var function = "collision_with_" + object
			var collision_with_function = Callable(self, function)
			collision_with[object] = collision_with_function

func collision_shape_setup() -> void: #--- used to set up collision shape for each object. should eventually replace Area2D with this and switch to body collisions instead of area
	var collision_shape: CollisionShape2D = CollisionShape2D.new()
	collision_shape.name = "CollisionShape2D"
	var rectangle_shape: RectangleShape2D = RectangleShape2D.new()
	rectangle_shape.size = Vector2(0, 0)
	collision_shape.set_shape(rectangle_shape)
	add_child(collision_shape)

func run_alarm_events() -> void:
	var alarms: Array = [alarm_0_countdown, alarm_1_countdown, alarm_2_countdown, alarm_3_countdown, alarm_4_countdown, alarm_5_countdown,
		alarm_6_countdown, alarm_7_countdown, alarm_8_countdown, alarm_9_countdown, alarm_10_countdown, alarm_11_countdown]
	
	var alarms_with_funcs: Dictionary = {alarm_0_countdown : "alarm_0", alarm_1_countdown : "alarm_1", alarm_2_countdown : "alarm_2", alarm_3_countdown : "alarm_3",
		alarm_4_countdown : "alarm_4", alarm_5_countdown : "alarm_5", alarm_6_countdown : "alarm_6", alarm_7_countdown : "alarm_7", alarm_8_countdown : "alarm_8",
		alarm_9_countdown : "alarm_9", alarm_10_countdown : "alarm_10", alarm_11_countdown : "alarm_11"}
	
	for alarm: Alarm in alarms:
		if alarm != null:
			if alarm.ready_to_emit:
				alarm.ready_to_emit = false
				var func_name: String = alarms_with_funcs[alarm]
				var callable = Callable(self, func_name)
				callable.call()


func run_step_event(obj) -> void:
	if self.has_method("step"):
		obj.step()

func run_draw_event() -> void:
	#--- draw event overrides the default sprite trying, so draw_object is set to false
	if has_method("draw"):
		draw_object = false
		var callable = Callable(self, "draw")
		callable.call()
		#animated_sprite_node.hide()
	else:
		draw_object = true
	
	if animated_sprite_node != null:
		#--- sprites automatically set themselves to not display every frame and must be manually set to show
		if draw_object == false:
			animated_sprite_node.sprite_displayed = false
		else:
			animated_sprite_node.sprite_displayed = true


func run_collision_with() -> void:
	if !collision_with.is_empty() and !is_queued_for_deletion():
		var origin = Vector2(0, 0)
		if sprite_index_name != "":
			origin = sprites.sprite_database[sprite_index_name]["origin"]

		for object in collision_with: #--- looping through every collision found in the overlap query
			if object in groups_in_bb:
				var colliders: Array = new_collision.check_inner_box_for_collision_with_group(self, object)
				if !colliders.is_empty():
					for collider in colliders:
						var checker_precise = sprites.sprite_database[sprite_index_name]["mask"]["shape"]
						var collider_precise = sprites.sprite_database[collider.sprite_index_name]["mask"]["shape"]
						if (checker_precise == "PRECISE" or collider_precise == "PRECISE") and object_name != "arrow_trap_test": #--- if either object has a precise mask, run pixel perfect check
							#--- arrow_trap_test is an exception because it is the only object in the game in which image_xscale affects its collision
							#--- it is a simple rectangle already, so we don't need to check it with precise collision, so we skip it (and it wouldn't work anyway without further changes)
							var checker_frame = animated_sprite_node.frame
							var collider_frame = collider.animated_sprite_node.frame
							#--- creating images of current sprite frame for both objects
							var image1 = animated_sprite_node.sprite_frames.get_frame_texture(sprite_index_name, checker_frame).get_image()
							var image2 = collider.animated_sprite_node.sprite_frames.get_frame_texture(collider.sprite_index_name, collider_frame).get_image()
							var image1_size: Vector2 = image1.get_size()
							var image2_size: Vector2 = image2.get_size()
							#--- performing a Rect2 overlap test to get overlap info
							var rect1 = Rect2((position - origin), image1_size)
							var collider_origin = sprites.sprite_database[collider.sprite_index_name]["origin"]
							var rect2 = Rect2((collider.position - collider_origin), image2_size)
								
							var intersection = rect1.intersection(rect2)
							if intersection:
								#--- converting to RGBA8 in case one of both is not in this format. cannot blit if format is not correct
								image1.convert(Image.FORMAT_RGBA8)
								image2.convert(Image.FORMAT_RGBA8)
								
								#--- creating a new image the size of the overlap that holds the portion of the checking object that is in the collision
								var new_image = Image.create_empty(intersection.size.x, intersection.size.y, false, Image.FORMAT_RGBA8)
								var adjusted_position: Vector2 = abs(((position - origin) - intersection.position))
								new_image.blit_rect(image1, Rect2i(Vector2(adjusted_position.x, adjusted_position.y), Vector2(intersection.size.x, intersection.size.y)), Vector2(0, 0))
								
								#--- creating another image the size of the overlap that holds the portion of the checked object that is in the collision
								var new_image2 = Image.create_empty(intersection.size.x, intersection.size.y, false, Image.FORMAT_RGBA8)
								new_image2.blit_rect(image2, Rect2i(Vector2(0, 0), Vector2(intersection.size.x, intersection.size.y)), Vector2(0, 0))
								
								#--- creating bitmaps of both new images
								var bitmap1: BitMap = BitMap.new()
								bitmap1.create_from_image_alpha(new_image)
								var bitmap2: BitMap = BitMap.new()
								bitmap2.create_from_image_alpha(new_image2)
								
								#--- if either new image is empty, we know there is not any overlap between pixels (just with bounding boxes)
								#--- otherwise, if both contain at least one bit, then there was an overlap, so we call the collision_with function
								if bitmap1.get_true_bit_count() > 0 and bitmap2.get_true_bit_count() > 0:
									if collider != self and !collider.is_queued_for_deletion():
										other = collider
										var callable = collision_with[object]
										callable.call()

						#--- can simply call the collision_with function if both objects have rectangle masks
						else:
							if !collider.is_queued_for_deletion():
								other = collider
								var callable = collision_with[object]
								callable.call()	

	other = self #--- see "other" declaration for why this is done


func run_animation_end() -> void:
	if has_method("animation_end"):
		var animated_sprite = get_animated_sprite_2d()
		var animation = animated_sprite.animation
		var sprite_frames = animated_sprite.sprite_frames
		var amount_of_frames = sprite_frames.get_frame_count(animation)
		if image_index + 1 == amount_of_frames:
			var callable = Callable(self, "animation_end")
			callable.call()


func pause_animation() -> void:
	if animated_sprite_node and animated_sprite_node.is_playing():
		animated_sprite_node.pause()


func resume_animation() -> void:
	if animated_sprite_node and animated_sprite_node.animation != "default": #--- some objects have a sprite but no animations set up, which would cause an error
		animated_sprite_node.play()


func run_speed_position_update() -> void: #--- original engine runs speed * direction on objects to make them move. only is used for caveman, hawkman, and yeti in Spelunky
	#--- only for enemy_sight, so we can make some assumptions with how speed and direction work with one another
	if speed != 0:
		if direction == 0: #--- 0 indicating movement to the right
			position.x += speed
		elif direction == 180: #--- the only other value is 180, which indicates movement to the left
			position.x -= speed
		
func object_process(delta) -> void:
	#smooth_motion.handle_smooth_motion(self, delta, get_physics_process_delta_time())
	pass
func did_object_move() -> bool:
	var current_position = position
	if current_position == test_prior_tick_position:
		return false
	else:
		return true

func initialize_prior_tick_position() -> void:
	if test_prior_tick_position == null:
		test_prior_tick_position = position

func update_prior_tick_position() -> void:
	test_prior_tick_position = position

func set_x_y_velocity() -> void:
	var position_diff = position - test_prior_tick_position
	x_velocity = position_diff.x
	y_velocity = position_diff.y


func reset_x_y_velocity() -> void:
	x_velocity = 0
	y_velocity = 0

func generate_random_hash() -> String:
	var characters = '1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYS'
	var length = 16
	var word = ""
	var n_char = len(characters)
	for i in range(length):
		word += characters[randi_range(0, n_char - 1)]
	return word

var last_collision_check_position

func debug_glow(on_or_off: bool) -> void:
	#var debug_glow = get_tree().get_first_node_in_group("debug_glow")
	#if on_or_off == true:
		#debug_glow.position = position
		#debug_glow.size = object_size
		#debug_glow.show()
	#else:
		#debug_glow.hide()
	pass

func handle_enemy_sight(parent_object: GMObject) -> void:
	name = "EnemySight"
	var existing_node = parent_object.get_node("EnemySight")
	if existing_node != null:
		existing_node.queue_free()
	parent_object.add_child(self)

#--- call this whenever teleporting an object to an arbitary location
#--- room_start is set true when player1 calls this function in init_level()
#--- this is so we can pass in a position to use and not have to wait for sprite's position to be set (avoiding a 1 tick camera delay when level starts)
func reset_interpolation(room_start: bool = false) -> void:
	if has_node("SmoothMotion/RemoteTransform2D"):
		var remote_transform: RemoteTransform2D = $SmoothMotion/RemoteTransform2D
		if room_start:
			remote_transform.reset_position(position)
		elif reset_interpolation_this_frame:
			remote_transform.reset_position()
			reset_interpolation_this_frame = false

var objects_in_bb: Array[GMObject]
var groups_in_bb: Array[StringName]
var first_time_entered: bool = false

func _bounding_box_entered(area: Area2D):
	if first_time_entered: #--- clearing arrays out the first time because instantiated objects take these values from their parents the first frame
		objects_in_bb.clear()
		groups_in_bb.clear()
		first_time_entered = false
	var parent: GMObject = area.get_parent()
	var groups: Array = parent.get_groups()
	groups.pop_front()
	if parent not in objects_in_bb: #--- preventing duplicates causes issues for some reason (olmec_slam not working, for example)
		objects_in_bb.append(parent)
	else:
		assert(false, "Duplicate found in bounding box objects array")
	for group in groups:
		if group not in groups_in_bb:
			groups_in_bb.append(group)


func _bounding_box_exited(area: Area2D):
	objects_in_bb.erase(area.get_parent()) #TODO: erase groups from array when object leaves
