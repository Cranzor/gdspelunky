extends Node2D
class_name GMObject

var object_database = ObjectDatabase.new()
var sprites = Sprites.new()

var collision_grid = CollisionGrid.new()
var grid_position

var sprite
var solid = false

var moving_object = false

@export var sprite_index_name: String

@export var animated_sprite_node: AnimatedSprite2D

@export var object_name: String
var object_hash: String

const ALARM = preload("res://alarm.tscn")

var alarm_0_countdown: Node
var alarm_1_countdown: Node
var alarm_2_countdown: Node
var alarm_3_countdown: Node
var alarm_4_countdown: Node
var alarm_5_countdown: Node
var alarm_6_countdown: Node
var alarm_7_countdown: Node
var alarm_8_countdown: Node
var alarm_9_countdown: Node
var alarm_10_countdown: Node
var alarm_11_countdown: Node

@export var depth: int = 0:
	set(new_depth):
		var minimum_depth = -4096
		
		if new_depth > 0: #--- changing positive GML depth to negative in case it is not already changed
			new_depth = -new_depth
			if new_depth < minimum_depth:
				new_depth = minimum_depth
		
		var animated_sprite = get_animated_sprite_2d()
		if animated_sprite:
			animated_sprite.z_index = new_depth
		else:
			z_index = new_depth #--- [FLAG] seems to give an error for canvas items?
		depth = new_depth
	get:
		var animated_sprite = get_animated_sprite_2d()
		if animated_sprite:
			return animated_sprite.z_index
		else:
			return z_index
		
#var persistent = false
#var parent
#var mask
#
#var type
#var blink_toggle

##--- want access to these for all objects, so defining here
#var collision_bounds_offset_left_x
#var collision_bounds_offset_top_y
#var collision_bounds_offset_right_x
#var collision_bounds_offset_bottom_y
#
#var invincible
#var IDLE
#var WALK
#var ATTACK
#var bounced
#var dead
#var shake_toggle
var sprite_index:
	set(new_sprite):
		#sprite_index = new_sprite
		set_animation(new_sprite)
		set_sprite_offset(new_sprite)
		sprite_index_name = new_sprite
		
	get:
		var current_animation = get_animation()
		return current_animation
		#return sprite_index
		
var image_speed:
	set(new_speed):
		image_speed = new_speed
		set_animation_speed_scale(new_speed)
	
	get:
		var current_speed_scale = get_animation_speed_scale()
		return current_speed_scale
		
var image_index:
	set(new_index):
		image_index = new_index
		set_image_index(new_index)
	get:
		var animated_sprite = get_animated_sprite_2d()
		var index = animated_sprite.get_frame()
		return index


		
#var status
#var facing
#var armed
#var active
#var held #--- seems easier to put this here since both items and enemies use it
#var grav
#var bounce
#var my_grav
#var safe
#var heavy
#var value
#var col_bot
#var can_pick_up
#var bounce_factor
#var friction_factor
#var bloodless
#var cost
#var for_sale
#var cimg
#var sticky
#var enemy_id
#var col_left
#var col_right
#var col_top
#var STUNNED = 98 #--- making this a variable and not a constant because it is set to 1 in p_dummy2 (all other cases are 98)
#var stun_time
#var damage
#var puncture

var x_vel = 0
var y_vel = 0
var x_acc = 0
var y_acc = 0

@export var sprite_offset = Vector2(0, 0)
var object_id = ''

@export var object_size: Vector2 #--- created by me for collision purposes

#func drawn_sprite_create():
	#visible = true #--- believe I put this due to how Game Maker handles it
	#
	#type = ""
	#blink_toggle = 0

func get_animated_sprite_2d():
	var animated_sprite: AnimatedSprite2D = find_child("AnimatedSprite2D", true, false)
	return animated_sprite

func set_animation(new_sprite):
	var animated_sprite: AnimatedSprite2D = get_animated_sprite_2d()
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

func set_animation_speed_scale(new_speed):
	var animated_sprite: AnimatedSprite2D = get_animated_sprite_2d()
	animated_sprite.speed_scale = new_speed

func get_animation_speed_scale():
	var animated_sprite: AnimatedSprite2D = get_animated_sprite_2d()
	var current_speed_scale = animated_sprite.speed_scale
	return current_speed_scale
	
func set_image_index(new_index):
	var animated_sprite = get_animated_sprite_2d()
	animated_sprite.set_frame(new_index)

