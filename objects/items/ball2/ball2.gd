extends Item


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
	type = "ball"
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, -5, -5, 5, 5)
	heavy = true
	my_grav = 1


func step():
	# action_inherited
	super()

	# main_code
	if (gml.instance_exists("p_dummy")):
		var p_dummy = gml.get_instance("p_dummy") #---[FLAG] may have to update this
		if (gml.distance_to_object(p_dummy, self) >= 24):
			position.x = p_dummy.position.x - 24
