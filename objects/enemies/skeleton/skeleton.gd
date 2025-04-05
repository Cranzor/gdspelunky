extends Enemy


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
	Collision.set_collision_bounds(self, 2, 0, 14, 16)
	x_vel = 0
	image_speed = 0.5

	# DY:  stats
	type = "skeleton"
	hp = 1
	invincible = 0

	IDLE = 0
	WALK = 1
	ATTACK = 2
	STUNNED = 98
	DEAD = 99
	status = 0

	bloodless = true
	bounced = false
	dead = false
	counter = 20

	LEFT = 0
	RIGHT = 1
	facing = RIGHT
	if (gml.instance_exists("player1")):
		var player1 = gml.get_instance("player1") #---[FLAG] may have to change this for multiplayer
		if (player1.position.x < position.x+8): facing = LEFT


	shake_counter = 0
	shake_toggle = 1


func step():
	# action_inherited
	super()

	# main_code
	if ((position.x > gml.view("xview")-20 and position.x < gml.view("xview") + gml.view("wview")+4 and
		position.y > gml.view("yview")-20 and position.y < gml.view("yview") + gml.view("hview")+4)):

		PlatformEngine.move_to(x_vel,y_vel, self)

		y_vel += my_grav
		if (y_vel > y_vel_limit): y_vel = y_vel_limit

		if (gml.collision_point(position.x+8, position.y+8, "solid", 0, false)):

			hp = 0


		if (hp < 1):

			for i in range(0, 3):
		
				gml.instance_create(other.position.x+8, other.position.y+8, Objects.bone) #---[FLAG] other is not grabbed here
		
			var skull = gml.instance_create(other.position.x+8, other.position.y+8, Objects.skull)
			skull.y_vel = -gml.rand(1,3)
			skull.x_vel = gml.rand(0,3)-gml.rand(0,3)
			if (counts_as_kill):
		
				if (InLevel.is_real_level()): global.enemy_kills[5] += 1
				global.skeletons += 1
				global.kills += 1
		
			gml.instance_destroy(self)


		if (Collision.is_collision_bottom(1, self) and status != STUNNED):
			y_vel = 0

		if (status == IDLE):

			if (counter > 0): counter -= 1
			if (counter == 0):
		
				# DY:  facing = gml.rand(0,1)
				status = WALK
		

		elif (status == WALK):

			col_left = false
			col_right = false
			if (Collision.is_collision_left(1, self)): col_left = true
			if (Collision.is_collision_right(1, self)): col_right = true
		
			if (Collision.is_collision_left(4, self) and Collision.is_collision_right(4, self)):
		
				# DY:  do nothing
				pass
		
			elif (col_left or col_right):
		
				if (facing == LEFT): facing = RIGHT
				else: facing = LEFT
		
			#/*
			#if (facing == LEFT and not gml.collision_point(position.x-1, position.y, "solid", -1, -1) and:
				#not gml.collision_point(position.x-1, position.y+16, "solid", -1, -1))
		#
				#facing = RIGHT
		#
			#elif (facing == RIGHT and not gml.collision_point(position.x+16, position.y, "solid", -1, -1) and:
				#not gml.collision_point(position.x+16, position.y+16, "solid", -1, -1))
		#
				#facing = LEFT
		#
			#*/
		
			if (facing == LEFT): x_vel = -1
			else: x_vel = 1
		
			#/*
			#if (gml.rand(1,100) == 1):
		#
				#status = IDLE
				#counter = gml.rand(20,50)
				#x_vel = 0
		#
			#*/


		if (Collision.is_collision_solid(self)):
			position.y -= 2

		if (status != STUNNED):

			if (status == WALK): sprite_index = "skeleton_walk_left"
			else: sprite_index = "skeleton_left"
