extends DrawnSprite


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
	image_speed
	0.3
	# main_code
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, -4, -4, 4, 4)
	x_vel = gml.random(4) - gml.random(4)
	y_vel = -1 - gml.random(2)
	grav = 0.6
	invincible = true
	bounce = true

	var n = gml.rand(1,3)

	if (n == 1): sprite_index = "olmec_debris2"
	elif (n == 2): sprite_index = "olmec_debris3"


func step():
	# action_inherited
	#super() #--- commenting out as this seems to do nothing, since drawn_sprite has no step function

	# main_code
	position.x += x_vel
	position.y += y_vel

	if (bounce):

		if (y_vel < 6):
	
			y_vel += grav
	
	
		if (gml.collision_point(position.x, position.y+4, "temple", 0, 0)):
	
			# DY:  bounce
			if (y_vel > 1): y_vel = -y_vel * 0.4
			else:
		
				gml.instance_create(position.x, position.y, Objects.smoke_puff, self)
				gml.instance_destroy(self)
		
		
			# DY:  friction
			if (abs(x_vel) < 0.1): x_vel = 0
			elif (abs(x_vel) != 0): x_vel *= 0.3
