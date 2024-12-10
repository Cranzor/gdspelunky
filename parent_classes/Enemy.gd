@icon("res://sprites/enemies/snake_left/snake_left_0.png")
extends DrawnSprite
class_name Enemy

var shaking

var blood_left
var flying


var my_grav_norm
var my_grav_water
var y_vel_limit









var favor
var sac_count




var DEAD
var BOUNCE
var RECOVER
var bounce_counter
var bomb_id

var y_delta

var s_spikes_blood
var s_alien_boss_hurt

var bubble_timer
var bubble_timer_max
var PAUSE
var HANG
var DROWNED

func step():
	pass

func _init():
	#---XML basic attributes
	sprite
	solid = false
	visible = true
	depth = 0
	persistent = true
	parent = DrawnSprite
	mask

	#---Create script
	hp = 1
	type = "None"

	active = true

	# is this used?
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

	# added so enemies can be carried with same code as items
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

	counts_as_kill = true # sometimes it's not the player's fault!
	burning = 0
	swimming = false
	stun_time = 200
	LEFT = 0
	RIGHT = 1
	facing = 0

	STUNNED = 98
	DEAD = 99
	bomb_id = 0

func enemy_step():
	#/*
	#if ((position.x > view_xview[0]-8 and position.x < view_xview[0]+view_wview[0]+8 and:
		 #position.y > view_yview[0]-8 and position.y < view_yview[0]+view_hview[0]+8))
