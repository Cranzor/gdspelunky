extends Enemy


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions
var GRAB
var grab_counter
var grab_x
var grab_y
var throw_counter
var CLIMB
var vine_counter


func collision_with_character():
	# DY:  jumped on - caveman, man_trap replaces this script with its own
	if (abs(other.position.x-(position.x+8)) > 4 or status == GRAB):

		# DY:  do nothing
		pass

	elif (not other.dead and (other.state == 15 or other.state == 16) and other.position.y < position.y+2 and not other.swimming):

		other.y_vel = -6 - 0.2 * other.y_vel
		other.fall_timer = 0
		hp -= 1
		Audio.play_sound(global.snd_hit)

	elif (not other.invincible and grab_counter == 0):
		var player1 = gml.get_instance("player1") #---[FLAG] may have to change this for multiplayer
		if ((position.y+8) > player1.position.y+2): position.y = player1.position.y+2-8
		if ((position.y+8) < player1.position.y-2): position.y = player1.position.y-2-8
		status = GRAB
		x_vel = 0
		y_vel = 0
		grab_x = position.x - player1.position.x
		grab_y = position.y - player1.position.y
		counter = gml.rand(40,80)


func collision_with_item():
	if (throw_counter == 0 and status != GRAB and other.active and not other.held):

		if (other.type == "Rope"):
	
			if (not other.falling):
		
				if (facing == RIGHT): other.x_vel = 5
				else: other.x_vel = -5
				other.y_vel = -4
				if (not gml.collision_point(other.position.x, other.position.y, "solid", 0, 0)): other.position.y = position.y-2
				throw_counter = 60
				status = IDLE
				counter = gml.rand(20,60)
		
	
		else:
	
			if (facing == RIGHT): other.x_vel = 5
			else: other.x_vel = -5
			other.y_vel = -4
			if (not gml.collision_point(other.position.x, other.position.y-2, "solid", 0, 0)): other.position.y -= 2
			throw_counter = 60
			status = IDLE
			counter = gml.rand(20,60)


func create():
	# action_inherited
	super()

	# main_code
	type = "monkey"
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, 4, 6, 12, 16)
	x_vel = 0
	y_vel = 0
	y_delta = -0.4
	my_grav = 0.2
	image_speed = 0.4

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
	HANG = 5
	CLIMB = 6
	GRAB = 7
	status = HANG

	grab_x = 0
	grab_y = 0
	grab_counter = 0

	UP = 0
	DOWN = 1
	dir = 0

	counter = 0
	bounce_counter = 0
	vine_counter = 0
	throw_counter = 60

	shake_counter = 0
	shake_toggle = 1

	if (gml.collision_point(position.x, position.y, "water", 0, 0)): swimming = true


