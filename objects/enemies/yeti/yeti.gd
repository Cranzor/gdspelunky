extends Enemy


func _ready():
	object_setup()


#--- Object functions


func alarm_0():
	whipped = false


func animation_end():
	if (sprite_index == "yeti_throw_l"):

		status = IDLE
		sprite_index = "yeti_left"


func collision_with_character():
	# DY:  jumped on
	if (abs(other.position.x-(position.x+8)) > 8):

		# DY:  do nothing
		pass

	elif (not other.dead and not other.stunned and (other.state == 15 or other.state == 16) and other.position.y < position.y+5 and not other.swimming):

		if (status < STUNNED):
	
			other.y_vel=-6-0.2*other.y_vel
			if (global.has_spike_shoes):
				hp -= (3 * ceil(other.fall_timer/16))
				gml.instance_create(other.position.x, other.position.y+8, Objects.blood, self)
			else: hp -= (1 * ceil(other.fall_timer/16))
			other.fall_timer = 0
			status = STUNNED
			counter = stun_time
			y_vel = -6
			if (other.position.x < position.x+8): x_vel += 1
			else: x_vel -= 1
			image_speed = 0.5
			Audio.play_sound(global.snd_hit)
	

	elif (other.invincible == 0 and status < STUNNED):

		if (gml.collision_point(position.x+8, position.y-4, "solid", 0, 0, self)):
	
			other.blink = 30
			other.invincible = 30
			if (other.position.x < position.x):
				other.x_vel = -6
			else:
				other.x_vel = 6
			gml.instance_create(other.position.x, other.position.y, Objects.blood, self)
	
			if (global.plife > 0):
		
				global.plife -= 1
				if (global.plife <= 0 and InLevel.is_real_level()): global.enemy_deaths[13] += 1
		
			Audio.play_sound(global.snd_hurt)
	
		elif (status != THROW):
	
			status = THROW
			x_vel = 0
			if (other.position.x > position.x+8):
		
				facing = RIGHT
				sprite_index = "yeti_throw_l"
				other.position.x = position.x
				other.position.y = position.y
				other.y_vel = -6
				other.x_vel = 6
		
			else:
		
				facing = LEFT
				sprite_index = "yeti_throw_l"
				other.position.x = position.x + 16
				other.position.y = position.y
				other.y_vel = -6
				other.x_vel = -6
		
		
			other.stunned = true
			other.bounced = false
			other.wall_hurt = 1
		
			if (other.hold_item):
		
				if (other.hold_item.type == "gold idol"): other.hold_item.position.y -= 8
				CharacterScripts.scr_drop_item(other.x_vel, other.y_vel)


func collision_with_whip():
	if (not whipped):

		var player1 = gml.get_instance("player1") #---[FLAG] may have to change this for multiplayer
		if (other.puncture):
	
			hp -= other.damage
			counts_as_kill = true
			if (blood_left > 0):
		
				MiscScripts.scr_create_blood(position.x+sprite_width/2, position.y+sprite_height/2, 1, self) #---[FLAG] check division
				if (hp < 0): blood_left -= 1
		
			status = STUNNED
			counter = stun_time
			y_vel = -3
			if (player1.position.x-8 < position.x): x_vel = 2
			else: x_vel = -2
			image_speed = 0.5
			Audio.play_sound(global.snd_hit)
			whipped = true
			alarm_0_countdown.start(10)
	
		else:
	
			y_vel = -2
			if (player1.position.x-8 < position.x): x_vel = 1
			else: x_vel = -1
			Audio.play_sound(global.snd_hit)
			whipped = true
			alarm_0_countdown.start(10)


func collision_with_whip_pre():
	if (not whipped):

		if (other.type == "machete"):
	
			hp -= other.damage
			counts_as_kill = true
			if (blood_left > 0):
		
				MiscScripts.scr_create_blood(position.x+sprite_width/2, position.y+sprite_height/2, 1, self) #---[FLAG] check division
				if (hp < 0): blood_left -= 1
		
			status = STUNNED
			counter = stun_time
			y_vel = -3
			if (other.position.x < (position.x+8)): x_vel = 2
			else: x_vel = -2
			image_speed = 0.5
			Audio.play_sound(global.snd_hit)
			whipped = true
			alarm_0_countdown.start(10)
	
		else:
	
			y_vel = -2
			if (other.position.x < position.x): x_vel = 1
			else: x_vel = -1
			Audio.play_sound(global.snd_hit)
			whipped = true
			alarm_0_countdown.start(10)


func create():
	# action_inherited
	super()

	# main_code
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, 2, 0, sprite_width-2, sprite_height)
	x_vel = 2.5
	image_speed = 0.5

	# DY:  stats
	type = "yeti"
	hp = 5
	invincible = 0
	favor = 4

	IDLE = 0
	WALK = 1
	ATTACK = 2
	THROW = 3
	STUNNED = 98
	DEAD = 99
	status = IDLE

	whipped = false

	bounced = false
	dead = false
	counter = 0
	sight_counter = 0

	LEFT = 0
	RIGHT = 1
	facing = RIGHT

	shake_counter = 0
	shake_toggle = 1


