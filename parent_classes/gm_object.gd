@icon("res://sprites/blocks/shop/sign_rare/sign_rare_0.png")
extends StaticBody2D
class_name GMObject

var object_database = ObjectDatabase.new()
var sprites = Sprites.new()

var collision_grid = CollisionGrid.new()
var grid_position

const SPRITE = preload("res://scenes/sprite.tscn")
var draw_object: bool = true #--- "draw" in GML (keyword is taken in Godot). determines whether or not associated sprite for the object gets drawn

var sprite
var solid = false

var parent

var dir #---[FLAG] not exactly sure what this does
var status #--- declaring this here for objects that use it but don't have drawn_sprite as their parent
var counter: int #--- same as above
var type
var my_grav
var trigger
var grav
var dying
var life
var UP
var DOWN
var bloodless
var IDLE
var draw_status
var highscore
var safe
var money_count
var fade_out
var fade_level
var poop
var money_diff
var shake_toggle
var t_money
var t_time
var t_kills
var t_saves
var scrolling
var fade_in
var scroll_start
var y_delta #--- only used for those in enemy class besides Olmec
var RECOVER
var DEAD
var bounce_counter
var t: bool
var x_vel_integer: int
var y_vel_integer: int
var final_x_vel = 0
var final_y_vel = 0
var k_down #--- moving this here from player1 script to make things easier since move_to references it
var lb
var tb
var rb
var bb
var up
var down
var left
var right
var timer

#--- want access to these for all objects, so defining here
var collision_bounds_offset_left_x
var collision_bounds_offset_top_y
var collision_bounds_offset_right_x
var collision_bounds_offset_bottom_y

var moving_object = false

@export_group("Sprite")
@export var sprite_index_name: String
@export var animated_sprite_node: AnimatedSprite2D
var sprites_holder: Node2D
@export var sprite_offset = Vector2(0, 0)
@export_group("")

@export var object_name: String
var object_hash: String

const ALARM = preload("res://alarm.tscn")

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

@export var editor_setup_finished: bool = false

@export var collision_with: Dictionary
var other #--- this keyword appears to mistakenly be used in step events and not collision events. in this case, it should have no
		  #--- reference and appears to act the same as passing in "self." it is set to self after run_collision_with for  this purpose

@export var depth: int = 0:
	set(new_depth):
		if object_name == "hint_hand":
			var value = new_depth
		new_depth = clampi(-new_depth, RenderingServer.CANVAS_ITEM_Z_MIN, RenderingServer.CANVAS_ITEM_Z_MAX)
		z_index = new_depth
		depth = new_depth
	get:
		return z_index
		
var sprite_index:
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

var subimg:
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
		return animated_sprite_node.self_modulate
		
var image_alpha: int:
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
var direction #---#--- only caveman, hawkman, yeti, and fire_bow script use this
var speed: int #--- only caveman, hawkman, and yeti use this
var owner_object: #--- only caveman, hawkman, and yeti use this
	set(value):
		owner_object = value
		if value != null:
			handle_enemy_sight(value) #--- as only sighted enemies use this, we can work with this assumption to handle enemy_sight behavior
		
	get:
		return owner_object
#---
var x_vel = 0:
	set(value):
		x_vel = value

var y_vel = 0:
	set(value):
		y_vel = value
		#assert(object_name != "push_block")
var x_acc = 0
var y_acc = 0

var object_id = ''

@export var object_size: Vector2 #--- created by me for collision purposes

var sprites_to_draw: Array
var sprites_to_draw_ext: Array
var textures: Array

#--- each object is responsible for drawing the sprites that it creates with draw_sprite
#--- this approach ensures that the z_index is correct for the drawn sprites
func _draw() -> void:
	draw_sprites()
	draw_sprites_ext()


func draw_sprites(): #--- for drawing additional sprites this object creates with draw_sprite
	if gml.changed_scene == false:
		for sprite in sprites_to_draw:
			var texture = sprite[0]
			var pos = sprite[1]
			pos -= position #--- resetting origin to 0, 0 by subtracting the node's position
			var sprite_name = sprite[2]
			var draw_to_surface = sprite[3]
			var sprite_entry = sprites.sprite_database[sprite_name]
			var origin = sprite_entry["origin"]
			if draw_to_surface: #--- adding the current view position when drawing to a surface
				pos += Vector2(gml.view_xview, gml.view_yview)
			draw_texture(texture, pos - origin)
	sprites_to_draw = []