#
	#*/

	if ((position.x > gml.view('xview')-20 and position.x < gml.view('xview')+gml.view('wview')+4 and
		 position.y > gml.view('yview')-20 and position.y < gml.view('yview')+gml.view('hview')+4)):


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
		
		if (player1.hold_item == 0 or status < 98):
		
			held = false
		

	else: depth = 60

	if (gml.collision_point(position.x+floor(sprite_width/2), position.y+floor(sprite_height/2), "water_swim", -1, -1)):

		if (not swimming):
		
			gml.instance_create(position.x+floor(sprite_width/2), position.y, "splash")
			swimming = true
			Audio.play_sound(global.snd_splash)
		
		my_grav = my_grav_water
		
		if (type == "Fire Frog"):
		
			var obj = gml.instance_create(position.x, position.y, "frog")
			obj.status = status
			gml.instance_destroy(obj)
		

	else:

		swimming = false
		my_grav = my_grav_norm


	if (burning > 0):

		if (randi_range(1,5) == 1): gml.instance_create(position.x+randi_range(0,sprite_width), position.y+randi_range(0,sprite_height), "burn")
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

		var trap = gml.instance_nearest(position.x, position.y, 'spears_left')
		if (trap.image_index >= 20 and trap.image_index < 24):
		
			if (type == "Caveman" or type == "Man_trap" or type == "Yeti" or type == "Hawkman" or type == "Shopkeeper"):
			
				# if (status < 98):
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
					MiscScripts.scr_create_blood(position.x+sprite_width/2, position.y+sprite_height/2, 2)
				
			
			else:
			
				hp -= 2
				counts_as_kill = false
				Audio.play_sound(global.snd_hit)
				MiscScripts.scr_create_blood(position.x+sprite_width/2, position.y+sprite_height/2, 1)
			
		


	if (gml.collision_point(position.x+8, position.y+16, "spikes", 0, 0) and y_vel > 2):

		var spikes = gml.instance_place(position.x+8, position.y+14, 'spikes', self)
		
		if (not bloodless):
		
			spikes.sprite_index = s_spikes_blood 
		
		
		if (hp > 0):
		
			hp = 0
			counts_as_kill = false
			if (not bloodless): MiscScripts.scr_create_blood(position.x+sprite_width/2, position.y+sprite_height/2, 3)
			if (type == "Caveman" or type == "Man_trap" or type == "Yeti" or type == "Hawkman" or type == "Shopkeeper"):
				status = 99
		
		my_grav = 0
		x_vel = 0
		y_vel = 0.2


	# sacrifice
	if (status >= 98):

		if (not held and x_vel == 0 and y_vel == 0):
		
			if (gml.collision_point(position.x+8, position.y+16, "sac_altar_left", 0, 0)):
			
				if (sac_count > 0): sac_count -= 1
				else:
				
					gml.instance_create(position.x+8, position.y+8, "flame")
					Audio.play_sound(global.snd_small_explode)
					MiscScripts.scr_create_blood(position.x+8, position.y+8, 3)
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


	# moving projectile
	if (status == 98):

		if ((abs(x_vel) > 2 or abs(y_vel) > 2)):
		
			var obj = gml.collision_rectangle(position.x, position.y, position.x+16,  position.y+16, "enemy", false, true)
			if (obj):
			
				if (not obj.invincible and obj.type != "Magma Man"):
				
					if (obj.status < 98): obj.x_vel = x_vel

					#with obj
					if (obj.type == "Caveman" or obj.type == "Man_trap" or obj.type == "Vampire" or obj.type == "Yeti" or obj.type == "Hawkman"):
					
						if (obj.status < STUNNED):
						
							if (obj.type == "Caveman" or obj.type == "Vampire" or obj.type == "Yeti" or obj.type == "Hawkman"):
							
								MiscScripts.scr_create_blood(position.x+8, position.y+8, 1)
								
							elif (obj.type == "Man_trap"):
							
								gml.instance_create(position.x+randi_range(0,16), position.y-8+randi_range(0,16), "leaf")
							
							obj.hp -= 1
							obj.status = STUNNED
							obj.counter = stun_time
							obj.y_vel = -6
							Audio.play_sound(global.snd_hit)
						
					
					elif (obj.type == "Shopkeeper"):
					
						if (obj.status < 98):
						
							MiscScripts.scr_create_blood(position.x, position.y, 1)
							obj.hp -= 1
							obj.y_vel = -6
							obj.status = 2
							Audio.play_sound(global.snd_hit)
						
					
					elif (obj.type == "Giant Spider"):
					
						if (obj.whipped == 0):
						
							MiscScripts.scr_create_blood(position.x+16, position.y+24, 1)
							obj.hp -= 1
							obj.whipped = 10
							Audio.play_sound(global.snd_hit)
						
					
					elif (obj.type == "Tomb Lord"):
					
						if (obj.whipped == 0):
						
							MiscScripts.scr_create_blood(position.x+16, position.y+16, 1)
							obj.hp -= 1
							obj.whipped = 20
							Audio.play_sound(global.snd_hit)
						
					
					elif (obj.type == "Alien Boss"):
					
						if (obj.status != 99 and obj.sprite_index != s_alien_boss_hurt):
						
							MiscScripts.scr_create_blood(position.x+8, position.y+8, 1)
							obj.hp -= 1
							obj.sprite_index = s_alien_boss_hurt
							obj.image_speed = 0.8
							Audio.play_sound(global.snd_hit)
						
					
					elif (obj.type == "UFO"):
					
						gml.instance_create(position.x+8, position.y+8, "explosion")
						Audio.play_sound(global.snd_explosion)
						if (randi_range(1,3) == 1): gml.instance_create(position.x+8, position.y+8, "alien_eject")
						global.ufos += 1
						global.kills += 1
						gml.instance_destroy(self)
					
					else:
					
						MiscScripts.scr_create_blood(position.x+8, position.y+8, 1)
						obj.hp -= 1
						obj.orig_x = position.x
						obj.orig_y = position.y
						Audio.play_sound(global.snd_hit)
						
						
					
					# obj.x_vel = x_vel * 0.3
					
					if (type == "Arrow" or type == "Fish Bone"): gml.instance_destroy(self) #--- may have to fix this
				
			
		


	else: active = false
