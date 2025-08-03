extends Enemy


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions
var squirt_timer
var CRAWL
var SQUIRT


func alarm_0():
	if (sprite_index != "giant_spider_squirt"):

		status = BOUNCE
		sprite_index = "giant_spider_jump"
		if (Collision.is_collision_bottom(1, self)):
	
			sprite_index = "giant_spider"
			y_vel = -1 * gml.rand(2,5)
			var character = gml.get_instance("character") #---[FLAG] may have to change this for multiplayer
			if (character.position.x < position.x+16):
		
				x_vel = -2.5
		
			else:
		
				x_vel = 2.5


func alarm_1(): #--- doesn't contain any actual code
	# DY: sprite_index = "spider_drown"
	pass


func animation_end():
	if (sprite_index == "giant_spider_flip"):

		sprite_index = "giant_spider"
		image_speed = 0.4

	elif (sprite_index == "giant_spider_squirt"):

		status = IDLE
		image_speed = 0.4


func collision_with_character():
	# DY:  jumped on - caveman, man_trap replaces this script with its own
	if (abs(other.position.x-(position.x+16)) > 16):

		# DY:  do nothing
		pass

	elif (not other.dead and (other.state == 15 or other.state == 16) and other.position.y < position.y+16 and not other.swimming):

		other.y_vel = -6 - 0.2 * other.y_vel
		if (global.has_spike_shoes):
			hp -= (3 * (floor(other.fall_timer/16)+1))
			if (not bloodless): gml.instance_create(other.position.x, other.position.y+8, Objects.blood)
		else: hp -= (1 * (floor(other.fall_timer/16)+1))
		other.fall_timer = 0
		gml.instance_create(position.x+16, position.y+24, Objects.blood)
		Audio.play_sound(global.snd_hit)

	elif (other.invincible == 0):

		if (true):
	
			other.blink = 30
			other.invincible = 30
			if (other.position.y < position.y):
				other.y_vel = -6
			if (other.position.x < position.x):
				other.x_vel = -6
			else:
				other.x_vel = 6
	
			if (global.plife > 0):
		
				global.plife -= 2
				if (global.plife <= 0 and InLevel.is_real_level()): global.enemy_deaths[3] += 1
		
			Audio.play_sound(global.snd_hurt)


func collision_with_whip():
	if (whipped == 0):

		hp -= 1
		gml.instance_create(position.x+16, position.y+24, Objects.blood)
		Audio.play_sound(global.snd_hit)
		whipped = 10


func create():
	# action_inherited
	super()

	# main_code
	type = "giant spider"
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, 2, 16, 30, 32)
	x_vel = 0
	y_vel = 0
	y_delta = -0.4
	my_grav = 0.3
	my_grav_norm = 0.3
	image_speed = 0.8

	# DY:  stats
	hp = 1
	invincible = 0
	whipped = 10
	squirt_timer = gml.rand(100,1000)

	# DY:  status
	IDLE = 0
	BOUNCE = 1
	RECOVER = 2
	CRAWL = 3
	DROWNED = 4
	SQUIRT = 5

	status = 0
	bounce_counter = 0

	shake_counter = 0
	shake_toggle = 1

	Audio.play_sound(global.snd_giant_spider)


func step():
	var character = gml.get_instance("character") #---[FLAG] may have to change this for multiplayer
	
	if ((position.x > gml.view("xview")-32 and position.x < gml.view("xview") + gml.view("wview") and
		position.y > gml.view("yview")-32 and position.y < gml.view("yview") + gml.view("hview"))):

		PlatformEngine.move_to(x_vel,y_vel, self)

		y_vel += my_grav
		if (y_vel > y_vel_limit): y_vel = y_vel_limit

		if (whipped > 0): whipped -= 1

		if (gml.collision_point(position.x+16, position.y+24, "solid", 0, 0)):

			hp = 0


		if (hp < 1):

			for repetition in range(gml.rand(1,3)):
		
				var gem
				var n = gml.rand(1,3)
				match (n):
			
					1:  gem = gml.instance_create(position.x+16, position.y+24, Objects.emerald_big)
					2:  gem = gml.instance_create(position.x+16, position.y+24, Objects.sapphire_big)
					3:  gem = gml.instance_create(position.x+16, position.y+24, Objects.ruby_big)
			
				gem.x_vel = gml.rand(0,3) - gml.rand(0,3)
				gem.y_vel = -2
		
			var obj = gml.instance_create(position.x+16, position.y+24, Objects.paste)
			obj.cost = 0
			obj.for_sale = false
			MiscScripts.scr_create_blood(position.x+16, position.y+24, 4, self)
			if (counts_as_kill):
		
				if (InLevel.is_real_level()): global.enemy_kills[3] += 1
				global.giantspiders += 1
				global.kills += 1
		
			gml.instance_destroy(self)


		if (Collision.is_collision_right(1, self)):

			x_vel = 1


		if (Collision.is_collision_left(1, self)):

			x_vel = -1


		if (Collision.is_collision_top(1, self) and Collision.is_collision_bottom(1, self) and status != CRAWL):

			status = CRAWL

			if (character.position.x < position.x+16):
				x_vel = -1
			else:
				x_vel = 1


		dist = gml.distance_to_object(character, self) #---[FLAG] may have to change this for multiplayer

		if (squirt_timer > 0): squirt_timer -= 1

		if (status == IDLE):

			if (sprite_index != "giant_spider_flip"): sprite_index = "giant_spider"
			alarm_0_countdown.start(gml.rand(5,20))
			if (squirt_timer == 0): status = SQUIRT
			else: status = RECOVER

		elif (status == CRAWL):

			sprite_index = "giant_spider_crawl"
			if (not Collision.is_collision_top(1, self) or not Collision.is_collision_bottom(1, self)): status = IDLE
			elif (Collision.is_collision_right(1, self)): x_vel = -1
			elif (Collision.is_collision_left(1, self)): x_vel = 1

		elif (status == SQUIRT):

			sprite_index = "giant_spider_squirt"
			if (image_index >= 5 and squirt_timer == 0):
		
				gml.instance_create(position.x+16, position.y+16, Objects.web_ball)
				squirt_timer = gml.rand(100,1000)
		

		elif (status == RECOVER):

			if (Collision.is_collision_bottom(1, self)): x_vel = 0

		elif (status == BOUNCE and dist < 120):

			sprite_index = "giant_spider_jump"
			if (Collision.is_collision_bottom(1, self)):
		
				sprite_index = "giant_spider"
				y_vel = -1 * gml.rand(3,6)

				if (character.position.x < position.x+16):
			
					x_vel = -2.5
			
				else:
			
					x_vel = 2.5
			
				Audio.play_sound(global.snd_spider_jump)
			
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
		#if (Collision.is_collision_left(1, self) or Collision.is_collision_right(1, self)):
#
			#x_vel = -x_vel
#
		#*/

		# DY: if (Collision.is_collision_solid(self):
		# DY:   position.y -= 2
