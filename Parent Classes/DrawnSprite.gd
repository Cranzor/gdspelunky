extends Node2D
class_name DrawnSprite

var sprite
var solid = false

@export var depth: int = 0:
	set(new_depth):
		if new_depth > 0: #--- changing positive GML depth to negative in case it is not already changed
			new_depth = -new_depth
		
		var animated_sprite = get_animated_sprite_2d()
		if animated_sprite:
			animated_sprite.z_index = new_depth
		else:
			z_index = new_depth
		depth = new_depth
	get:
		var animated_sprite = get_animated_sprite_2d()
		if animated_sprite:
			return animated_sprite.z_index
		else:
			return z_index
		
var persistent = false
var parent
var mask

var type
var blink_toggle

#--- want access to these for all objects, so defining here
var collision_bounds_offset_left_x
var collision_bounds_offset_top_y
var collision_bounds_offset_right_x
var collision_bounds_offset_bottom_y

var invincible
var IDLE
var WALK
var ATTACK
var bounced
var dead
var shake_toggle
var sprite_index:
	set(new_sprite):
		sprite_index = new_sprite
		set_animation(new_sprite)
		
	get:
		var current_animation = get_animation()
		return current_animation
		
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


		
var status
var facing
var armed
var active
var held #--- seems easier to put this here since both items and enemies use it
var grav
var bounce
var my_grav
var safe
var heavy
var value
var col_bot
var can_pick_up
var bounce_factor
var friction_factor
var bloodless
var cost
var for_sale
var cimg
var sticky
var enemy_id
var col_left
var col_right
var col_top
var STUNNED = 98 #--- making this a variable and not a constant because it is set to 1 in p_dummy2 (all other cases are 98)
var stun_time
var damage
var puncture

var x_vel = 0
var y_vel = 0
var x_acc = 0
var y_acc = 0

@export var object_size: Vector2 #--- created by me for collision purposes

func drawn_sprite_create():
	visible = true #--- believe I put this due to how Game Maker handles it
	
	type = ""
	blink_toggle = 0

func get_animated_sprite_2d():
	var animated_sprite: AnimatedSprite2D = find_child("AnimatedSprite2D")
	return animated_sprite

func set_animation(new_sprite):
	var animated_sprite: AnimatedSprite2D = get_animated_sprite_2d()
	assert(animated_sprite.sprite_frames.has_animation(new_sprite))
	animated_sprite.play(new_sprite)

func get_animation():
	var animated_sprite: AnimatedSprite2D = get_animated_sprite_2d()
	var current_animation = animated_sprite.animation
	return current_animation

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

var x_velocity = 0
var y_velocity = 0
var tick_start_position: Vector2
var tick_end_position: Vector2
var sprite_initialized = false
func smooth_animated_sprite_movement(x_velocity, y_velocity, delta):
	var animated_sprite = find_child("AnimatedSprite2D")
	if sprite_initialized == false:
		sprite_initialized = true
		animated_sprite.position = self.position
		
	animated_sprite.position.x += (x_velocity * 30) * delta
	animated_sprite.position.y += (y_velocity * 30) * delta

func smooth_motion_step_begin():
	x_velocity = 0
	y_velocity = 0
	tick_start_position = position

func smooth_motion_step_end():
	tick_end_position = position
	var position_diff = tick_end_position - tick_start_position
	x_velocity = position_diff.x
	y_velocity = position_diff.y
