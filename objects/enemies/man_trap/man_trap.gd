extends Enemy


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions
var EATING
var SLEEPY
var ate_shopkeeper


func animation_end():
	if (status == EATING):

		sprite_index = "man_trap_sleep_l"
		status = SLEEPY

	elif (sprite_index == "man_trap_sleep_l"):

		sprite_index = "man_trap_stun_l"
		status = STUNNED
		counter = stun_time*2
	

func collision_with_caveman():
	if (status != STUNNED and status != EATING):

		x_vel = 0
		status = EATING
		if (other.position.x > position.x): facing = RIGHT
		else: facing = LEFT
		sprite_index = "man_trap_eat_caveman_l"
		
		gml.instance_destroy(other)


func collision_with_character():
	if (abs(other.position.x-(position.x+8)) > 8):

		# DY:  do nothing
		pass

	elif ((global.has_spike_shoes or status == EATING) and not other.dead and not other.stunned and (other.state == 15 or other.state == 16) and other.position.y < position.y+5 and not other.swimming):

		other.y_vel=-6-0.2*other.y_vel
		if (global.has_spike_shoes):
			hp -= (3 * (floor(other.fall_timer/16)+1))
			if (not bloodless): gml.instance_create(other.position.x, other.position.y+8, Objects.blood)
		else: hp -= (1 * (floor(other.fall_timer/16)+1))
		other.fall_timer = 0
		counts_as_kill = true
		status = STUNNED
		counter = stun_time
		y_vel = -6
		if (other.position.x < position.x+8): x_vel += 1
		else: x_vel -= 1
		image_speed = 0.5
		Audio.play_sound(global.snd_hit)

	elif (other.visible and other.invincible == 0):

		if (status != STUNNED and status != EATING):
	
			x_vel = 0
			status = EATING
			if (other.position.x > position.x+8): facing = RIGHT
			else: facing = LEFT
			if (global.is_damsel):
		
				sprite_index = "man_trap_eat_damsel_l"
		
			elif (global.is_tunnel_man):
		
				sprite_index = "man_trap_eat_tunnel_l"
		
			else:
		
				sprite_index = "man_trap_eat_l"
		
		
			other.visible = false
			other.invincible = 9999
			other.bounced = true
			global.plife = -99
			Audio.play_sound(global.snd_die)
			global.draw_hud = false
			if (InLevel.is_real_level()): global.enemy_deaths[10] += 1
				
			if (other.hold_item):
		
				if (held): held = false
				else:
			
					other.hold_item.held = false
					if (facing == LEFT): other.hold_item.x_vel = -2
					else: other.hold_item.x_vel = 2
					other.hold_item.y_vel = -4
			
				other.hold_item = null
				other.pickup_item_type = ""


func collision_with_damsel():
	if (status != STUNNED and status != EATING):

		x_vel = 0
		status = EATING
		if (other.position.x > position.x): facing = RIGHT
		else: facing = LEFT
		sprite_index = "man_trap_eat_damsel_l"
	
		if (other.held):
			var player1 = gml.get_instance("player1") #---[FLAG] may have to change this for multiplayer
			player1.hold_item = null
			player1.pickup_item_type = ""
	
		gml.instance_destroy(other)
	

func collision_with_shopkeeper():
	if (status != STUNNED and status != EATING):

		x_vel = 0
		status = EATING
		if (other.position.x > position.x): facing = RIGHT
		else: facing = LEFT
		sprite_index = "man_trap_eat_shopkeeper_l"
		if (other.hp > 0): ate_shopkeeper = true
	
		if (other.has_gun):
	
			var obj = gml.instance_create(other.position.x+8, other.position.y+8, Objects.shotgun)
			obj.y_vel = gml.rand(4,6)
			if (other.x_vel < 0): obj.x_vel = -1 * gml.rand(4,6)
			else: obj.x_vel = gml.rand(4,6)
			obj.cost = 0
			obj.for_sale = false
			other.has_gun = false
	
		gml.instance_destroy(other)


func collision_with_whip():
	if (status != STUNNED):

		if (other.type == "machete"):
	
			hp -= other.damage*2
	
		else:
	
			hp -= other.damage
	
		counts_as_kill = true
		status = STUNNED
		counter = stun_time
		y_vel = -3
		if (other.position.x < (position.x+8)): x_vel = 2
		else: x_vel = -2
		image_speed = 0.5
		gml.instance_create(position.x+gml.rand(0,16), position.y-8+gml.rand(0,16), Objects.leaf)
		Audio.play_sound(global.snd_hit)


