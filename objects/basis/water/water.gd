@icon("res://sprites/blocks/water/water_top/water_top_0.png")
extends DrawnSprite
class_name Water

func _ready():
	object_setup()


#--- Object functions
var checked #--- used in level object as well, but will declare here as they do not have a shared parent
var up_water #--- used in setup_walls()


func create():
	# action_inherited
	super()

	# main_code
	type = "water"
	checked = false
