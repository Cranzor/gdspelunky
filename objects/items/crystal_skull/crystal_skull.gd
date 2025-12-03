extends GoldIdol


func _ready():
	object_setup()


#--- Object functions


func create():
	# action_inherited
	super()

	# main_code
	type = "gold idol"
	value = 15000
