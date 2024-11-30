extends DrawnSprite


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


func alarm_0():
	gml.instance_create(position.x+8, position.y+4, Objects.drip)
	alarm_0_countdown.start(randi_range(20,400))
	

func create():
	# action_inherited
	super()

	# main_code
	alarm_0_countdown.start(randi_range(20,400))


func step():
	# action_inherited
	#super() #--- commenting out as this seems to do nothing, since drawn_sprite has no step function 

	# main_code
	if (not gml.collision_point(position.x+8, position.y-1, "solid", 0, 0)): gml.instance_destroy(self)
