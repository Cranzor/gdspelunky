extends MovingSolid


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
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, 0, 0, 16, 16)
	invincible = false
	viscid_top = 1

	x_vel = 0
	y_vel = 0
	my_grav = 1

	counter = 0

	status = 0
	IDLE = 0
	DROP = 1
	WAIT = 2
	RETURN = 3

	

func step():
	var character = gml.get_instance("character") #---[FLAG] may need to change this for multiplayer
	dist = gml.distance_to_object(character, self)
	if (status == IDLE):
		var player1 = gml.get_instance("player1") #---[FLAG] may need to change this for multiplayer
		if (player1.position.y > position.y and dist < 96 and abs(player1.position.x - position.x) < 8):
	
			status = DROP
	

	elif (status == DROP):

		y_vel += my_grav
		if (y_vel > 6): y_vel = 6
		if (Collision.is_collision_bottom(1, self)):
	
			status = WAIT
			y_vel = 0
			counter = 100
	

	elif (status == WAIT):

		if (Collision.is_collision_bottom(1, self)): position.y -= 1
		if (counter > 0): counter -= 1
		else:
	
			status = RETURN
			y_vel = -1
	

	elif (status == RETURN):

		if (Collision.is_collision_top(1, self)):
	
			y_vel = 0
			status = IDLE
