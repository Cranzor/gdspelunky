extends Node2D
class_name DrawnSprite

var sprite
var solid = false
@export var depth = 0
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
		return sprite_index

@export var object_size: Vector2 #--- created by me for collision purposes

func drawn_sprite_create():
	visible = true #--- believe I put this due to how Game Maker handles it
	
	type = ""
	blink_toggle = 0

func set_animation(new_sprite):
	var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D
	animated_sprite.play(new_sprite)
