extends Enemy


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


func alarm_0():
	status = BOUNCE
	if (Collision.is_collision_bottom(1, self)):

		y_vel = -1 * gml.rand(2,5)
		var character = gml.get_instance("character") #---[FLAG] may have to change this for multiplayer
		if (character.position.x < position.x):
	
			x_vel = -2.5
	
		else:
	
			x_vel = 2.5
	

func alarm_1():
	gml.instance_destroy(self)


func animation_end():
	if (sprite_index == "spider_flip"): sprite_index = "spider"


func create():
	# action_inherited
	super()

	# main_code
	type = "spider"
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, 1, 5, 15, 16)
	x_vel = 0
	y_vel = 0
	y_delta = -0.4
	my_grav = 0.2
	my_grav_norm = 0.2
	image_speed = 0.4

	# DY:  stats
	hp = 1
	invincible = 0

	# DY:  status
	IDLE = 0
	BOUNCE = 1
	RECOVER = 2
	WALK = 3
	DROWNED = 4

	status = 0
	bounce_counter = 0

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

		if (gml.collision_point(position.x+8, position.y+8, "solid", 0, 0)):

			hp = 0


		if (hp < 1):

			MiscScripts.scr_create_blood(position.x+8, position.y+8, 3)
			if (counts_as_kill):
		
				if (InLevel.is_real_level()): global.enemy_kills[2] += 1
				global.spiders += 1
				global.kills += 1
		
			gml.instance_destroy(self)


		if (Collision.is_collision_right(1, self)):

			x_vel = 1


		if (Collision.is_collision_left(1, self)):

			x_vel = -1

		dist = gml.distance_to_object("character", self)

		if (status == IDLE):

			alarm_0_countdown.start(gml.rand(5,20))
			status = RECOVER

		elif (status == RECOVER):

			if (Collision.is_collision_bottom(1, self)): x_vel = 0

		elif (status == BOUNCE and dist < 90):

			if (Collision.is_collision_bottom(1, self)):
		
				y_vel = -1 * gml.rand(2,5)
				var character = gml.get_instance("character") #---[FLAG] may have to change this for multiplayer
				if (character.position.x < position.x+8):
			
					x_vel = -2.5
			
				else:
			
					x_vel = 2.5
			
			
				if (gml.rand(1,4) == 1):
					status = IDLE
					x_vel = 0
					y_vel = 0
		

		elif (status != DROWNED):

			status = IDLE
			# DY: x_vel = 0


		if (Collision.is_collision_top(1, self)):
			y_vel = 1
		#/*
		#if (Collision.is_collision_left(1) or Collision.is_collision_right(1)):
	#
			#x_vel = -x_vel
	#
		#*/

		# DY: if (Collision.is_collision_solid()):
		# DY:   position.y -= 2

	# main_code
	if (gml.collision_point(position.x+8, position.y+8, "water", 0, 0) and status != DROWNED):

		status = DROWNED
		sprite_index = "spider_drowning"
		alarm_1_countdown.start(30)
		x_vel = 0
		y_vel = 0.2
		gml.instance_create(position.x+8, position.y, Objects.splash)
		Audio.play_sound(global.snd_splash)
