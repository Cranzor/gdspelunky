@icon("res://sprites/enemies/snake_left/snake_left_0.png")
extends DrawnSprite
class_name Enemy


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions
var shaking
var flying
var my_grav_norm
var my_grav_water
var y_vel_limit
var BOUNCE
var bubble_timer
var bubble_timer_max
var PAUSE
var HANG
var DROWNED
var TURN
var whipped
var attack_timer
var THROW
var sight_counter

@onready var in_level: InLevel = InLevel.new()

func collision_with_character():
	# DY:  jumped on - caveman, man_trap replaces this script with its own
	if (abs(other.position.x-(position.x+8)) > 12):

		# DY:  do nothing
		pass

	elif (not other.dead and (other.state == 15 or other.state == 16) and other.position.y < position.y+8 and not other.swimming):

		other.y_vel = -6 - 0.2 * other.y_vel
		if (global.has_spike_shoes):
			hp -= (3 * (float(floor(other.fall_timer)/float(16))+1)) #---[FLAG] imagine this needs to be float division (same with else below)
			MiscScripts.scr_create_blood(other.position.x, other.position.y+8, 1, self)
		else: hp -= (1 * (float(floor(other.fall_timer)/(16))+1))
		other.fall_timer = 0
		Audio.play_sound(global.snd_hit)

	elif (other.invincible == 0):

		other.blink = 30
		other.invincible = 30
		if (other.position.x < position.x):
			other.x_vel = -6
		else:
			other.x_vel = 6
	
		if (global.plife > 0):
	
			global.plife -= 1
		
			if (global.plife <= 0 and in_level.is_real_level()):
		
				if (type == "bat"): global.enemy_deaths[0] += 1
				elif (type == "snake"): global.enemy_deaths[1] += 1
				elif (type == "spider"): global.enemy_deaths[2] += 1
				elif (type == "giant spider"): global.enemy_deaths[3] += 1
				elif (type == "caveman"): global.enemy_deaths[4] += 1
				elif (type == "skeleton"): global.enemy_deaths[5] += 1
				elif (type == "zombie"): global.enemy_deaths[6] += 1
				elif (type == "vampire"): global.enemy_deaths[7] += 1
				elif (type == "frog"): global.enemy_deaths[8] += 1
				elif (type == "fire frog"): global.enemy_deaths[9] += 1
				elif (type == "mantrap"): global.enemy_deaths[10] += 1
				elif (type == "piranha"): global.enemy_deaths[11] += 1
				elif (type == "megamouth"): global.enemy_deaths[12] += 1
				elif (type == "yeti"): global.enemy_deaths[13] += 1
				elif (type == "yeti king"): global.enemy_deaths[14] += 1
				elif (type == "alien"): global.enemy_deaths[15] += 1
				elif (type == "ufo"): global.enemy_deaths[16] += 1
				elif (type == "alien boss"): global.enemy_deaths[17] += 1
				elif (type == "hawkman"): global.enemy_deaths[18] += 1
				elif (type == "shopkeeper"): global.enemy_deaths[19] += 1
				elif (type == "tomb lord"): global.enemy_deaths[20] += 1
				elif (type == "magma man"): global.enemy_deaths[21] += 1
				elif (type == "olmec"): global.enemy_deaths[22] += 1
		
	
	   
		if (type == "bat" || type == "piranha" || type == "vampire"): MiscScripts.scr_create_blood(position.x+4, position.y+4, 1, self)
	
		Audio.play_sound(global.snd_hurt)


func collision_with_whip():
	hp -= other.damage
	counts_as_kill = true
	if (blood_left > 0):

		MiscScripts.scr_create_blood(position.x+sprite_width/2, position.y+sprite_height/2, 1, self)
		if (hp < 0): blood_left -= 1

	Audio.play_sound(global.snd_hit)


func collision_with_whip_pre():
	hp -= other.damage
	counts_as_kill = true
	if (blood_left > 0):

		MiscScripts.scr_create_blood(position.x+sprite_width/2, position.y+sprite_height/2, 1, self)
		if (hp < 0): blood_left -= 1

	Audio.play_sound(global.snd_hit)


func create():
	# action_inherited
	super()

	# main_code
	hp = 1
	type = "none"

	active = true

	# DY:  is this used?
	shaking = 0
	shake_counter = 0

	bloodless = false
	blood_left = 4
	flying = false
	heavy = true
	my_grav = 0.6
	my_grav_norm = 0.6
	my_grav_water = 0.2
	y_vel_limit = 10
	bounce_factor = 0.5
	friction_factor = 0.3

	# DY:  added so enemies can be carried with same code as items
	held = false
	armed = false
	trigger = false
	safe = false
	sticky = false
	can_pick_up = true
	cost = 0
	for_sale = false
	favor = 1
	sac_count = 20

	counts_as_kill = true # DY:  sometimes it's not the player's fault!
	burning = 0
	swimming = false
	stun_time = 200
	LEFT = 0
	RIGHT = 1
	facing = 0

	STUNNED = 98
	DEAD = 99
	bomb_id = 0


