extends Node

func scr_drop_item(x_vel, y_vel):
	#
	#DY: scr_drop_item(x_vel, y_vel)
	#
	#DY: Drop currently held item.  Must be called by player1.
	#

	#/**********************************************************************************
		#Copyright (c) 2008, 2009 Derek Yu and Mossmouth, LLC
		#
		#This file is part of Spelunky.
#
		#You can redistribute and/or modify Spelunky, including its source code, under
		#the terms of the Spelunky User License.
#
		#Spelunky is distributed in the hope that it will be entertaining and useful,
		#but WITHOUT WARRANTY.  Please see the Spelunky User License for more details.
#
		#The Spelunky User License should be available in "Game Information", which
		#can be found in the Resource Explorer, or as an external file called COPYING.
		#If not, please obtain a new copy of Spelunky from <http://spelunkyworld.com/>
		#
	#***********************************************************************************/
	var player1 = gml.get_instance("player1") #---[FLAG] may have to change this for multiplayer
	
	if (!player1.hold_item): return 0

	player1.hold_item.held = false

	player1.hold_item.x_vel = x_vel
	player1.hold_item.y_vel = y_vel
				
	if (player1.bow_armed):

		CharacterScripts.scr_fire_bow()

			
	if (player1.pickup_item_type != player1.hold_item.type):
			 
		CharacterScripts.scr_hold_item(player1.pickup_item_type)

	else:

		player1.hold_item = null
		player1.pickup_item_type = ""


func scr_fire_bow():
	# DY: 
	# DY:  CharacterScripts.scr_fire_bow()
	# DY: 
	# DY:  Fire the bow.  Must be called by player1.
	# DY: 

	#/**********************************************************************************
		#Copyright (c) 2008, 2009 Derek Yu and Mossmouth, LLC
		#
		#This file is part of Spelunky.
#
		#You can redistribute and/or modify Spelunky, including its source code, under
		#the terms of the Spelunky User License.
#
		#Spelunky is distributed in the hope that it will be entertaining and useful,
		#but WITHOUT WARRANTY.  Please see the Spelunky User License for more details.
#
		#The Spelunky User License should be available in "Game Information", which
		#can be found in the Resource Explorer, or as an external file called COPYING.
		#If not, please obtain a new copy of Spelunky from <http://spelunkyworld.com/>
		#
	#***********************************************************************************/
	var player1 = gml.get_instance("player1") #---[FLAG] may have to change this for multiplayer
	
	if (player1.hold_item):

		if (player1.hold_item.type == "bow"):
			var obj
			if (player1.facing == player1.LEFT):

				if (gml.collision_point(player1.position.x-14, player1.position.y, "solid", 0, 0)): obj = gml.instance_create(player1.position.x, player1.position.y, Objects.arrow)
				else: obj = gml.instance_create(player1.position.x-14, player1.position.y, Objects.arrow)
				obj.x_vel = player1.x_vel - 1 - player1.bow_strength
				if (obj.x_vel >= -1): obj.x_vel = -1
				obj.y_vel = 0
				obj.direction = 180
				obj.safe = true
				obj.alarm_2_countdown.start(10)
				Audio.play_sound(global.snd_arrow_trap)
				player1.firing = 10
			
			elif (player1.facing == player1.RIGHT):
				
				if (gml.collision_point(player1.position.x+14, player1.position.y, "solid", 0, 0)): obj = gml.instance_create(player1.position.x, player1.position.y, Objects.arrow)
				else: obj = gml.instance_create(player1.position.x+14, player1.position.y, Objects.arrow)
				obj.x_vel = player1.x_vel + 1 + player1.bow_strength
				if (obj.x_vel < 1): obj.x_vel = 1
				obj.y_vel = 0
				obj.direction = 0
				obj.safe = true
				obj.alarm_2_countdown.start(10)
				Audio.play_sound(global.snd_arrow_trap)
				player1.firing = 10
			
			if (player1.hold_arrow == player1.ARROW_BOMB):
			
				obj.sprite_index = "bomb_arrow_right"
				obj.alarm_1(player1.bomb_arrow_counter)
				player1.bomb_arrow_counter = 80
			
			
			player1.hold_arrow = 0
			global.arrows -= 1
			
			if (player1.sprite_index == "duck_left" or player1.sprite_index == "damsel_duck_l"):
			
				obj.position.y += 4
			
		
			player1.bow_armed = false
			player1.bow_strength = 0
			if (SS.is_sound_playing(global.snd_bow_pull)): SS.stop_sound(global.snd_bow_pull)