func step(): # one of seven scripts which uses 'other' outside of collision_with
	# action_inherited
	super()

	# main_code
	if (active):

		PlatformEngine.move_to(x_vel,y_vel,self)

		if (not held): y_vel += my_grav
		if (y_vel > y_vel_limit): y_vel = y_vel_limit

		col_left = false
		col_right = false
		col_bot = false
		col_top = false
		if (Collision.is_collision_left(1, self)): col_left = true
		if (Collision.is_collision_right(1, self)): col_right = true
		if (Collision.is_collision_bottom(1, self)): col_bot = true
		if (Collision.is_collision_top(1, self)): col_top = true

		if (col_bot and status != STUNNED): y_vel = 0

		if (status != DEAD and status != STUNNED and hp < 1):

			status = DEAD


		if (status >= STUNNED):

			if (gml.collision_point(position.x+8, position.y+12, "solid", 0, 0, self)):
		
				MiscScripts.scr_create_blood(position.x+8, position.y+8, 3, self)
				Audio.play_sound(global.snd_caveman_die)
				gml.instance_destroy(self)
		

		elif (not held and gml.collision_point(position.x+8, position.y+8, "solid", 0, 0, self)):

			MiscScripts.scr_create_blood(position.x+8, position.y+8, 3, self)
			Audio.play_sound(global.snd_caveman_die)
			gml.instance_destroy(self)

		
		if (status == IDLE):

			bounced = false
			if (Collision.is_collision_bottom(1, self) and
				(gml.collision_point(position.x-1, position.y, "solid", -1, -1, self) or gml.collision_point(position.x+16, position.y, "solid", -1, -1, self))):
		
				y_vel = -6
				if (facing == LEFT): x_vel = -1
				else: x_vel = 1
				counter -= 10
		
		
			if (y_vel < 0 and Collision.is_collision_top(1, self)):
		
				y_vel = 0
		

			if (Collision.is_collision_bottom(1, self) and counter > 0): counter -= 1
			if (counter < 1):
		
				facing = gml.rand(0,1)
				status = WALK
		
			if (sight_counter > 0): sight_counter -= 1
			else:
		
				var sight = gml.instance_create(position.x, position.y, Objects.enemy_sight, self)
				if (facing == LEFT): sight.direction = 180
				else: sight.direction = 0
				sight.speed = 10
				sight.owner_object = gml.instance_place(position.x, position.y, "yeti", self)
				sight_counter = 5
		

		elif (status == WALK):

			if (Collision.is_collision_left(1, self) or Collision.is_collision_right(1, self)):
		
				if (facing == LEFT): facing = RIGHT
				else: facing = LEFT
		
		
			if (not Collision.is_collision_bottom(1, self)):
		
				# DY:  do nothing
				pass
		
			elif (gml.rand(1,100) == 1):
		
				status = IDLE
				counter = gml.rand(20,50)
				x_vel = 0
		
			elif (facing == LEFT):
		
				x_vel = -1.5
				if (not gml.collision_point(position.x-1, position.y+16, "solid", -1, -1, self)):
			
					status = IDLE
					counter = gml.rand(20,50)
					x_vel = 0
			
		
			elif (facing == RIGHT):
		
				x_vel = 1.5
				if (not gml.collision_point(position.x+16, position.y+16, "solid", -1, -1, self)):
			
					status = IDLE
					counter = gml.rand(20,50)
					x_vel = 0
			 
		
		
			if (sight_counter > 0): sight_counter -= 1
			else:
		
				var sight = gml.instance_create(position.x, position.y, Objects.enemy_sight, self)
				if (facing == LEFT): sight.direction = 180
				else: sight.direction = 0
				sight.speed = 10
				sight.owner_object = gml.instance_place(position.x, position.y, "yeti", self)
				sight_counter = 5
		

		elif (status == ATTACK):

			image_speed = 1
			if (Collision.is_collision_left(1, self) or Collision.is_collision_right(1, self)):
		
				if (facing == LEFT): facing = RIGHT
				else: facing = LEFT
		
			if (facing == LEFT): x_vel = -3
			else: x_vel = 3

		elif (status == STUNNED):

			if (x_vel == 0 and hp > 0): sprite_index = "yeti_stun_l"
			elif (bounced):
		
				if (y_vel < 0): sprite_index = "yeti_bounce_l"
				else: sprite_index = "yeti_fall_l"
		
			else:
		
				if (abs(x_vel) > 0): sprite_index = "yeti_die_ll"
				else: sprite_index = "yeti_die_lr"
		
		
			if (gml.collision_point(position.x, position.y, "spikes", 0, 0, self) and dead and y_vel != 0):
		
				if (gml.rand(1,8) == 1): gml.instance_create(other.position.x, other.position.y, Objects.blood, self)
		
		
			if (col_bot and not bounced):
		
				bounced = true
				MiscScripts.scr_create_blood(position.x+8, position.y+8, 1, self)
		
		
			if (held or col_bot):
			  
				if (counter > 0): counter -= 1
				elif (hp > 0):
			
					status = IDLE
					if (held):
				
						held = false
						var player1 = gml.get_instance("player1") #---[FLAG] may have to change this for multiplayer
						player1.hold_item = null
						player1.pickup_item_type = ""
				
			
		

		elif (status == DEAD):

			if (not dead):
		
				if (counts_as_kill):
			
					if (InLevel.is_real_level()): global.enemy_kills[13] += 1
					global.yetis += 1
					global.kills += 1
			
				Audio.play_sound(global.snd_caveman_die)
				dead = true
		

			sprite_index = "yeti_dead_l"
		
			if (x_vel > 0 or y_vel > 0): status = STUNNED


		if (status >= STUNNED):

			MiscScripts.scr_check_collisions(self)
		
			if (x_vel == 0 and y_vel == 0 and hp < 1): status = DEAD


		# DY: if (Collision.is_collision_solid(self): position.y -= 2

		if (x_vel > 0): x_vel -= 0.1
		if (x_vel < 0): x_vel += 0.1
		if (abs(x_vel) < 0.5): x_vel = 0

		if (status < STUNNED and status != THROW):

			if (abs(x_vel) > 0): sprite_index = "yeti_run_left"
			else: sprite_index = "yeti_left"

		if (held):

			if (hp > 0): sprite_index = "yeti_held_l"
			else: sprite_index = "yeti_d_held_l"
