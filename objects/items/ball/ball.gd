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
	var player1 = gml.get_instance("player1") #---[FLAG] may need to adjust for multiplayer
	if (gml.distance_to_object(player1, self) >= 24):
		if (abs(player1.position.x - position.x) >= 24 or not col_bot):
	
			if (abs(player1.position.x-position.x) < 1):
		
				position.x = player1.position.x
				x_vel = 0
		
		
			if (player1.position.x > position.x):
		
				if (player1.x_vel > 0 and position.y >= player1.position.y): x_vel = player1.x_vel
				elif (x_vel < 0): x_vel *= -0.5
				elif (x_vel == 0): x_vel = 2
		
			elif (player1.position.x < position.x):
		
				if (player1.x_vel < 0 and position.y >= player1.position.y): x_vel = player1.x_vel
				elif (x_vel > 0): x_vel *= -0.5
				elif (x_vel == 0): x_vel = -2
		
	
		else:
	
			x_vel *= 0.5
			if (abs(x_vel) < 0.5): x_vel = 0
	
	
		if (abs(player1.position.y - position.y) >= 24):
	
			if (player1.position.y < position.y): y_vel = 0
	

	elif (col_bot):

		x_vel = 0