func collision_with_whip_pre():
	if (status != STUNNED):

		if (other.type == "machete"):
	
			hp -= other.damage*2
	
		else:
	
			hp -= other.damage
	
		counts_as_kill = true
		status = STUNNED
		counter = stun_time
		y_vel = -3
		if (other.position.x < (position.x+8)): x_vel = 2
		else: x_vel = -2
		image_speed = 0.5
		gml.instance_create(position.x+gml.rand(0,16), position.y-8+gml.rand(0,16), Objects.leaf)
		Audio.play_sound(global.snd_hit)


func create():
	# action_inherited
	super()

	# main_code
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, 2, 0, sprite_width-2, sprite_height)
	x_vel = 2.5
	image_speed = 0.5

	# DY:  stats
	type = "man_trap"
	hp = 3
	invincible = 0
	favor = 2

	IDLE = 0
	WALK = 1
	ATTACK = 2
	SLEEPY = 96
	EATING = 97
	STUNNED = 98
	DEAD = 99
	status = IDLE

	ate_shopkeeper = false

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

		if (hp < 1):

			if (counts_as_kill):
		
				if (InLevel.is_real_level()): global.enemy_kills[10] += 1
				global.mantraps += 1
				global.kills += 1
		
			for repetition in range(3):  gml.instance_create(position.x+gml.rand(0,16), position.y-8+gml.rand(0,16), Objects.leaf)
			MiscScripts.scr_create_blood(position.x+8, position.y+8, 1, self)
			if (ate_shopkeeper):
		
				var obj = gml.instance_create(position.x, position.y, Objects.shopkeeper)
				obj.status = 2
				obj.has_gun = false
				for repetition in range(3):  gml.instance_create(position.x+gml.rand(0,16), position.y-8+gml.rand(0,16), Objects.leaf)
				MiscScripts.scr_create_blood(position.x+8, position.y+8, 1, self)
				Audio.play_sound(global.snd_small_explode)
		
			gml.instance_destroy(self)


		if (Collision.is_collision_bottom(1, self) and status != STUNNED): y_vel = 0

		if (status == IDLE):

			if (counter > 0): counter -= 1
			if (counter == 0):
		
				facing = gml.rand(0,1)
				status = WALK
		

		elif (status == WALK):

			if (Collision.is_collision_left(1, self) or Collision.is_collision_right(1, self)):
		
				if (facing == LEFT): facing = RIGHT
				else: facing = LEFT
		
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
		

		elif (status == STUNNED):

			# DY:  x_vel = 0
			#/*
			#if (counter > 0): counter -= 1
			#else:
		#
				#status = IDLE
				#counter = gml.rand(20,50)
		#
			#*/
			sprite_index = "man_trap_stun_l"

			if (col_bot and not bounced):
		
				bounced = true
				MiscScripts.scr_create_blood(position.x+8, position.y+8, 1, self)
		
		
			if (held or col_bot):
			  
				if (counter > 0): counter -= 1
				else:
			
					if (ate_shopkeeper):
				
						var obj = gml.instance_create(position.x, position.y, Objects.shopkeeper)
						obj.status = 2
						obj.has_gun = false
						for repetition in range(3):  gml.instance_create(position.x+gml.rand(0,16), position.y-8+gml.rand(0,16), Objects.leaf)
						MiscScripts.scr_create_blood(position.x+8, position.y+8, 1, self)
						Audio.play_sound(global.snd_small_explode)
						gml.instance_destroy(self)
				
					elif (hp > 0):
				
						status = IDLE
						counter = gml.rand(20,50)
						if (held):
					
							held = false
							# DY:  trap can get stuck in wall at this point:
							var player1 = gml.get_instance("player1") #---[FLAG] may have to change this for multiplayer
							if (gml.collision_point(position.x+16, position.y+8, "solid", 0, 0)): position.x = player1.position.x - 12
							elif (gml.collision_point(position.x, position.y+8, "solid", 0, 0)): position.x = player1.position.x - 4
							position.y = player1.position.y - 8
							player1.hold_item = null
							player1.pickup_item_type = ""
					
				
			
		


		if (status >= STUNNED):

			MiscScripts.scr_check_collisions()


		# DY:  friction
		if (col_bot):

			if (abs(x_vel) < 0.1): x_vel = 0
			elif (abs(x_vel) != 0): x_vel *= 0.3


		if (Collision.is_collision_solid(self)): position.y -= 2

		if (status == EATING and image_index == 8):

			MiscScripts.scr_create_blood(position.x+8, position.y, 1, self)


		if (status == SLEEPY and image_index == 6 and gml.rand(1,8) == 1):

			if (facing == LEFT):
		
				var bone = gml.instance_create(position.x+2, position.y+4, Objects.bone)
				bone.x_vel = -2
		
			else:
		
				var bone = gml.instance_create(position.x+14, position.y+4, Objects.bone)
				bone.x_vel = 2
		


		if (status < SLEEPY):

			sprite_index = "man_trap_left"
