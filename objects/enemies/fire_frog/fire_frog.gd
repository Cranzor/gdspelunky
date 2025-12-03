extends Enemy


func _ready():
	object_setup()


#--- Object functions


func create():
	# action_inherited
	super()

	# main_code
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, 4, 4, 12, 16)
	x_vel = 0
	y_vel = 0
	y_delta = -0.4
	my_grav = 0.2
	my_grav_norm = 0.2
	image_speed = 0.4

	type = "fire frog"

	# DY:  stats
	hp = 1
	invincible = 0

	LEFT = 0
	RIGHT = 1
	facing = gml.rand(0,1)

	# DY:  status
	IDLE = 0
	BOUNCE = 1
	RECOVER = 2
	WALK = 3
	DROWNED = 4
	status = 0

	counter = 0
	bounce_counter = 0

	shake_counter = 0
	shake_toggle = 1

	if (gml.collision_point(position.x, position.y, "water", 0, 0)): swimming = true


func step():
	# action_inherited
	super()

	# main_code
	var character = gml.get_instance("character") #---[FLAG] may have to change this for multiplayer
	
	if ((position.x > gml.view("xview")-20 and position.x < gml.view("xview") + gml.view("wview")+4 and
		position.y > gml.view("yview")-20 and position.y < gml.view("yview") + gml.view("hview")+4)):

		PlatformEngine.move_to(x_vel,y_vel, self)

		y_vel += my_grav
		if (y_vel > y_vel_limit): y_vel = y_vel_limit

		if (gml.collision_point(position.x+8, position.y+8, "solid", 0, 0)): hp = -999

		if (hp < 1):

			if (counts_as_kill):
		
				if (InLevel.is_real_level()): global.enemy_kills[9] += 1
				global.firefrogs += 1
				global.kills += 1
		
			var obj = gml.instance_create(position.x+8, position.y+8, Objects.fire_frog_bomb, self)
			gml.instance_destroy(self)


		if (Collision.is_collision_right(1, self)):

			x_vel = -1


		if (Collision.is_collision_left(1, self)):

			x_vel = 1


		col_bot = false
		if (Collision.is_collision_bottom(1, self)): col_bot = true

		var dist = gml.distance_to_object(character, self) #---[FLAG] may have to change this for multiplayer

		if (status == IDLE):

			x_vel = 0
			if (counter > 0): counter -= 1
			elif (dist < 64): status = BOUNCE
			# DY: if (dist < 48): status = BOUNCE
			if (status == BOUNCE): Audio.play_sound(global.snd_frog)

		elif (status == RECOVER):

			if (col_bot):
		
				status = IDLE
				x_vel = 0
				y_vel = 0
				counter = gml.rand(10,40)
		

		elif (status == BOUNCE):

			if (col_bot):
		
				y_vel = -1 * gml.rand(2,4)

				if (character.position.x < position.x):
			
					facing = LEFT
					x_vel = -3
			
				else:
			
					facing = RIGHT
					x_vel = 3
			
		
			else:
		
				status = RECOVER
		

		elif (status != DROWNED):

			status = IDLE
			x_vel = 0


		if (Collision.is_collision_top(1, self)):
			y_vel = 1

		# DY: if (Collision.is_collision_solid()):
		# DY:   position.y -= 2

		if (not col_bot): sprite_index = "fire_frog_jump_l"
		else: sprite_index = "fire_frog_left"
