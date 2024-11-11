@icon("res://sprites/hud/heart/heart_0.png")
extends GMObject
class_name DrawnSprite
		
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
var trigger
var left
var right
var burning

func create():
	visible = true #--- believe I put this due to how Game Maker handles it
	
	type = ""
	blink_toggle = 0
