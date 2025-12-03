extends Item


func _ready():
	object_setup()


#--- Object functions


func alarm_2():
	safe = false


func create():
	# action_inherited
	super()

	# main_code
	type = "fish bone"
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, -4, -4, 4, 4)
	my_grav = 0.2
	safe = false


func step():
	# action_inherited
	super()

	# main_code
	var direction
	if (x_vel > 0 and y_vel < 0):

		direction = gml.radtodeg(gml.arctan(-y_vel/x_vel))
		# DY:  direction = 45

	elif (x_vel < 0 and y_vel < 0):

		direction = 180 - gml.radtodeg(gml.arctan(-y_vel/-x_vel))


	elif (x_vel > 0 and y_vel > 0):

		direction = gml.radtodeg(gml.arctan(y_vel/x_vel))


	elif (x_vel < 0 and y_vel > 0):

		direction = 180 + gml.radtodeg(gml.arctan(y_vel/-x_vel))

	elif (x_vel < 0): direction = 180
	else: direction = 0

	image_angle = direction