func scr_hold_item(passed_item_type):
	#
	# DY: scr_hold_item(item_type)
	#
	# DY: Set item_type to the currently held item.
	#

	#/**********************************************************************************
		#Copyright (c) 2008, 2009 Derek Yu and Mossmouth, LLC
		#
		#This file is part of Spelunky.
#
		#You can redistribute and/or modify Spelunky, including its source code, under
		#the terms of the Spelunky User License.
#
		#Spelunky is distributed in the hope that it will be entertaining and useful,
		#but WITHOUT WARRANTY.  Please see the Spelunky User License for more details.
#
		#The Spelunky User License should be available in "Game Information", which
		#can be found in the Resource Explorer, or as an external file called COPYING.
		#If not, please obtain a new copy of Spelunky from <http://spelunkyworld.com/>
		#
	#***********************************************************************************/
	var player1 = gml.get_instance("player1") #---[FLAG] may have to change this for multiplayer
	
	var item_type = passed_item_type
	var pickup = true

	if (item_type == ""):

		player1.hold_item = null
		player1.pickup_item_type = ""

	else:

		if (item_type == "rock"): player1.hold_item = gml.instance_create(player1.position.x, player1.position.y, Objects.rock)
		elif (item_type == "jar"): player1.hold_item = gml.instance_create(player1.position.x, player1.position.y, Objects.jar)
		elif (item_type == "skull"): player1.hold_item = gml.instance_create(player1.position.x, player1.position.y, Objects.skull)
		elif (item_type == "fish bone"): player1.hold_item = gml.instance_create(player1.position.x, player1.position.y, Objects.fish_bone)
		elif (item_type == "arrow"): player1.hold_item = gml.instance_create(player1.position.x, player1.position.y, Objects.arrow)
		elif (item_type == "rock"): player1.hold_item = gml.instance_create(player1.position.x, player1.position.y, Objects.rock)
		elif (item_type == "machete"): player1.hold_item = gml.instance_create(player1.position.x, player1.position.y, Objects.machete)
		elif (item_type == "mattock"): player1.hold_item = gml.instance_create(player1.position.x, player1.position.y, Objects.mattock)
		elif (item_type == "mattock head"): player1.hold_item = gml.instance_create(player1.position.x, player1.position.y, Objects.mattock_head)
		elif (item_type == "pistol"): player1.hold_item = gml.instance_create(player1.position.x, player1.position.y, Objects.pistol)
		elif (item_type == "web cannon"): player1.hold_item = gml.instance_create(player1.position.x, player1.position.y, Objects.web_cannon)
		elif (item_type == "teleporter"): player1.hold_item = gml.instance_create(player1.position.x, player1.position.y, Objects.teleporter)
		elif (item_type == "shotgun"): player1.hold_item = gml.instance_create(player1.position.x, player1.position.y, Objects.shotgun)
		elif (item_type == "bow"): player1.hold_item = gml.instance_create(player1.position.x, player1.position.y, Objects.bow)
		elif (item_type == "flare"): player1.hold_item = gml.instance_create(player1.position.x, player1.position.y, Objects.flare)
		elif (item_type == "sceptre"): player1.hold_item = gml.instance_create(player1.position.x, player1.position.y, Objects.sceptre)
		elif (item_type == "key"): player1.hold_item = gml.instance_create(player1.position.x, player1.position.y, Objects.key)
		else: pickup = false
		if (pickup):
		
			player1.hold_item.held = true
			player1.hold_item.cost = 0
			player1.hold_item.new = false
			player1.pickup_item_type = item_type
			player1.whoa_timer = player1.whoa_timer_max
		
		else:
		
			player1.hold_item = null
			player1.pickup_item_type = ""


func scr_player_is_ducking(node):
	# DY: 
	# DY:  scr_player_is_ducking()
	# DY: 
	# DY:  Is the player ducking or what?!
	# DY: 

	#/**********************************************************************************
		#Copyright (c) 2008, 2009 Derek Yu and Mossmouth, LLC
		#
		#This file is part of Spelunky.
#
		#You can redistribute and/or modify Spelunky, including its source code, under
		#the terms of the Spelunky User License.
#
		#Spelunky is distributed in the hope that it will be entertaining and useful,
		#but WITHOUT WARRANTY.  Please see the Spelunky User License for more details.
#
		#The Spelunky User License should be available in "Game Information", which
		#can be found in the Resource Explorer, or as an external file called COPYING.
		#If not, please obtain a new copy of Spelunky from <http:#//spelunkyworld.com/>
		#
	#***********************************************************************************/

	if (node.sprite_index == "duck_left" or
		node.sprite_index == "crawl_left" or
		node.sprite_index == "damsel_duck_l" or
		node.sprite_index == "damsel_crawl_l" or
		node.sprite_index == "tunnel_duck_l" or
		node.sprite_index == "tunnel_crawl_l"):

		return true

	else: return false

