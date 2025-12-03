extends DrawnSprite


func _ready():
	object_setup()


#--- Object functions


func create():
	# action_inherited
	super()

	# main_code
	type = "tomb lord"
	image_speed = 0
