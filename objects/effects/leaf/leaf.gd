extends RubblePiece


func _ready():
	object_setup()


#--- Object functions


func create():
	# action_inherited
	super()

	# main_code
	type = "leaf"
	y_vel = 0.4
	y_acc = 0.01
	image_speed = 0.2
