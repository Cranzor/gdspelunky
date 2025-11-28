@icon("res://sprites/hud/heart/heart_0.png")
extends GMObject
class_name DrawnSprite
		
var mask

var blink_toggle

var invincible
var RUN
var THROWN
var YELL
var EXIT
var WALK
var ATTACK
var bounced
var dead
var facing
var armed
var active
var held #--- seems easier to put this here since both items and enemies use it
var bounce
var heavy
var value: int
var col_bot
var can_pick_up
var bounce_factor
var friction_factor
var cost: int
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
var burning
var dist
var viscid_top
var DROP
var swimming
var fired
var x_act
var firing
var hit:
	set(value):
		hit = value

var orig_x
var orig_y
var LEFT = 18 #---setting LEFT and RIGHT to have default values as player1 doesn't set them
var RIGHT = 19
var hp
var shake_counter
var counts_as_kill
var blood_left
var favor
var sac_count
var bomb_id
var leads_to

func create():
	visible = true #--- believe I put this due to how Game Maker handles it
	
	type = ""
	blink_toggle = 0
