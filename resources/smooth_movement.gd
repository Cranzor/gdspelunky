class_name SmoothMotion
extends Node

var x_velocity = 0
var y_velocity = 0

var tick_start_position: Vector2
var tick_end_position: Vector2

var initialized: bool = false
var moving_object: bool = false

func tick_start(position, animated_sprite_node):
	if animated_sprite_node != null:
		if tick_end_position.x == position.x:
			x_velocity = 0
			animated_sprite_node.global_position.x = position.x
		if tick_end_position.y == position.y:
			y_velocity = 0
			animated_sprite_node.global_position.y = position.y
	tick_start_position = position


func tick_end(position, animated_sprite_node):
	tick_end_position = position
	if animated_sprite_node != null:
		var diff = tick_end_position - tick_start_position
		x_velocity = diff.x
		y_velocity = diff.y

func handle_smooth_motion(node):
	check_if_moving_object(node.position, node.sprite_index_name)
	if moving_object:
		initialize_sprite_for_smooth_movement(node)
		update_animated_sprite_2d_position(x_velocity, y_velocity, node.animated_sprite_node)
		#else:
			#reset_velocity(node)

#func reset_velocity(node):
	#node.x_velocity = 0
	#node.y_velocity = 0


func check_if_moving_object(position, sprite_index):
	if position != tick_end_position and sprite_index != null:
		moving_object = true

func did_object_move(position):
	var current_position = position
	if current_position == tick_end_position:
		return false
	else:
		return true

	
func update_animated_sprite_2d_position(x_velocity, y_velocity, animated_sprite):
	animated_sprite.global_position.x += (x_velocity * 30) * get_process_delta_time()
	animated_sprite.global_position.y += (y_velocity * 30) * get_process_delta_time()
	
	
func initialize_sprite_for_smooth_movement(node):
	if initialized == false:
		set_up_sprite_parent_node(node)
		initialized = true


func set_up_sprite_parent_node(node):
	var parent_node = Node.new()
	node.add_child(parent_node)
	node.animated_sprite_node.reparent(parent_node)
	
	node.animated_sprite_node.show_behind_parent = true
	node.animated_sprite_node.z_as_relative = false
	
	node.animated_sprite_node.global_position = node.position
