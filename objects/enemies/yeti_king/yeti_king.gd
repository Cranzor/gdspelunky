extends Enemy


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


func animation_end():
	if (sprite_index == "yeti_king_turn_r"):

		facing = RIGHT
		status = WALK

	if (sprite_index == "yeti_king_turn_l"):

		facing = LEFT
		status = WALK

	if (sprite_index == "yeti_king_yell_l" or sprite_index == "yeti_king_yell_r"):

		status = IDLE
		counter = 30
		image_speed = 0.25


func collision_with_character():
	# DY:  jumped on - caveman, man_trap replaces this script with its own
	if (abs(other.position.x-(position.x+16)) > 16):

		# DY:  do nothing
		pass

	elif (not other.dead and (other.state == 15 or other.state == 16) and other.position.y < position.y+8 and not other.swimming):

		other.y_vel = -6 - 0.2 * other.y_vel
		if (global.has_spike_shoes):
			hp -= (3 * ceil(other.fall_timer/16))
			gml.instance_create(other.position.x, other.position.y+8, Objects.blood, self)
		else: hp -= (1 * ceil(other.fall_timer/16))
		other.fall_timer = 0
		counts_as_kill = true
		gml.instance_create(position.x+16, position.y+8, Objects.blood, self)
		Audio.play_sound(global.snd_hit)

	elif (other.invincible == 0):

		other.blink = 30
		other.invincible = 30
		if (other.position.y < position.y):
			other.y_vel = -6
		if (other.position.x < position.x):
			other.x_vel = -6
		else:
			other.x_vel = 6
	
		if (global.plife > 0 and InLevel.is_real_level()):
	
			global.plife -= 2
			if (global.plife <= 0): global.enemy_deaths[14] += 1
	
		Audio.play_sound(global.snd_hurt)


func collision_with_whip():
	if (whipped == 0 and other.position.y < position.y+12):

		if (other.puncture):
	
			hp -= other.damage
			counts_as_kill = true
			MiscScripts.scr_create_blood(position.x+sprite_width/2, position.y+sprite_height/2, 1, self) #---[FLAG] check division
			Audio.play_sound(global.snd_hit)
			whipped = 10
	
		else:
	
			Audio.play_sound(global.snd_hit)
			whipped = 10


func create():
	# action_inherited
	super()

	# main_code
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, 6, 0, 26, 32)
	x_vel = 2.5
	image_speed = 0.25

	# DY:  stats
	type = "yeti king"
	hp = 30
	invincible = 0
	heavy = true

	IDLE = 0
	WALK = 1
	TURN = 2
	ATTACK = 3
	STUNNED = 98
	DEAD = 99
	status = IDLE

	can_pick_up = false
	bounced = false
	dead = false
	whipped = 0
	counter = 0
	attack_timer = 0

	LEFT = 0
	RIGHT = 1
	facing = RIGHT

	shake_counter = 0
	shake_toggle = 1


func draw():
	gml.draw_sprite_ext(sprite_index, image_index, position.x, position.y, 1, image_yscale, image_angle, image_blend, image_alpha, self)


