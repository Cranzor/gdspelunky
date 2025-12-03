extends DrawnSprite


func _ready():
	object_setup()


#--- Object functions


func alarm_0():
	# action_kill_object
	gml.instance_destroy(self)
	

func create():
	# action_inherited
	super()

	# main_code
	y_vel = 0.1
	y_acc = 0.1
	alarm_0_countdown.start(40)


func step():
	position.y -= 0.1
