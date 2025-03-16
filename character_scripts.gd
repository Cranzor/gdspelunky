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
	pass
	
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
	
func scr_steal_item():
	pass
	
func scr_use_item():
	pass