func set_sprite_offset(new_sprite):
	var animated_sprite = get_animated_sprite_2d()
	sprite_offset = sprites.sprite_database[new_sprite]["origin"]
	
	#sprite_offset = sprites_and_offsets[new_sprite] --- got rid of this variable so won't work. update this with new collision
	if !animated_sprite.flip_h:
		animated_sprite.offset = -sprite_offset
		
	else:
		animated_sprite.offset = -sprite_offset
		#var width = object_size.x
		#if sprite_offset.x != width / 2:
			#if sprite_offset.x < width / 2:
				#sprite_offset.x = sprite_offset.x + width
				#if sprite_offset.x > 0:
					#sprite_offset.x = -sprite_offset.x
			#else:
				#sprite_offset.x = abs(sprite_offset.x) - width
		#animated_sprite.offset = sprite_offset
	

var x_velocity = 0
var y_velocity = 0
var tick_start_position: Vector2
var tick_end_position: Vector2

var starting_animation
var updated_animation

var sprite_initialized = false
func smooth_animated_sprite_movement(x_velocity, y_velocity):
	var animated_sprite = get_animated_sprite_2d()
	if animated_sprite != null:
		initialize_sprite_for_smooth_movement(animated_sprite)
		update_sprite_position(animated_sprite)

#--- Setting up arguments here so they don't have to be called every time

func initialize_sprite_for_smooth_movement(animated_sprite):
	if sprite_initialized == false:
		if animated_sprite != null:
			set_up_sprite_parent_node(animated_sprite)
			sprite_initialized = true

func update_sprite_position(animated_sprite):
	animated_sprite.position.x += (x_velocity * 30) * get_process_delta_time()
	animated_sprite.position.y += (y_velocity * 30) * get_process_delta_time()
	
	#animated_sprite.position.x += (x_velocity * int(get_physics_process_delta_time())) * get_process_delta_time()
	#animated_sprite.position.y += (y_velocity * int(get_physics_process_delta_time())) * get_process_delta_time()

func find_specific_child(node_name):
	var child = find_child(node_name, true, false)
	return child

func set_up_sprite_parent_node(animated_sprite):
	if animated_sprite != null:
		var parent_node = Node.new()
		add_child(parent_node)
		animated_sprite.reparent(parent_node)
		
		animated_sprite.show_behind_parent = true
		animated_sprite.z_as_relative = false
		
		animated_sprite.position = position

func smooth_motion_step_begin():
	if tick_end_position == position:
		x_velocity = 0
		y_velocity = 0
	tick_start_position = position
	
	starting_animation = get_animation()
	

func smooth_motion_step_end():
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
func handle_smooth_motion_values():
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
func object_setup():
	var object_database = object_database.object_database
	var object_entry = object_database[object_name]
	
	groups_setup(object_entry)
	depth_setup(object_entry)
	sprite_setup(object_entry)
	bounding_box_setup()
	#collision_setup()
	alarms_setup(object_entry)
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
	
	get_collision_grid_position()
	last_collision_check_position = position
	
func run_create_function(obj):
	if obj.has_method("create"):
		obj.create()

func groups_setup(object_entry):
	var groups = object_entry['groups']
	
	for group in groups:
		if group == "explosion":
			print('huh')
		if !is_in_group(group):
			add_to_group(group)

func depth_setup(object_entry):
	var object_depth = object_entry["depth"]
	
	#--- In Godot, the value must be negative to display properly
	var converted_depth = -object_depth
	#--- Making sure the value isn't lower than the minimum value
	if converted_depth < -4096:
		converted_depth = -4096
	
	depth = converted_depth

func bounding_box_setup():
	var sprite = get_animation()
	
	if sprite != null:
		object_size = sprites.sprite_database[sprite]["mask"]["bounding_box"][1]
	else:
		var no_sprite_size = Vector2(0, 0)
		object_size = no_sprite_size

func sprite_setup(object_entry):
	var animated_sprite = get_animated_sprite_2d()
	
	if animated_sprite == null:
		var sprite_to_add = object_entry["sprite"]
		if sprite_to_add != null:
			var sprite_entry = sprites.sprite_database[sprite_to_add]
			var sprite_offset = sprite_entry["origin"]
			var sprite_folder_path = sprite_entry["folder_path"]
			var new_animated_sprite = AnimatedSprite2D.new()
			var sprite_frames = SpriteFrames.new()
		
			#var files = DirAccess.get_files_at(sprite_folder_path)
			#for file in files:
				#if file.get_extension() == "png":
					#print(file)
					#var sprite_texture = load(sprite_folder_path + "/" + file)
					#sprite_frames.add_frame(sprite_to_add, sprite_texture)
			sprite_frames = sprite_animation_setup(sprite_to_add, sprite_frames)
			sprite_frames.remove_animation("default")
			
			new_animated_sprite.sprite_frames = sprite_frames
			new_animated_sprite.name = "AnimatedSprite2D"
			new_animated_sprite.centered = false
			new_animated_sprite.z_as_relative = false
			new_animated_sprite.z_index = depth
			new_animated_sprite.add_to_group("animated_sprite", true)
			animated_sprite_node = new_animated_sprite
			add_child(new_animated_sprite)
			new_animated_sprite.play(sprite_to_add)
			set_sprite_offset(sprite_to_add)
			sprite_index_name = sprite_to_add
	else:
		sprite_offset = Vector2(0, 0)
	
	camera_setup()