func draw_sprites_ext(): #--- for drawing additional sprites this object creates with draw_sprite_ext
	if gml.changed_scene == false:
		for sprite in sprites_to_draw_ext:
			var texture: Texture2D = sprite[0]
			var pos = sprite[1]
			pos -= position #--- resetting origin to 0, 0 by subtracting the node's position
			var scale = sprite[2]
			var rotation = sprite[3]
			var color = sprite[4]
			if color == gml.c_white:
				color = modulate
			color.a = sprite[5]
			var sprite_name = sprite[6]
			var draw_to_surface = sprite[7]
			#if draw_to_surface: #--- adding the current view position when drawing to a surface
				#pos += Vector2(gml.view_xview, gml.view_yview)
			#draw_set_transform(pos, rotation, scale)
			var sprite_entry = sprites.sprite_database[sprite_name]
			var origin = sprite_entry["origin"]
			draw_set_transform(pos, rotation, scale)
			draw_texture(texture, Vector2(0, 0) - origin, color)
	sprites_to_draw_ext = []


func get_animated_sprite_2d():
	return animated_sprite_node

func set_animation(new_sprite, sprite_node):
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

func set_animation_speed_scale(new_speed):
	var animated_sprite: AnimatedSprite2D = get_animated_sprite_2d()
	if animated_sprite != null:
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
	
	animated_sprite.offset = -sprite_offset

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
	var autoloads = ["globals", "screen", "music", "gamepad"]
	disable_mode = CollisionObject2D.DISABLE_MODE_KEEP_ACTIVE
	var object_database = object_database.object_database
	var object_entry = object_database[object_name]
	parent = object_entry["parent"]
	collision_shape_setup()
	
	groups_setup(object_entry)
	depth_setup(object_entry)
	sprite_setup(object_entry)
	bounding_box_setup()
	#collision_layers_setup()
	##collision_setup()
	alarms_setup(object_entry)
	if parent != null:
		var parent_entry = object_database[parent]
		alarms_setup(parent_entry) #--- running this due to item class having alarm_2
	collision_with_setup(object_entry)
	#---[FLAG] have to set up outside_room function
	
	
	
	move_child($CollisionShape2D, -1)
	if object_name in autoloads:
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
	
	add_to_group("gm_object")

func depth_setup(object_entry):
	var object_depth = object_entry["depth"]
	depth = object_depth

func bounding_box_setup(): #--- leaving here for now in case it's needed but planning to delete
	var sprite = get_animation()
	
	if sprite != "default":
		if sprites.sprite_database[sprite]["mask"]["shape"] == "RECTANGLE":
			object_size = sprites.sprite_database[sprite]["mask"]["collision_rectangles"][1]
		else:
			object_size = sprites.sprite_database[sprite]["mask"]["bounding_box"][1]
	else:
		var no_sprite_size = Vector2(0, 0)
		object_size = no_sprite_size

func get_bounding_box():
	var sprite = get_animation()
	var bounding_box = sprites.sprite_database[sprite]["mask"]["bounding_box"][1] #---[FLAG] may not include bottom and rightmost edges
	return bounding_box

func collision_layers_setup():
	for group: String in get_groups():
		var layer = gml.collision_layers.find(group)
		if layer != -1:
			var layer_to_set = layer + 1
			var area_2d = animated_sprite_node.get_node("Area2D")
			area_2d.set_collision_layer_value(layer_to_set, true)

func sprite_setup(object_entry):
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
			if shape == "RECTANGLE":
				collision_size = sprite_entry["mask"]["collision_rectangles"][1]
				collision_position = collision_size / 2 + sprite_entry["mask"]["collision_rectangles"][0]
				collision_position -= sprite_entry["origin"]
				var collision_shape = get_node("CollisionShape2D")
				collision_shape.shape.size = collision_size
				collision_shape.position = collision_position
				
			elif shape == "PRECISE":
				collision_size = sprite_entry["mask"]["bounding_box"][1]
				collision_position = collision_size / 2 + sprite_entry["mask"]["bounding_box"][0]
				collision_position -= sprite_entry["origin"]
				var collision_shape = get_node("CollisionShape2D")
				collision_shape.shape.size = collision_size
				collision_shape.position = collision_position
				
	else:
		sprite_offset = Vector2(0, 0)

			
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

	#run_alarm_events()
	#run_step_event(self)
	#run_collision_with()
	#run_draw_event(self)
	#run_animation_end()
	#run_speed_position_update()

	#smooth_motion.tick_end(position, animated_sprite_node)
	pass

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
			new_alarm.add_to_group("alarm")
			set(alarm_countdown_instance, new_alarm)
			new_alarm.set_physics_process(true)
			new_alarm.timeout.connect(alarm_function)
			add_child(new_alarm)


func collision_with_setup(object_entry):
	var events: Array = object_entry["events"]
	
	for event in events:
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

func collision_shape_setup(): #--- used to set up collision shape for each object. should eventually replace Area2D with this and switch to body collisions instead of area
	var collision_shape: CollisionShape2D = CollisionShape2D.new()
	collision_shape.name = "CollisionShape2D"
	var rectangle_shape: RectangleShape2D = RectangleShape2D.new()
	rectangle_shape.size = Vector2(0, 0)
	collision_shape.set_shape(rectangle_shape)
	add_child(collision_shape)