func destroy():
	if (bomb_id):

		bomb_id.enemy_id = 0


	if (held):
		var player1 = gml.get_instance("player1") #---[FLAG] may have to change this for multiplayer
		player1.hold_item = null
		player1.pickup_item = ""


func draw():
	var draw_sprite = DrawSprite.new()
	if (facing == RIGHT): draw_sprite.draw_sprite_ext(sprite_index, image_index, position.x+16, position.y, -1, image_yscale, image_angle, image_blend, image_alpha, animated_sprite_node)
	else: draw_sprite.draw_sprite_ext(sprite_index, image_index, position.x, position.y, 1, image_yscale, image_angle, image_blend, image_alpha, animated_sprite_node)


func outside_room():
	gml.instance_destroy(self)


func step():
	#/*
	#if ((position.x > gml.view("xview")-8 and position.x < gml.view("xview")+gml.view("wview")+8 and:
		#position.y > gml.view("yview")-8 and position.y < gml.view("yview")+gml.view("hview")+8))
#
	#*/

	if ((position.x > gml.view("xview")-20 and position.x < gml.view("xview")+gml.view("wview")+4 and
		position.y > gml.view("yview")-20 and position.y < gml.view("yview")+gml.view("hview")+4)):


		active = true

		if (held):

			x_vel = 0
			y_vel = 0
			my_grav = 0
		
			var player1 = gml.get_instance("player1") #---[FLAG] may have to change this for multiplayer
			if (player1.facing == 18):
				position.x = player1.position.x-12
				facing = 0
			if (player1.facing == 19):
				position.x = player1.position.x-4
				facing = 1
			
			if (player1.state == 12 and abs(player1.x_vel) < 2): position.y = player1.position.y-10
			else: position.y = player1.position.y-12
		
			depth = 1
		
			#if (player1.hold_item == 0 or status < 98):
			if (player1.hold_item == null or status < 98):
		
				held = false
		

		else: depth = 60

		if (gml.collision_point(position.x+floor(sprite_width/2), position.y+floor(sprite_height/2), "water_swim", -1, -1)):

			if (not swimming):
		
				gml.instance_create(position.x+floor(sprite_width/2), position.y, Objects.splash)
				swimming = true
				Audio.play_sound(global.snd_splash)
		
			my_grav = my_grav_water
		
			if (type == "fire frog"):
		
				var obj = gml.instance_create(position.x, position.y, Objects.frog)
				obj.status = status
				gml.instance_destroy(self)
		

		else:

			swimming = false
			my_grav = my_grav_norm


		if (burning > 0):

			if (gml.rand(1,5) == 1): gml.instance_create(position.x+gml.rand(0,sprite_width), position.y+gml.rand(0,sprite_height), Objects.burn)
			burning -= 1


		if (gml.collision_point(position.x+floor(sprite_width/2), position.y-1, "lava", 0, 0)): gml.instance_destroy(self)

		if (gml.collision_point(position.x+floor(sprite_width/2), position.y+sprite_height-2, "lava", 0, 0)):

			hp = 0
			counts_as_kill = false
			burning = 1
			my_grav = 0
			x_vel = 0
			y_vel = 0.1
			depth = 999


		if (gml.collision_rectangle(position.x+2, position.y+2, position.x+14,  position.y+14, "spears_left", 0, 0)):

			var trap = gml.instance_nearest(position.x, position.y, "spears_left")
			if (trap.image_index >= 20 and trap.image_index < 24):
		
				if (type == "caveman" or type == "mantrap" or type == "yeti" or type == "hawkman" or type == "shopkeeper"):
			
					# DY:  if (status < 98):
					if (hp > 0):
				
						hp -= 2
						counts_as_kill = false
						status = 98
						counter = stun_time
						y_vel = -6
						if (trap.position.x+8 < position.x+8): x_vel = 4
						else: x_vel = -4
						image_speed = 0.5
						Audio.play_sound(global.snd_hit)
						MiscScripts.scr_create_blood(position.x+sprite_width/2, position.y+sprite_height/2, 2, self)
				
			
				else:
			
					hp -= 2
					counts_as_kill = false
					Audio.play_sound(global.snd_hit)
					MiscScripts.scr_create_blood(position.x+sprite_width/2, position.y+sprite_height/2, 1, self)
			
		


		if (gml.collision_point(position.x+8, position.y+16, "spikes", 0, 0) and y_vel > 2):

			var spikes = gml.instance_place(position.x+8, position.y+14, "spikes", self)
		
			if (not bloodless):
		
				spikes.sprite_index = "spikes_blood"
		
		
			if (hp > 0):
		
				hp = 0
				counts_as_kill = false
				if (not bloodless): MiscScripts.scr_create_blood(position.x+sprite_width/2, position.y+sprite_height/2, 3, self)
				if (type == "caveman" or type == "mantrap" or type == "yeti" or type == "hawkman" or type == "shopkeeper"):
					status = 99
		
			my_grav = 0
			x_vel = 0
			y_vel = 0.2


		# DY:  sacrifice
		if (status >= 98):

			if (not held and x_vel == 0 and y_vel == 0):
		
				if (gml.collision_point(position.x+8, position.y+16, "sac_altar_left", 0, 0)):
			
					if (sac_count > 0): sac_count -= 1
					else:
				
						gml.instance_create(position.x+8, position.y+8, Objects.flame)
						Audio.play_sound(global.snd_small_explode)
						MiscScripts.scr_create_blood(position.x+8, position.y+8, 3, self)
						global.message = "KALI ACCEPTS THE SACRIFICE!"
						if (global.favor <= -8):
					
							global.message = "KALI DEVOURS THE SACRIFICE!"
					
						elif (global.favor < 0):
					
							if (status == 98): global.favor += favor
							else: global.favor += favor/2
							if (favor > 0): favor = 0
					
						else:
					
							if (status == 98): global.favor += favor
							else: global.favor += favor/2
					
						MiscScripts.scr_get_favor_msg()
						global.message_timer = 200
						global.shake = 10
						gml.instance_destroy(self)
				
			
		
			else: sac_count = 20


		# DY:  moving projectile
		if (status == 98):

			if ((abs(x_vel) > 2 or abs(y_vel) > 2)):
		
				var obj = gml.collision_rectangle(position.x, position.y, position.x+16,  position.y+16, "enemy", false, true, self)
				if (obj):
			
					if (not obj.invincible and obj.type != "magma man"):
				
						if (obj.status < 98): obj.x_vel = x_vel
					
						if (obj.type == "caveman" or obj.type == "mantrap" or obj.type == "vampire" or obj.type == "yeti" or obj.type == "hawkman"):
					
							if (obj.status < STUNNED):
						
								if (obj.type == "caveman" or obj.type == "vampire" or obj.type == "yeti" or obj.type == "hawkman"):
							
									MiscScripts.scr_create_blood(obj.position.x+8, obj.position.y+8, 1, self)
							
								elif (type == "mantrap"):
							
									gml.instance_create(obj.position.x+gml.rand(0,16), obj.position.y-8+gml.rand(0,16), Objects.leaf)
							
								obj.hp -= 1
								obj.status = STUNNED
								obj.counter = stun_time
								obj.y_vel = -6
								Audio.play_sound(global.snd_hit)
						
					
						elif (obj.type == "shopkeeper"):
					
							if (obj.status < 98):
						
								MiscScripts.scr_create_blood(obj.position.x, obj.position.y, 1, self)
								obj.hp -= 1
								obj.y_vel = -6
								obj.status = 2
								Audio.play_sound(global.snd_hit)
						
					
						elif (obj.type == "giant spider"):
					
							if (obj.whipped == 0):
						
								MiscScripts.scr_create_blood(obj.position.x+16, obj.position.y+24, 1, self)
								obj.hp -= 1
								obj.whipped = 10
								Audio.play_sound(global.snd_hit)
						
					
						elif (obj.type == "tomb lord"):
					
							if (obj.whipped == 0):
						
								MiscScripts.scr_create_blood(position.x+16, position.y+16, 1, self)
								obj.hp -= 1
								obj.whipped = 20
								Audio.play_sound(global.snd_hit)
						
					
						elif (obj.type == "alien boss"):
					
							if (obj.status != 99 and obj.sprite_index != "alien_boss_hurt"):
						
								MiscScripts.scr_create_blood(position.x+8, position.y+8, 1, self)
								obj.hp -= 1
								obj.sprite_index = "alien_boss_hurt"
								obj.image_speed = 0.8
								Audio.play_sound(global.snd_hit)
						
					
						elif (obj.type == "ufo"):
					
							gml.instance_create(obj.position.x+8, obj.position.y+8, Objects.explosion)
							Audio.play_sound(global.snd_explosion)
							if (gml.rand(1,3) == 1): gml.instance_create(obj.position.x+8, obj.position.y+8, Objects.alien_eject)
							global.ufos += 1
							global.kills += 1
							gml.instance_destroy(self)
					
						else:
					
							MiscScripts.scr_create_blood(obj.position.x+8, obj.position.y+8, 1, self)
							obj.hp -= 1
							obj.orig_x = position.x
							obj.orig_y = position.y
							Audio.play_sound(global.snd_hit)
						
						
					
						# DY:  obj.x_vel = x_vel * 0.3
					
						if (type == "arrow" or type == "fish bone"): gml.instance_destroy(self)
				
			
		


	else: active = false