func camera_setup():
	if object_name == 'p_dummy3':
		var view = preload("res://view.tscn")
		view = view.instantiate()
		var animated_sprite = get_animated_sprite_2d()
		view.limit_left = 0
		view.limit_right = 960
		view.limit_bottom = 240
		animated_sprite.add_child(view)
			
#--- Helper function to set up a single animation for an AnimatedSprite2D
func sprite_animation_setup(sprite_name, sprite_frames):
	sprite_frames.add_animation(sprite_name)
	sprite_frames.set_animation_speed(sprite_name, 30)
	sprite_frames.set_animation_loop(sprite_name, true)
	var sprite_folder_path = sprites.sprite_database[sprite_name]["folder_path"]
	var files = DirAccess.get_files_at(sprite_folder_path)
	for file in files:
		if file.get_extension() == "png":
			#print(file)
			var sprite_texture = load(sprite_folder_path + "/" + file)
			sprite_frames.add_frame(sprite_name, sprite_texture)
	
	return sprite_frames

func collision_setup():

	#--- Just do position -> for group in all groups, group.merge object_info. That way, for example, if we check for "spider":
	#--- 1. Get grid areas to check by position and size 2. For entry in Dictionary[grid][spider], Dictionary[grid][spider][hash][position] and compare
	
	object_hash = generate_random_hash()
	var collision_grid = CollisionGrid.new()
	var grid_positions = collision_grid.find_grid_position(global_position, object_size)

var tick_start_position1
var tick_end_position1: Vector2

var smooth_motion = SmoothMotion.new()
func object_tick():
	#smooth_motion.tick_start(position, animated_sprite_node)

	run_step_event(self)
	run_draw_event(self)

	#smooth_motion.tick_end(position, animated_sprite_node)

func alarms_setup(object_entry):
	var events: Array = object_entry["events"]
	var alarms: Array = ['alarm_0', 'alarm_1', 'alarm_2', 'alarm_3', 'alarm_4', 'alarm_5', 'alarm_6', 'alarm_7', 'alarm_8', 'alarm_9', 'alarm_10', 'alarm_11']
	
	if object_name == "intro":
		print('hi')
	
	for event in events:
		if event in alarms:
			var alarm_countdown_instance: String = event + "_countdown"
			var alarm_function = Callable(self, event)
			var new_alarm: Node = Alarm.new()
			set(alarm_countdown_instance, new_alarm)
			new_alarm.set_physics_process(true)
			new_alarm.timeout.connect(alarm_function)
			add_child(new_alarm)
	
func run_step_event(obj):
	if obj.has_method("step"):
		obj.step()

func run_draw_event(obj):
	if obj.has_method("draw"):
		obj.draw()

func object_process(delta):
	#smooth_motion.handle_smooth_motion(self, delta, get_physics_process_delta_time())
	pass
func did_object_move():
	var current_position = position
	if current_position == test_prior_tick_position:
		return false
	else:
		return true

func initialize_prior_tick_position():
	if test_prior_tick_position == null:
		test_prior_tick_position = position

func update_prior_tick_position():
	test_prior_tick_position = position

func set_x_y_velocity():
	var position_diff = position - test_prior_tick_position
	x_velocity = position_diff.x
	y_velocity = position_diff.y


func reset_x_y_velocity():
	x_velocity = 0
	y_velocity = 0

func generate_random_hash():
	var characters = '1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYS'
	var length = 16
	var word = ""
	var n_char = len(characters)
	for i in range(length):
		word += characters[randi_range(0, n_char - 1)]
	return word

var last_collision_check_position
func get_collision_grid_position():
	grid_position = collision_grid.find_grid_position(position, object_size)

func compare_grid_position_with_tester(tester_position):
	if position != last_collision_check_position:
		get_collision_grid_position()
		
	for value in tester_position:
		if value in grid_position:
			add_to_group("in_collision_grid")
			break

func remove_from_collision_grid():
	remove_from_group("in_collision_grid")
