extends Node2D
class_name DrawnSprite

var sprite
var solid = false
@export var depth: int = 0
	#set(new_depth):
		#depth = new_depth
		#z_index = depth
	#get:
		#return z_index
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

var x_vel = 0
var y_vel = 0
var x_acc = 0
var y_acc = 0

@export var object_size: Vector2 #--- created by me for collision purposes

func drawn_sprite_create():
	visible = true #--- believe I put this due to how Game Maker handles it
	
	type = ""
	blink_toggle = 0

func set_animation(new_sprite):
	var animated_sprite: AnimatedSprite2D = find_child("AnimatedSprite2D")
	animated_sprite.play(new_sprite)

func get_animation():
	var animated_sprite: AnimatedSprite2D = find_child("AnimatedSprite2D")
	var current_animation = animated_sprite.animation
	return current_animation

func set_animation_speed_scale(new_speed):
	var animated_sprite: AnimatedSprite2D = find_child("AnimatedSprite2D")
	animated_sprite.speed_scale = new_speed

func get_animation_speed_scale():
	var animated_sprite: AnimatedSprite2D = find_child("AnimatedSprite2D")
	var current_speed_scale = animated_sprite.speed_scale
	return current_speed_scale

var x_velocity = 0
var y_velocity = 0
var sprite_initialized = false
func smooth_animated_sprite_movement(x_velocity, y_velocity, delta):
	var animated_sprite = find_child("AnimatedSprite2D")
	if sprite_initialized == false:
		sprite_initialized = true
		animated_sprite.position = self.position
		
	animated_sprite.position.x += (x_velocity * 30) * delta
	animated_sprite.position.y += (y_velocity * 30) * delta
