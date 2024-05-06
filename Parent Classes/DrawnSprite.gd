extends Node2D
class_name DrawnSprite

var sprite
var solid = false
var depth = 0
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
var sprite_index

func _ready():
	visible = true #--- believe I put this due to how Game Maker handles it
	
	type = ""
	blink_toggle = 0