#--- scr_use_item() is in player1 script

func scr_steal_item(x_vel, y_vel, node):
	# DY: 
	# DY:  CharacterScripts.scr_steal_item(x_vel, y_vel)
	# DY: 
	# DY:  The result of buying or stealing an item.  Must be called by player1.
	# DY: 

	#/**********************************************************************************
		#Copyright (c) 2008, 2009 Derek Yu and Mossmouth, LLC
		#
		#This file is part of Spelunky.
#
		#You can redistribute and/or modify Spelunky, including its source code, under
		#the terms of the Spelunky User License.
#
		#Spelunky is distributed in the hope that it will be entertaining and useful,
		#but WITHOUT WARRANTY.  Please see the Spelunky User License for more details.
#
		#The Spelunky User License should be available in "Game Information", which
		#can be found in the Resource Explorer, or as an external file called COPYING.
		#If not, please obtain a new copy of Spelunky from <http://spelunkyworld.com/>
		#
	#***********************************************************************************/
	var disp
	if (node.hold_item.type == "udjat eye"):

		global.has_udjat_eye = true
		disp = gml.instance_create(node.hold_item.position.x, node.hold_item.position.y-14, Objects.items_get)
		gml.instance_destroy(node.hold_item) 
		Audio.play_sound(global.snd_pickup)
		node.hold_item = null
		global.message = "YOU GOT THE UDJAT EYE!"
		global.message2 = "YOU FEEL AWAKENED."
		global.message_timer = 120

	elif (node.hold_item.type == "ankh"):

		global.has_ankh = true
		disp = gml.instance_create(node.hold_item.position.x, node.hold_item.position.y-14, Objects.items_get)
		gml.instance_destroy(node.hold_item) 
		Audio.play_sound(global.snd_pickup)
		node.hold_item = null
		global.message = "YOU GOT THE ANKH!"
		global.message2 = "YOU FEEL PROTECTED."
		global.message_timer = 120

	elif (node.hold_item.type == "crown"):

		global.has_crown = true
		disp = gml.instance_create(node.hold_item.position.x, node.hold_item.position.y-14, Objects.items_get)
		gml.instance_destroy(node.hold_item) 
		Audio.play_sound(global.snd_pickup)
		node.hold_item = null
		global.message = "YOU GOT THE HEDJET!"
		global.message2 = "IT GLOWS A BRILLIANT WHITE."
		global.message_timer = 120

	elif (node.hold_item.type == "kapala"):

		global.has_kapala = true
		disp = gml.instance_create(node.hold_item.position.x, node.hold_item.position.y-14, Objects.items_get)
		gml.instance_destroy(node.hold_item) 
		Audio.play_sound(global.snd_pickup)
		node.hold_item = null
		global.message = "YOU GOT THE KAPALA!"
		global.message2 = "IT THIRSTS FOR BLOOD..."
		global.message_timer = 120

	elif (node.hold_item.type == "bomb bag"):

		global.bombs += 3
		disp = gml.instance_create(node.hold_item.position.x, node.hold_item.position.y-14, Objects.items_get)
		disp.sprite_index = "bombs_get"
		gml.instance_destroy(node.hold_item) 
		Audio.play_sound(global.snd_pickup)
		node.hold_item = null
		global.message = "YOU GOT 3 MORE BOMBS!"
		global.message2 = ""
		global.message_timer = 120

	elif (node.hold_item.type == "bomb box"):

		global.bombs += 12
		disp = gml.instance_create(node.hold_item.position.x, node.hold_item.position.y-14, Objects.items_get)
		disp.sprite_index = "bombs_get"
		gml.instance_destroy(node.hold_item) 
		Audio.play_sound(global.snd_pickup)
		node.hold_item = null
		global.message = "YOU GOT 12 MORE BOMBS!"
		global.message2 = ""
		global.message_timer = 120

	elif (node.hold_item.type == "paste"):

		global.has_sticky_bombs = true
		disp = gml.instance_create(node.hold_item.position.x, node.hold_item.position.y-14, Objects.items_get)
		gml.instance_destroy(node.hold_item) 
		Audio.play_sound(global.snd_pickup)
		node.hold_item = null
		global.message = "YOU GOT STICKY BOMBS!"
		global.message2 = ""
		global.message_timer = 120

	elif (node.hold_item.type == "rope pile"):

		global.rope += 3
		disp = gml.instance_create(node.hold_item.position.x, node.hold_item.position.y-15, Objects.items_get)
		disp.sprite_index = "rope_get"
		gml.instance_destroy(node.hold_item) 
		Audio.play_sound(global.snd_pickup)
		node.hold_item = null
		global.message = "YOU GOT 3 MORE ROPES!"
		global.message2 = ""
		global.message_timer = 120

	elif (node.hold_item.type == "parachute"):

		global.has_parachute = true
		disp = gml.instance_create(node.hold_item.position.x, node.hold_item.position.y-14, Objects.items_get)
		gml.instance_destroy(node.hold_item) 
		Audio.play_sound(global.snd_pickup)
		node.hold_item = null
		global.message = "YOU GOT A PARACHUTE!"
		global.message2 = "IT WILL DEPLOY AUTOMATICALLY."
		global.message_timer = 120

	elif (node.hold_item.type == "spectacles"):

		global.has_spectacles = true
		disp = gml.instance_create(node.hold_item.position.x, node.hold_item.position.y-14, Objects.items_get)
		gml.instance_destroy(node.hold_item) 
		Audio.play_sound(global.snd_pickup)
		node.hold_item = null
		global.message = "YOU GOT SPECTACLES!"
		global.message2 = "YOUR EYESIGHT SEEMS IMPROVED..."
		global.message_timer = 120

	elif (node.hold_item.type == "gloves"):

		global.has_gloves = true
		disp = gml.instance_create(node.hold_item.position.x, node.hold_item.position.y-14, Objects.items_get)
		gml.instance_destroy(node.hold_item) 
		Audio.play_sound(global.snd_pickup)
		node.hold_item = null
		global.message = "YOU GOT CLIMBING GLOVES!"
		if (node.pickup_item_type == "Web Cannon"): global.message2 = "YOUR SPIDER SENSE TINGLES!" #--- changed player1 to node as that is the only object calling this
		else: global.message2 = ""
		global.message_timer = 120

	elif (node.hold_item.type == "mitt"):

		global.has_mitt = true
		disp = gml.instance_create(node.hold_item.position.x, node.hold_item.position.y-14, Objects.items_get)
		gml.instance_destroy(node.hold_item) 
		Audio.play_sound(global.snd_pickup)
		node.hold_item = null
		global.message = "YOU GOT A PITCHER'S MITT!"
		global.message2 = ""
		global.message_timer = 120

	elif (node.hold_item.type == "compass"):

		global.has_compass = true
		disp = gml.instance_create(node.hold_item.position.x, node.hold_item.position.y-14, Objects.items_get)
		gml.instance_destroy(node.hold_item) 
		Audio.play_sound(global.snd_pickup)
		node.hold_item = null
		global.message = "YOU GOT A COMPASS!"
		global.message2 = ""
		global.message_timer = 120

	elif (node.hold_item.type == "spring shoes"):

		global.has_spring_shoes = true
		disp = gml.instance_create(node.hold_item.position.x, node.hold_item.position.y-14, Objects.items_get)
		gml.instance_destroy(node.hold_item) 
		Audio.play_sound(global.snd_pickup)
		node.hold_item = null
		global.message = "YOU GOT SPRING SHOES!"
		global.message2 = "YOU FEEL BOUNCY."
		global.message_timer = 120

	elif (node.hold_item.type == "spike shoes"):

		global.has_spike_shoes = true
		disp = gml.instance_create(node.hold_item.position.x, node.hold_item.position.y-14, Objects.items_get)
		gml.instance_destroy(node.hold_item) 
		Audio.play_sound(global.snd_pickup)
		node.hold_item = null
		global.message = "YOU GOT SPIKE SHOES!"
		global.message2 = ""
		global.message_timer = 120

	elif (node.hold_item.type == "jordans"):

		global.has_jordans = true
		disp = gml.instance_create(node.hold_item.position.x, node.hold_item.position.y-14, Objects.items_get)
		gml.instance_destroy(node.hold_item) 
		Audio.play_sound(global.snd_pickup)
		node.hold_item = null
		global.message = "YOU GOT JORDANS!"
		global.message2 = "YOU FEEL LIGHT ON YOUR FEET."
		global.message_timer = 120

	elif (node.hold_item.type == "cape"):

		global.has_cape = true
		disp = gml.instance_create(node.hold_item.position.x, node.hold_item.position.y-14, Objects.items_get)
		gml.instance_destroy(node.hold_item) 
		Audio.play_sound(global.snd_pickup)
		node.hold_item = null
		global.message = "YOU GOT A CAPE!"
		global.message2 = ""
		global.message_timer = 120
		if (global.has_jetpack):
		
			var obj = gml.instance_create(node.position.x, node.position.y, Objects.jetpack)
			obj.cost = 0
			obj.for_sale = false
			obj.y_vel = -1
			global.has_jetpack = false
		

	elif (node.hold_item.type == "jetpack"):

		global.has_jetpack = true
		disp = gml.instance_create(node.hold_item.position.x, node.hold_item.position.y-14, Objects.items_get)
		gml.instance_destroy(node.hold_item) 
		Audio.play_sound(global.snd_pickup)
		node.hold_item = null
		global.message = "YOU GOT A JETPACK!"
		global.message2 = ""
		global.message_timer = 120
		if (global.has_cape):
		
			var obj = gml.instance_create(node.position.x, node.position.y, Objects.cape_pickup)
			obj.cost = 0
			obj.for_sale = false
			obj.y_vel = -1
			global.has_cape = false
			var cape = gml.get_instance("cape") #---[FLAG] may have to change this for multiplayer
			gml.instance_destroy(cape) 
		

	elif (node.hold_item.type == "machete" and node.hold_item.cost > 0):

		node.hold_item.cost = 0
		node.hold_item.for_sale = false
		# DY: disp = gml.instance_create(node.hold_item.position.x, node.hold_item.position.y-14, Objects.items_get)
		Audio.play_sound(global.snd_pickup)
		global.message = "YOU GOT A MACHETE!"
		global.message2 = ""
		global.message_timer = 120

	elif (node.hold_item.type == "mattock" and node.hold_item.cost > 0):

		node.hold_item.cost = 0
		node.hold_item.for_sale = false
		# DY: disp = gml.instance_create(node.hold_item.position.x, node.hold_item.position.y-14, Objects.items_get)
		Audio.play_sound(global.snd_pickup)
		global.message = "YOU GOT A MATTOCK!"
		global.message2 = "IT SEEMS A BIT RUSTY."
		global.message_timer = 120

	elif (node.hold_item.type == "pistol" and node.hold_item.cost > 0):

		node.hold_item.cost = 0
		node.hold_item.for_sale = false
		# DY: disp = gml.instance_create(node.hold_item.position.x, node.hold_item.position.y-14, Objects.items_get)
		Audio.play_sound(global.snd_pickup)
		global.message = "YOU GOT A PISTOL!"
		global.message2 = ""
		global.message_timer = 120

	elif (node.hold_item.type == "web cannon" and node.hold_item.cost > 0):

		node.hold_item.cost = 0
		node.hold_item.for_sale = false
		# DY: disp = gml.instance_create(node.hold_item.position.x, node.hold_item.position.y-14, Objects.items_get)
		Audio.play_sound(global.snd_pickup)
		global.message = "YOU GOT A WEB CANNON!"
		global.message2 = ""
		global.message_timer = 120

	elif (node.hold_item.type == "teleporter" and node.hold_item.cost > 0):

		node.hold_item.cost = 0
		node.hold_item.for_sale = false
		# DY: disp = gml.instance_create(node.hold_item.position.x, node.hold_item.position.y-14, Objects.items_get)
		Audio.play_sound(global.snd_pickup)
		global.message = "YOU GOT A TELEPORTER!"
		global.message2 = ""
		global.message_timer = 120

	elif (node.hold_item.type == "shotgun" and node.hold_item.cost > 0):

		node.hold_item.cost = 0
		node.hold_item.for_sale = false
		# DY: disp = gml.instance_create(node.hold_item.position.x, node.hold_item.position.y-14, Objects.items_get)
		Audio.play_sound(global.snd_pickup)
		global.message = "YOU GOT A SHOTGUN!"
		global.message2 = ""
		global.message_timer = 120

	elif (node.hold_item.type == "bow" and node.hold_item.cost > 0):

		node.hold_item.cost = 0
		node.hold_item.for_sale = false
		# DY: disp = gml.instance_create(node.hold_item.position.x, node.hold_item.position.y-14, Objects.items_get)
		Audio.play_sound(global.snd_pickup)
		global.message = "YOU GOT THE BOW AND ARROWS!"
		global.message2 = ""
		global.message_timer = 120
		# DY: global.arrows += 8

	elif (node.hold_item.type == "damsel" and node.hold_item.cost > 0):

		global.damsels_bought += 1
		node.hold_item.cost = 0
		node.hold_item.for_sale = false
		# DY: disp = gml.instance_create(node.hold_item.position.x, node.hold_item.position.y-14, Objects.items_get)
		Audio.play_sound(global.snd_pickup)
		global.message = "YOU MUST BE IN LOVE!"
		global.message2 = ""
		global.message_timer = 120
