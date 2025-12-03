extends DrawnSprite


func _ready():
	object_setup()


#--- Object functions


func animation_end():
	# action_kill_object
	gml.instance_destroy(self)
	

func create():
	# action_inherited
	super()

	# variable
	image_speed = 0.4
