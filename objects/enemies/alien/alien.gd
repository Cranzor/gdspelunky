extends Enemy


func _ready():
	object_setup()


#--- Object functions


func create():
	# action_inherited
	super()

	# main_code
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, 2, 6, 14, 16)
	x_vel = 2.5
	image_speed = 0.5

	# DY:  stats
	type = "alien"
	hp = 1
	invincible = 0

	IDLE = 0
	WALK = 1
	ATTACK = 2
	STUNNED = 98
	DEAD = 99
	status = IDLE

	bounced = false
	dead = false
	counter = 0

	LEFT = 0
	RIGHT = 1
	facing = RIGHT

	shake_counter = 0
	shake_toggle = 1


func step():
	# action_inherited
	super()

	# main_code
	if ((position.x > gml.view("xview")-20 and position.x < gml.view("xview") + gml.view("wview")+4 and
		position.y > gml.view("yview")-20 and position.y < gml.view("yview") + gml.view("hview")+4)):

		PlatformEngine.move_to(x_vel,y_vel, self)

		if (gml.collision_point(position.x+8, position.y+8, "solid", 0, 0)):

			hp = 0


		if (hp < 1):

			MiscScripts.scr_create_blood(position.x+8, position.y+8, 3, self)
			if (counts_as_kill):
		
				if (InLevel.is_real_level()): global.enemy_kills[15] += 1
				global.aliens += 1
				global.kills += 1
		
			gml.instance_destroy(self)


		y_vel += 0.6

		if (Collision.is_collision_bottom(1, self) and status != STUNNED):
			y_vel = 0

		if (status == IDLE):

			if (counter > 0): counter -= 1
			if (counter == 0):
		
				facing = gml.rand(0,1)
				status = WALK
		

		elif (status == WALK):

			if (Collision.is_collision_right(1, self)):
		
				facing = LEFT
		
			if (Collision.is_collision_left(1, self)):
		
				facing = RIGHT
		
			if (facing == LEFT and not gml.collision_point(position.x-1, position.y, "solid", -1, -1) and
				not gml.collision_point(position.x-1, position.y+16, "solid", -1, -1)):
		
				facing = RIGHT
		
			elif (facing == RIGHT and not gml.collision_point(position.x+16, position.y, "solid", -1, -1) and
				not gml.collision_point(position.x+16, position.y+16, "solid", -1, -1)):
		
				facing = LEFT
		
			if ((not gml.collision_point(position.x-1, position.y+16, "solid", -1, -1) or gml.collision_point(position.x-1, position.y, "solid", -1, -1)) and
				(not gml.collision_point(position.x+16, position.y+16, "solid", -1, -1) or gml.collision_point(position.x+16, position.y, "solid", -1, -1))):
		
				if (gml.collision_point(position.x-1, position.y, "solid", -1, -1)): facing = RIGHT
				else: facing = LEFT
				x_vel = 0
		
			elif (facing == LEFT): x_vel = -1
			else: x_vel = 1
		
			if (gml.rand(1,100) == 1):
		
				status = IDLE
				counter = gml.rand(20,50)
				x_vel = 0
	


	# DY: if (Collision.is_collision_solid()):
	# DY:     position.y -= 2