func run_alarm_events():
	if object_name == "olmec_slam":
		print("")
	
	var alarms = [alarm_0_countdown, alarm_1_countdown, alarm_2_countdown, alarm_3_countdown, alarm_4_countdown, alarm_5_countdown,
		alarm_6_countdown, alarm_7_countdown, alarm_8_countdown, alarm_9_countdown, alarm_10_countdown, alarm_11_countdown]
	
	var alarms_with_funcs = {alarm_0_countdown : "alarm_0", alarm_1_countdown : "alarm_1", alarm_2_countdown : "alarm_2", alarm_3_countdown : "alarm_3",
		alarm_4_countdown : "alarm_4", alarm_5_countdown : "alarm_5", alarm_6_countdown : "alarm_6", alarm_7_countdown : "alarm_7", alarm_8_countdown : "alarm_8",
		alarm_9_countdown : "alarm_9", alarm_10_countdown : "alarm_10", alarm_11_countdown : "alarm_11"}
	
	for alarm: Alarm in alarms:
		if alarm != null:
			if alarm.ready_to_emit:
				alarm.ready_to_emit = false
				var func_name = alarms_with_funcs[alarm]
				var callable = Callable(self, func_name)
				callable.call()
				#alarm.emit_signal("timeout")


func run_step_event(obj):
	if self.has_method("step"):
		obj.step()

func run_draw_event():
	#--- draw event overrides the default sprite trying, so draw_object is set to false
	if has_method("draw"):
		draw_object = false
		var callable = Callable(self, "draw")
		callable.call()
		animated_sprite_node.hide()
	else:
		draw_object = true
	
	if animated_sprite_node != null:
		#--- sprites automatically set themselves to not display every frame and must be manually set to show
		if draw_object == false:
			animated_sprite_node.sprite_displayed = false
		else:
			animated_sprite_node.sprite_displayed = true

#var new_image
#var new_image2
func run_collision_with():	
	if not is_queued_for_deletion():
		var overlap_query = PhysicsShapeQueryParameters2D.new() #--- creating an overlap query the same size/position of the checking object's collision shape
		overlap_query.collide_with_bodies = true
		var checking_object_collision_shape = get_node("CollisionShape2D").shape
		var origin = Vector2(0, 0)
		if sprite_index_name != "":
			origin = sprites.sprite_database[sprite_index_name]["origin"]
		overlap_query.transform = Transform2D(0, (position - origin) + (checking_object_collision_shape.size / 2))
		overlap_query.collision_mask = 1
		overlap_query.margin = -1 #--- makes it so only objects inside the shape are found (not ones with edges touching)
		overlap_query.shape = checking_object_collision_shape
		
		var overlaps = get_world_2d().direct_space_state.intersect_shape(overlap_query, 100)
		for object in collision_with: #--- looping through every collision found in the overlap query
			for overlap in overlaps:
				var collider = overlap["collider"] #--- this is the collision's object node
				var collider_groups = collider.get_groups()
				if object in collider_groups: #--- checking if collided object is in collision_with groups
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
						if collider != self and !collider.is_queued_for_deletion():
							other = collider
							var callable = collision_with[object]
							callable.call()	

	other = self #--- see "other" declaration for why this is done


func run_animation_end():
	if has_method("animation_end"):
		var animated_sprite = get_animated_sprite_2d()
		var animation = animated_sprite.animation
		var sprite_frames = animated_sprite.sprite_frames
		var amount_of_frames = sprite_frames.get_frame_count(animation)
		if image_index + 1 == amount_of_frames:
			var callable = Callable(self, "animation_end")
			callable.call()

func run_speed_position_update(): #--- original engine runs speed * direction on objects to make them move. only is used for caveman, hawkman, and yeti in Spelunky
	#--- only for enemy_sight, so we can make some assumptions with how speed and direction work with one another
	if speed != 0:
		if direction == 0: #--- 0 indicating movement to the right
			position.x += speed
		elif direction == 180: #--- the only other value is 180, which indicates movement to the left
			position.x -= speed
		
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

func debug_glow(on_or_off: bool):
	#var debug_glow = get_tree().get_first_node_in_group("debug_glow")
	#if on_or_off == true:
		#debug_glow.position = position
		#debug_glow.size = object_size
		#debug_glow.show()
	#else:
		#debug_glow.hide()
	pass

func handle_enemy_sight(parent_object: GMObject):
	name = "EnemySight"
	var existing_node = parent_object.get_node("EnemySight")
	if existing_node != null:
		existing_node.queue_free()
	parent_object.add_child(self)
