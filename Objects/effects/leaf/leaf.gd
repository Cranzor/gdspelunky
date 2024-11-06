extends RubblePiece


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


func create():
	# action_inherited
	super()

	# main_code
	type = "leaf"
	y_vel = 0.4
	y_acc = 0.01
	image_speed = 0.2
