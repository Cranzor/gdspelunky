extends DrawnSprite


func _ready():
	object_setup()


#--- Object functions


func alarm_0():
	invincible = false
	

func alarm_1():
	if (gml.instance_number("yellow_trail") < 12): gml.instance_create(position.x, position.y, Objects.yellow_trail, self)
	alarm_1_countdown.start(4)


func collision_with_solid(): #--- all code is commented out
	#/*
	#if (not gml.collision_rectangle(position.x-8, position.y-8, position.x+8,  position.y+8, "olmec", 0, 0)):
#
		#if (gml.rand(1,2) == 1): n = gml.rand(1,4)
		#else: n = gml.rand(1,5)
		#match (n)
	#
			#1:  gml.instance_create(position.x-8, position.y-8, Objects.bat, self)
			#2:  gml.instance_create(position.x-8, position.y-8, Objects.spider, self)
			#3:  gml.instance_create(position.x-8, position.y-8, Objects.snake, self)
			#4:  gml.instance_create(position.x-8, position.y-8, Objects.frog, self)
			#5:  gml.instance_create(position.x-8, position.y-8, Objects.fire_frog, self)
	#
		#gml.instance_destroy(self)
#
	#*/
	pass

	
func create():
	# action_inherited
	super()

	# main_code
	y_vel = -1 * (gml.random(3)+4)
	x_vel = gml.rand(2,5)
	if (gml.rand(1,2) == 1): x_vel *= -1
	# DY: invincible = true
	# DY: alarm_0(40)
	alarm_1_countdown.start(1)
	

func outside_room():
	# action_kill_object
	gml.instance_destroy(self)
	

func step():
	position.x += x_vel
	position.y += y_vel

	if (gml.collision_rectangle(position.x-8, position.y-8, position.x+8,  position.y+8, "solid", 0, 0) and
		not gml.collision_rectangle(position.x-8, position.y-8, position.x+8,  position.y+8, "olmec", 0, 0)):

		position.x -= x_vel
		position.y -= y_vel
		var n
		if (gml.rand(1,2) == 1): n = gml.rand(1,4)
		else: n = gml.rand(1,5)
		match (n):
	
			1:  gml.instance_create(position.x-8, position.y-8, Objects.bat, self)
			2:  gml.instance_create(position.x-8, position.y-8, Objects.spider, self)
			3:  gml.instance_create(position.x-8, position.y-8, Objects.snake, self)
			4:  gml.instance_create(position.x-8, position.y-8, Objects.frog, self)
			5:  gml.instance_create(position.x-8, position.y-8, Objects.fire_frog, self)
	
		gml.instance_destroy(self)


	if (y_vel < 6): y_vel += 0.15

	#/*if (gml.collision_point(position.x, position.y, "dark", 0, 0) or:
		#gml.collision_point(position.x, position.y, "dark_fall", 0, 0) or
		#gml.collision_point(position.x, position.y, "ice", 0, 0))
#
		#gml.instance_destroy(self)
	#*/
