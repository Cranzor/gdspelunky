class_name SmoothMotion
extends Node

var x_velocity
var y_velocity

var tick_start_position: Vector2
var tick_end_position: Vector2

var initialized: bool = false

func tick_start(position, animated_sprite_node):	
	if tick_end_position.x == position.x:
		x_velocity = 0
		animated_sprite_node.position.x = position.x
	if tick_end_position.y == position.y:
		y_velocity = 0
		animated_sprite_node.position.y = position.y
	tick_start_position = position


func tick_end(position, animated_sprite_node):
	tick_end_position = position
	var diff = tick_end_position - tick_start_position
	x_velocity = diff.x
	y_velocity = diff.y


func handle_smooth_motion(node):
	if check_if_moving_object(node.position, node.sprite_index_name) == true:
		initialize_sprite_for_smooth_movement(node.animated_sprite, node.position)
		update_animated_sprite_2d_position(x_velocity, y_velocity, node.animated_sprite)


func check_if_moving_object(position, sprite_index):
	if position != tick_end_position and sprite_index != null:
		return true
	return false
	
	
func update_animated_sprite_2d_position(x_velocity, y_velocity, animated_sprite):
	animated_sprite.position.x += (x_velocity * 30) * get_process_delta_time()
	animated_sprite.position.y += (y_velocity * 30) * get_process_delta_time()
	
	
func initialize_sprite_for_smooth_movement(animated_sprite, position):
	if initialized == false:
		set_up_sprite_parent_node(animated_sprite, position)
		initialized = true


func set_up_sprite_parent_node(animated_sprite, position):
	var parent_node = Node.new()
	add_child(parent_node)
	animated_sprite.reparent(parent_node)
	
	animated_sprite.show_behind_parent = true
	animated_sprite.z_as_relative = false
	
	animated_sprite.position = position