func step():
	# action_inherited
	super()

	# main_code
	if ((position.x > gml.view("xview")-20 and position.x < gml.view("xview") + gml.view("wview")+4 and
		position.y > gml.view("yview")-20 and position.y < gml.view("yview") + gml.view("hview")+4)):

		depth = 40

		PlatformEngine.move_to(x_vel,y_vel, self)


		if (status != HANG and status != CLIMB and status != GRAB): y_vel += my_grav
		if (y_vel > y_vel_limit): y_vel = y_vel_limit

		if (gml.collision_point(position.x+8, position.y+8, "solid", 0, 0)): hp = -999

		if (gml.collision_point(position.x+8, position.y+8, "water", -1, -1)):

			if (not swimming):
		
				gml.instance_create(position.x+8, position.y, Objects.splash)
				swimming = true
				Audio.play_sound(global.snd_splash)
		

		else:

			swimming = false


		if (hp < 1):

			MiscScripts.scr_create_blood(position.x+8, position.y+8, 3)
			if (counts_as_kill):
		
				if (InLevel.is_real_level()): global.total_monkey_kills += 1 # DY:  this is for stats
				global.monkeys += 1
				global.kills += 1
		
			gml.instance_destroy(self)


		if (Collision.is_collision_right(1, self)):

			x_vel = -1


		if (Collision.is_collision_left(1, self)):

			x_vel = 1


		col_bot = false
		if (Collision.is_collision_bottom(1, self)): col_bot = true

		if (grab_counter > 0): grab_counter -= 1
		if (vine_counter > 0): vine_counter -= 1
		if (throw_counter > 0): throw_counter -= 1

		dist = gml.distance_to_object("character", self)

		if (status == IDLE):

			x_vel = 0
			if (counter > 0): counter -= 1
			else: status = WALK
			if (dist < 64): status = BOUNCE
			# DY: if (status == BOUNCE): Audio.play_sound(global.snd_frog)

		elif (status == WALK):

			if (Collision.is_collision_left(1, self) or Collision.is_collision_right(1, self)):
		
				if (facing == LEFT): facing = RIGHT
				else: facing = LEFT
		
		
			if (facing == LEFT):
		
				x_vel = -2
		
			else:
		
				x_vel = 2
		
		
			if (gml.rand(1,100) == 1):
		
				status = IDLE
				counter = gml.rand(20,50)
				x_vel = 0
		

		elif (status == RECOVER):

			if (col_bot):
		
				status = IDLE
				x_vel = 0
				y_vel = 0
				counter = gml.rand(10,40)
		
			elif (Collision.is_collision_ladder(self)):
		
				if (vine_counter == 0):
			
					status = HANG
					x_vel = 0
					y_vel = 0
					counter = gml.rand(10,40)
			
		

		elif (status == BOUNCE):

			if (col_bot):
		
				y_vel = -1 * gml.rand(4,5)
				var character = gml.get_instance("character") #---[FLAG] may have to change this for multiplayer
				if (character.position.x < (position.x+8)):
			
					facing = LEFT
					x_vel = -2
			
				else:
			
					facing = RIGHT
					x_vel = 2
			
		
			else:
		
				status = RECOVER
				Audio.play_sound(global.snd_monkey)
		

		elif (status == HANG):

			x_vel = 0
			y_vel = 0
			if (counter > 0): counter -= 1
			else:
		
				status = CLIMB
				# DY:  dir = gml.rand(0,1)
		

		elif (status == CLIMB):

			x_vel = 0
			if (dir == UP):
		
				y_vel = -1
				if (not gml.collision_point(position.x+8, position.y, "vine", 0, 0)):
			
					dir = DOWN
					status = HANG
					counter = gml.rand(10,40)
			
		
			else:
		
				y_vel = 1
				if (not gml.collision_point(position.x+8, position.y+22, "vine", 0, 0)):
			
					dir = UP
					status = HANG
					counter = gml.rand(10,40)
			
		
			var character = gml.get_instance("character") #---[FLAG] may have to change this for multiplayer
			if (dist < 64 and character.position.y > position.y):
		
				status = BOUNCE
				vine_counter = 30
				y_vel = -1 * gml.rand(2,4)
				if (character.position.x < position.x):
			
					facing = LEFT
					x_vel = -3
			
				else:
			
					facing = RIGHT
					x_vel = 3
			
		

		elif (status == GRAB):

			x_vel = 0
			y_vel = 0
			depth = 120
			var player1 = gml.get_instance("player1") #---[FLAG] may have to change this for multiplayer
			position.x = player1.position.x+grab_x
			position.y = player1.position.y+grab_y
			if (player1.facing == 18): facing = LEFT
			else: facing = RIGHT
			if (counter > 0): counter -= 1
			else:
		
				var n = 500+ceil(500 / 4)*global.level_type
				if (gml.rand(1,4) == 1):
			
					# DY:  trip player

					if (player1.facing == 18): player1.x_vel = -3
					else: player1.x_vel = 3
					player1.y_vel = -3
					player1.stunned = true
					player1.stun_timer = 40
					player1.status = 16
					if (player1.hold_item):
				
						CharacterScripts.scr_drop_item(player1.x_vel, player1.y_vel) #---[FLAG] original script has no arguments. check this
						#/*
						#if (hold_item.type == "Bow" and bow_armed):
					#
							#CharacterScripts.scr_fire_bow()
					#
						#else:
					#
							#hold_item.held = false
							#hold_item = null
							#pickup_item_type = ""
					#
						#*/
					
				
					Audio.play_sound(global.snd_hit)
			
				elif (global.money >= n and gml.rand(1,10) <= 8):
			
					# DY:  throw out money
					global.money -= n
					var obj = gml.instance_create(position.x, position.y, Objects.gold_nugget)
				
					obj.can_collect = false
					obj.alarm_0_countdown.start(20)
					obj.x_vel = gml.rand(1,3)-gml.rand(1,3)
					obj.y_vel = -gml.rand(3,4)
				
					Audio.play_sound(global.snd_throw)
			
				elif (gml.rand(1,2) == 1 and global.rope > 0):
			
					# DY:  throw out rope
					global.rope -= 1
					var obj = gml.instance_create(position.x, position.y, Objects.rope_throw)
				
					obj.x_vel = gml.rand(1,3)-gml.rand(1,3)
					obj.y_vel = -gml.rand(3,4)
				
					Audio.play_sound(global.snd_throw)
			
				elif (global.bombs > 0):
			
					# DY:  throw out bomb
					global.bombs -= 1
					var obj = gml.instance_create(position.x, position.y, Objects.bomb)
					if (gml.rand(1,10) == 1):
				
						obj.sprite_index = "bomb_armed"
						obj.armed = true
						obj.image_speed = 1
						obj.alarm_1_countdown.start(40)
				
				
					obj.x_vel = gml.rand(1,3)-gml.rand(1,3)
					obj.y_vel = -gml.rand(3,4)
				
					Audio.play_sound(global.snd_throw)
					
			
				status = BOUNCE
				vine_counter = 20
				y_vel = -1 * gml.rand(2,4)
				var character = gml.get_instance("character") #---[FLAG] may have to change this for multiplayer
				if (character.position.x > (position.x+8)):
			
					facing = LEFT
					x_vel = -3
			
				else:
			
					facing = RIGHT
					x_vel = 3
			
				grab_counter = 60
		

		elif (status != DROWNED):

			status = IDLE
			x_vel = 0


		if (status != GRAB and Collision.is_collision_top(1, self)):
			y_vel = 1

		if (status == HANG): sprite_index = "monkey_hang_l"
		elif (status == CLIMB or status == GRAB): sprite_index = "monkey_climb_l"
		elif (not col_bot): sprite_index = "monkey_jump_l"
		elif (status == WALK): sprite_index = "monkey_walk_l"
		else: sprite_index = "monkey_left"
