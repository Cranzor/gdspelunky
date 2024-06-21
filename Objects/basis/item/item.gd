extends DrawnSprite
class_name Item

var falling
var px
var py
var shop_desc
var new


func _ready():
	sprite
	solid = true
	visible = true
	depth = 0
	persistent = false
	parent = DrawnSprite
	mask

func item_create():
	pass #--- uncomment the below
	#drawn_sprite_create()
	#active = true
	#type = "None"
	#shop_desc = ""
	#new = true # set to false once player has picked up, currently just used for bow
	#held = false
	#LEFT = 18
	#RIGHT = 19
	#DUCKING = 12
	#my_grav = 0.6
	#armed = false
	#trigger = false # for idols
	#safe = false
	#heavy = false
	#value = 0
	#col_bot = false
	#can_pick_up = true
#
	#bounce_factor = 0.5
	#friction_factor = 0.3
	#bloodless = false
	#break_pieces = true
#
	#cost = 0
	#for_sale = false
	#stolen = false
	#in_dice_house = false # for dice house
	#cimg = 0
#
	#stuck = false
#
	## for sticky bombs
	#sticky = false
	#enemy_id = 0
	#sticky_x_diff = 0
	#sticky_y_diff = 0
#
	#if (global.has_spectacles): depth = 51
	#else: depth = 101

func item_step():
	pass

func item_draw():
	pass

func _on_alarm_2_timeout():
	alarm_2()

func alarm_2():
	pass

