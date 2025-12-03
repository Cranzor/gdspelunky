extends RubblePiece


func _ready():
	object_setup()


#--- Object functions


func animation_end():
	# action_kill_object
	gml.instance_destroy(self)
	
	
func create():
	# action_inherited
	super()

	# main_code
	image_speed = 0.4