func step():
	# action_inherited
	super()

	# main_code
	if ((position.x > gml.view("xview")-36 and position.x < gml.view("xview") + gml.view("wview") and
		position.y > gml.view("yview")-36 and position.y < gml.view("yview") + gml.view("hview"))):

		PlatformEngine.move_to(x_vel,y_vel, self)

		y_vel += my_grav
		if (y_vel > y_vel_limit): y_vel = y_vel_limit

		if (gml.collision_point(position.x+16, position.y+16, "solid", 0, 0)):

			hp = 0


		if (hp < 1):

			MiscScripts.scr_create_blood(position.x+14+gml.rand(0,4), position.y+14+gml.rand(0,4), 3, self)
			for repetition in range(4):
		
				gml.instance_create(position.x+14+gml.rand(0,4), position.y+14+gml.rand(0,6), Objects.bone, self)
		
			for repetition in range(4):
				
				var obj
				if (gml.rand(1,12) == 1):
			
					obj = gml.instance_create(position.x+16, position.y+16, Objects.spike_shoes, self)
					obj.cost = 0
					obj.for_sale = false
			
				elif (gml.rand(1,2) == 1): obj = gml.instance_create(position.x+16, position.y+16, Objects.sapphire_big, self)
				else:
			
					obj = gml.instance_create(position.x+16, position.y+16, Objects.rope_pile, self)
					obj.cost = 0
					obj.for_sale = false
			
				obj.x_vel = gml.rand(0,3)-gml.rand(0,3)
				obj.y_vel = -gml.rand(1,2)
		
			if (counts_as_kill):
		
				global.enemy_kills[14] += 1
				global.yetikings += 1
				global.kills += 1
		
			gml.instance_destroy(self)


		if (Collision.is_collision_bottom(1, self) and status != STUNNED): y_vel = 0

		if (attack_timer > 0): attack_timer -= 1
		if (whipped > 0): whipped -= 1
		
		if (status == IDLE):

			if (counter > 0): counter -= 1
			if (counter <= 0):
		
				status = WALK
		

		elif (status == WALK):

			var player1 = gml.get_instance("player1") #---[FLAG] may need to change this for multiplayer
			
			if (counter > 0): counter -= 1
		
			if (facing == LEFT):
		
				if (Collision.is_collision_left(1, self) or
					(player1.position.x > position.x+16 and abs(player1.position.y-(position.y+32)) < 16 and counter == 0)):
			
					sprite_index = "yeti_king_turn_r"
					status = TURN
					counter = 30
			
				elif (player1.position.x < position.x+16 and abs(player1.position.y-(position.y+16)) < 32 and attack_timer == 0):
			
					status = ATTACK
					sprite_index = "yeti_king_yell_l"
					image_index = 0
					x_vel = 0
			
				else: x_vel = -1
		
			elif (facing == RIGHT):
		
				if (Collision.is_collision_right(1, self) or
					(player1.position.x < position.x+16 and abs(player1.position.y-(position.y+32)) < 16 and counter == 0)):
			
					sprite_index = "yeti_king_turn_l"
					status = TURN
					counter = 30
			
				elif (player1.position.x > position.x+16 and abs(player1.position.y-(position.y+16)) < 32 and attack_timer == 0):
			
					status = ATTACK
					sprite_index = "yeti_king_yell_r"
					image_index = 0
					x_vel = 0
			
				else: x_vel = 1
		

		elif (status == TURN):

			x_vel = 0

		elif (status == ATTACK):

			x_vel = 0
			image_speed = 0.5
			attack_timer = 100
			if (image_index >= 7 and image_index <= 12):
		
				if (not SS.is_sound_playing(global.snd_yeti_yell)): Audio.play_sound(global.snd_yeti_yell)
				var all_ice = gml.get_all_instances("ice")
				for ice_instance in all_ice:
			
					if (gml.instance_exists("yeti_king")):
						var yeti_king = gml.get_instance("yeti_king")
						if (gml.rand(1,60) == 1 and
							abs((yeti_king.position.x+16)-(ice_instance.position.x+8)) > 16 and
							gml.point_distance(ice_instance.position.x, ice_instance.position.y, yeti_king.position.x, yeti_king.position.y) < 96):
					
							gml.instance_create(ice_instance.position.x, ice_instance.position.y, Objects.ice_block, self)
							gml.instance_destroy(ice_instance)
					
				
				
				var all_thin_ice = gml.get_all_instances("thin_ice")
				for thin_ice_instance in all_thin_ice:
			
					thin_ice_instance.thickness -= 2
			
		


		if (Collision.is_collision_solid(self)):
			position.y -= 2

		if (facing == LEFT):
	   
			if (status == WALK): sprite_index = "yeti_king_walk_l"
			elif (status == IDLE): sprite_index = "yeti_king_left"

		if (facing == RIGHT):
	   
			if (status == WALK): sprite_index = "yeti_king_walk_r"
			elif (status == IDLE): sprite_index = "yeti_king_right"
