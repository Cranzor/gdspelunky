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
	alarm_0_countdown.start(30)


func step():
	position.y -= 1
