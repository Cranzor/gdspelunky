extends Node

@onready var in_level = InLevel.new()
	
static func scr_get_room_x(x):
#
# DY: scr_get_room_x(x)
#
# DY: Returns the horizontal room number of a room given the x-coord.
#
	var tx = x

	if (tx < 160+16): return 0
	elif (tx >= 160+16 and tx < 320+16): return 1
	elif (tx >= 320+16 and tx < 480+16): return 2
	elif (tx >= 480+16): return 3

	return -1

static func scr_get_room_y(y):
#
# DY: scr_get_room_y(y)
#
# DY: Returns the vertical room number of a room given the y-coord.
#

	var ty = y

	if (ty < 128+16): return 0
	elif (ty >= 128+16 and ty < 256+16): return 1
	elif (ty >= 256+16 and ty < 384+16): return 2
	elif (ty >= 384+16 and ty < 512+16): return 3
	elif (ty >= 512+16): return 4

	return -1

func scr_generate_item(x, y, set_type):
# DY: scr_generate_item(x, y, set_type)
#
# DY: Generate an item at (x,y).

	var obj
	
	if (set_type == 0): # DY: Crate Set

		if (gml.rand(1,500) == 1): obj = gml.instance_create(x, y, Objects.jetpack)
		elif (gml.rand(1,200) == 1): obj = gml.instance_create(x, y, Objects.cape_pickup)
		elif (gml.rand(1,100) == 1): obj = gml.instance_create(x, y, Objects.shotgun)
		elif (gml.rand(1,100) == 1): obj = gml.instance_create(x, y, Objects.mattock)
		elif (gml.rand(1,100) == 1): obj = gml.instance_create(x, y, Objects.teleporter)
		elif (gml.rand(1,90) == 1): obj = gml.instance_create(x, y, Objects.gloves)
		elif (gml.rand(1,90) == 1): obj = gml.instance_create(x, y, Objects.spectacles)
		elif (gml.rand(1,80) == 1): obj = gml.instance_create(x, y, Objects.web_cannon)
		elif (gml.rand(1,80) == 1): obj = gml.instance_create(x, y, Objects.pistol)
		elif (gml.rand(1,80) == 1): obj = gml.instance_create(x, y, Objects.mitt)
		elif (gml.rand(1,60) == 1): obj = gml.instance_create(x, y, Objects.paste)
		elif (gml.rand(1,60) == 1): obj = gml.instance_create(x, y, Objects.spring_shoes)
		elif (gml.rand(1,60) == 1): obj = gml.instance_create(x, y, Objects.spike_shoes)
		elif (gml.rand(1,60) == 1): obj = gml.instance_create(x, y, Objects.machete)
		elif (gml.rand(1,40) == 1): obj = gml.instance_create(x, y, Objects.bomb_box)
		elif (gml.rand(1,40) == 1): obj = gml.instance_create(x, y, Objects.bow)
		elif (gml.rand(1,20) == 1): obj = gml.instance_create(x, y, Objects.compass)
		elif (gml.rand(1,10) == 1): obj = gml.instance_create(x, y, Objects.para_pickup)
		else: obj = gml.instance_create(x, y, Objects.rope_pile)
		obj.cost = 0
		obj.for_sale = false

	elif (set_type == 1): # DY: High End Set

		if (gml.rand(1,40) == 1): obj = gml.instance_create(x, y, Objects.jetpack)
		elif (gml.rand(1,25) == 1): obj = gml.instance_create(x, y, Objects.cape_pickup)
		elif (gml.rand(1,20) == 1): obj = gml.instance_create(x, y, Objects.shotgun)
		elif (gml.rand(1,10) == 1): obj = gml.instance_create(x, y, Objects.gloves)
		elif (gml.rand(1,10) == 1): obj = gml.instance_create(x, y, Objects.teleporter)
		elif (gml.rand(1,8) == 1): obj = gml.instance_create(x, y, Objects.mattock)
		elif (gml.rand(1,8) == 1): obj = gml.instance_create(x, y, Objects.paste)
		elif (gml.rand(1,8) == 1): obj = gml.instance_create(x, y, Objects.spring_shoes)
		elif (gml.rand(1,8) == 1): obj = gml.instance_create(x, y, Objects.spike_shoes)
		elif (gml.rand(1,8) == 1): obj = gml.instance_create(x, y, Objects.compass)
		elif (gml.rand(1,8) == 1): obj = gml.instance_create(x, y, Objects.pistol)
		elif (gml.rand(1,8) == 1): obj = gml.instance_create(x, y, Objects.machete)
		else: obj = gml.instance_create(x, y, Objects.bomb_box)

	elif (set_type == 2): # DY: Underground Set

		match gml.rand(0,18):
	
			0:  obj = gml.instance_create(x, y-2, Objects.jetpack)
			1:  obj = gml.instance_create(x, y, Objects.cape_pickup)
			2:  obj = gml.instance_create(x, y, Objects.shotgun)
			3:  obj = gml.instance_create(x, y, Objects.mattock)
			4:  obj = gml.instance_create(x, y+3, Objects.teleporter)
			5:  obj = gml.instance_create(x, y-1, Objects.gloves)
			6:  obj = gml.instance_create(x, y, Objects.spectacles)
			7:  obj = gml.instance_create(x-2, y, Objects.web_cannon)
			8:  obj = gml.instance_create(x, y, Objects.pistol)
			9:  obj = gml.instance_create(x, y-1, Objects.mitt)
			10:  obj = gml.instance_create(x, y, Objects.paste)
			11:  obj = gml.instance_create(x, y, Objects.spring_shoes)
			12:  obj = gml.instance_create(x, y, Objects.spike_shoes)
			13:  obj = gml.instance_create(x, y, Objects.machete)
			14:  obj = gml.instance_create(x, y-2, Objects.bomb_box)
			15:  obj = gml.instance_create(x, y, Objects.bow)
			16:  obj = gml.instance_create(x, y, Objects.compass)
			17:  obj = gml.instance_create(x, y, Objects.para_pickup)
			18:  obj = gml.instance_create(x, y, Objects.rope_pile)
	
		obj.cost = 0
		obj.for_sale = false

func scr_shop_items_gen(xpos, ypos, shop_type): #--- original doesn't have these arguments but seems necessary
# DY: 
# DY:  scr_shop_items_gen()
# DY: 
# DY:  Generate shop items.  Must be called from scr_room_gen_x().
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
	var obj
	var m
	var n
	
	if (shop_type == "bomb"):

		while (true):
		
			if (gml.rand(1,5) == 1):
			
				if (not gml.instance_exists("paste")):
					obj = gml.instance_create(xpos+8, ypos+10, Objects.paste)
					break
			
			elif (gml.rand(1,4) == 1):
				obj = gml.instance_create(xpos+8, ypos+8, Objects.bomb_box)
				break
			else:
				obj = gml.instance_create(xpos+8, ypos+10, Objects.bomb_bag)
				break
		

	elif (shop_type == "weapon"):

		m = 20
		while (true):
		
			n = gml.rand(1,4)
			if (m <= 0):
				obj = gml.instance_create(xpos+8, ypos+10, Objects.bomb_bag)
				break
			elif (gml.rand(1,12)==1):
			
				if (not gml.instance_exists("web_cannon")):
					obj = gml.instance_create(xpos+8, ypos+12, Objects.web_cannon)
					break
			
			elif (gml.rand(1,10)==1):
			
				if (not gml.instance_exists("shotgun")):
					obj = gml.instance_create(xpos+8, ypos+12, Objects.shotgun)
					break
			
			elif (gml.rand(1,6)==1):
				obj = gml.instance_create(xpos+8, ypos+10, Objects.bomb_box)
				break
			elif (n == 1):
			
				if (not gml.instance_exists("pistol")):
					obj = gml.instance_create(xpos+8, ypos+12, Objects.pistol)
					break
			
			elif (n == 2):
			
				if (not gml.instance_exists("machete")):
					obj = gml.instance_create(xpos+8, ypos+12, Objects.machete)
					break
			
			elif (n == 3):
				obj = gml.instance_create(xpos+8, ypos+10, Objects.bomb_bag)
				break
			elif (n == 4):
			
				if (not gml.instance_exists("bow")):
					obj = gml.instance_create(xpos+8, ypos+12, Objects.bow)
					break
			
			m -= 1
		

	elif (shop_type == "clothing"):

		m = 20
		while (true):
		
			n = gml.rand(1,6)
			if (gml.rand(1,m) == 1):
				obj = gml.instance_create(xpos+8, ypos+11, Objects.rope_pile)
				break
			elif (n == 1):
			
				if (not gml.instance_exists("spring_shoes")):
					obj = gml.instance_create(xpos+8, ypos+10, Objects.spring_shoes)
					break
			
			elif (n == 2):
			
				if (not gml.instance_exists("spectacles")):
					obj = gml.instance_create(xpos+8, ypos+10, Objects.spectacles)
					break
			
			elif (n == 3):
			
				if (not gml.instance_exists("gloves")):
					obj = gml.instance_create(xpos+8, ypos+8, Objects.gloves)
					break
			
			elif (n == 4):
			
				if (not gml.instance_exists("mitt")):
					obj = gml.instance_create(xpos+8, ypos+8, Objects.mitt)
					break
			
			elif (n == 5):
			
				if (not gml.instance_exists("cape_pickup")):
					obj = gml.instance_create(xpos+8, ypos+10, Objects.cape_pickup)
					break
			
			elif (n == 6):
			
				if (not gml.instance_exists("spike_shoes")):
					obj = gml.instance_create(xpos+8, ypos+10, Objects.spike_shoes)
					break
			
			m -= 1
		

	elif (shop_type == "rare"):

		m = 20
		while (true):
		
			n = gml.rand(1,11)
			if (gml.rand(1,m) == 1):
				obj = gml.instance_create(xpos+8, ypos+8, Objects.bomb_box)
				break
			elif (n == 1):
			
				if (not gml.instance_exists("spring_shoes")):
					obj = gml.instance_create(xpos+8, ypos+10, Objects.spring_shoes)
					break
			
			elif (n == 2):
			
				if (not gml.instance_exists("compass")):
					obj = gml.instance_create(xpos+8, ypos+10, Objects.compass)
					break
			
			elif (n == 3):
			
				if (not gml.instance_exists("mattock")):
					obj = gml.instance_create(xpos+8, ypos+10, Objects.mattock)
					break
			
			elif (n == 4):
			
				if (not gml.instance_exists("spectacles")):
					obj = gml.instance_create(xpos+8, ypos+10, Objects.spectacles)
					break
			
			elif (n == 5):
			
				if (not gml.instance_exists("jetpack")):
					obj = gml.instance_create(xpos+8, ypos+8, Objects.jetpack)
					break
			
			elif (n == 6):
			
				if (not gml.instance_exists("gloves")):
					obj = gml.instance_create(xpos+8, ypos+8, Objects.gloves)
					break
			
			elif (n == 7):
			
				if (not gml.instance_exists("mitt")):
					obj = gml.instance_create(xpos+8, ypos+8, Objects.mitt)
					break
			
			elif (n == 8):
			
				if (not gml.instance_exists("web_cannon")):
					obj = gml.instance_create(xpos+8, ypos+12, Objects.web_cannon)
					break
			
			elif (n == 9):
			
				if (not gml.instance_exists("cape_pickup")):
					obj = gml.instance_create(xpos+8, ypos+10, Objects.cape_pickup)
					break
			
			elif (n == 10):
			
				if (not gml.instance_exists("teleporter")):
					obj = gml.instance_create(xpos+8, ypos+12, Objects.teleporter)
					break
			
			elif (n == 11):
			
				if (not gml.instance_exists("spike_shoes")):
					obj = gml.instance_create(xpos+8, ypos+10, Objects.spike_shoes)
					break
			
			m -= 1
		

	else:

		while (true):
		
			n = gml.rand(1,3)
			if (gml.rand(1,20) == 1):
			
				if (not gml.instance_exists("mattock")):
					obj = gml.instance_create(xpos+8, ypos+10, Objects.mattock)
					break
			
			elif (gml.rand(1,10) == 1):
			
				if (not gml.instance_exists("gloves")):
					obj = gml.instance_create(xpos+8, ypos+8, Objects.gloves)
					break
			
			elif (gml.rand(1,10) == 1):
			
				if (not gml.instance_exists("compass")):
					obj = gml.instance_create(xpos+8, ypos+10, Objects.compass)
					break
			
			elif (n == 1):
				obj = gml.instance_create(xpos+8, ypos+10, Objects.bomb_bag)
				break
			elif (n == 2):
				obj = gml.instance_create(xpos+8, ypos+11, Objects.rope_pile)
				break
			elif (n == 3):
				obj = gml.instance_create(xpos+8, ypos+10, Objects.para_pickup)
				break
		


	if (obj):

		obj.for_sale = true
		if (global.curr_level > 2):
		
			#with obj --- there will only be one obj so will set directly
			
			obj.cost += (obj.cost/100)*10*(global.curr_level-2)
			if (obj.shop_desc == ""): obj.buy_message = "A " + gml.string_upper(obj.type) + " FOR $" + str(obj.cost) + "." #---[FLAG] should change string_upper part to also account for this variable being in snake_case now
			else: obj.buy_message = obj.shop_desc + " FOR $" + str(obj.cost) + "."


func scr_get_name():
# DY: 
# DY:  scr_get_name()
# DY: 
# DY:  Return a random name (for shopkeeper).
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

	match gml.rand(1,32):

		1:  return "AHKMED"
		2:  return "TERRY"
		3:  return "SMITHY"
		4:  return "LEON"
		5:  return "ALI"
		6:  return "ELBERT"
		7:  return "KAO"
		8:  return "DUKE"
		9:  return "TONY"
		10:  return "GUERT"
		11:  return "PANCHO"
		12:  return "EARL"
		13:  return "IVAN"
		14:  return "OLLIE"
		15:  return "SPOONY"
		16:  return "BOB"
		17:  return "RUDY"
		18:  return "JIMBO"
		19:  return "TOR"
		20:  return "WILLY"
		21:  return "HAMISH"
		22:  return "LAZLO"
		23:  return "WANG"
		24:  return "HERBIE"
		25:  return "ANDY"
		26:  return "DONG"
		27:  return "LEMMY"
		28:  return "BARNEY"
		29:  return "LOU"
		30:  return "TARN"
		31:  return "SLASH"
		32:  return "BROM"

	return "AHKMED"


func scr_treasure_gen(bones_chance, instance): #--- will pass in x and y as well since there is no position for this to have an x and y
# DY: 
# DY:  scr_treasure_gen(bones_chance)
# DY: 
# DY:  Generates crates, chests, gold, gems, and bones.
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

	# DY:  argument0: bones

	# DY:  alcove
	
	var x = instance.position.x
	var y = instance.position.y
	
	var n
	
	var entrance = gml.get_instance("entrance")
	var exit = gml.get_instance("exit")
	var gold_idol = gml.get_instance("gold_idol")
	var giant_spider = gml.get_instance("giant_spider") #---[FLAG] does this work if giant spider doesn't exist?
	
	if (gml.distance_to_object(entrance, instance) < 32): return 0
	if (gml.distance_to_object(exit, instance) < 32): return 0
	if (gml.distance_to_object(gold_idol, instance) < 64): return 0

	var col_stuff = true
	if (not gml.collision_point(x, y-16, "solid", 0, 0) and
		not gml.collision_point(x, y-1, "treasure", 0, 0) and
		not gml.collision_point(x, y-8, "chest", 0, 0) and
		not gml.collision_point(x, y-8, "spikes", 0, 0) and
		not gml.collision_point(x, y-8, "entrance", 0, 0) and
		not gml.collision_point(x, y-8, "exit", 0, 0)):

		col_stuff = false


	if (not col_stuff):

		if (gml.rand(1,100) == 1):
			gml.instance_create(x+8, y-4, Objects.rock)
			return 0
		elif (gml.rand(1,40) == 1):
			gml.instance_create(x+8, y-6, Objects.jar)
			return 0

	# DY:  alcove
	if (not col_stuff and
		gml.collision_point(x, y-32, "solid", 0, 0) and
		(gml.collision_point(x-16, y-16, "solid", 0, 0) or gml.collision_point(x+16, y-16, "solid", 0, 0) or gml.collision_point(x-16, y-16, "block", 0, 0) or gml.collision_point(x+16, y-16, "block", 0, 0))):
		
		var obj
		var game = gml.get_instance("game")
		
		n = 60
		if (gml.distance_to_object(giant_spider, instance) < 100): n = 5 #---[FLAG] original code is distance_to_object(oGiantSpider < 100). this might return an unexpected value in the original as it seems to be an incorrect construction
		
		if (global.level_type != 2 and gml.rand(1,n) == 1): gml.instance_create(x, y-16, Objects.web)
		elif (global.gen_udjat_eye and not global.locked_chest):
		
			if (gml.rand(1,global.locked_chest_chance) == 1):
			
				gml.instance_create(x+8, y-8, Objects.locked_chest)
				global.locked_chest = true
			
			else: global.locked_chest_chance -= 1
		
		elif (gml.rand(1,10) == 1):
		
			gml.instance_create(x+8, y-8, Objects.crate)
		
		elif (gml.rand(1,15) == 1):
		
			gml.instance_create(x+8, y-8, Objects.chest)
		
		elif (not game.damsel and gml.rand(1,8) == 1 and not gml.collision_point(x+8, y-8, "water", 0, 0)):
		
			obj = gml.instance_create(x+8, y-8, Objects.damsel)
			obj.cost = 0
			obj.for_sale = false
			game.damsel = true
		
		elif (gml.rand(1,40-2*global.curr_level) <= 1 + bones_chance):
		
			if (gml.rand(1,8) == 1): gml.instance_create(x, y-16, Objects.fake_bones)
			else:
			
				gml.instance_create(x, y-16, Objects.bones)
				gml.instance_create(x+12, y-4, Objects.skull)
			
		
		elif (gml.rand(1,3) == 1): gml.instance_create(x+8, y-4, Objects.gold_bar)
		elif (gml.rand(1,6) == 1): gml.instance_create(x+8, y-8, Objects.gold_bars)
		elif (gml.rand(1,6) == 1): gml.instance_create(x+8, y-4, Objects.emerald_big)
		elif (gml.rand(1,8) == 1): gml.instance_create(x+8, y-4, Objects.sapphire_big)
		elif (gml.rand(1,10) == 1): gml.instance_create(x+8, y-4, Objects.ruby_big)
	 # DY:  tunnel
	elif (not col_stuff and
		(gml.collision_point(x-16, y-16, "solid", 0, 0) and gml.collision_point(x+16, y-16, "solid", 0, 0))):

		n = 60
		if (gml.distance_to_object(giant_spider, instance) < 100): n = 10 #---[FLAG] original code is distance_to_object(oGiantSpider < 100). this might return an unexpected value in the original as it seems to be an incorrect construction
		if (global.level_type != 2 and gml.rand(1,n) == 1): gml.instance_create(x, y-16, Objects.web)
		elif (gml.rand(1,4) == 1): gml.instance_create(x+8, y-4, Objects.gold_bar)
		elif (gml.rand(1,8) == 1): gml.instance_create(x+8, y-8, Objects.gold_bars)
		elif (gml.rand(1,80-global.curr_level) <= 1 + bones_chance):
		
			if (gml.rand(1,8) == 1): gml.instance_create(x, y-16, Objects.fake_bones)
			else:
			
				gml.instance_create(x, y-16, Objects.bones)
				gml.instance_create(x+12, y-4, Objects.skull)
			
		
		elif (gml.rand(1,8) == 1): gml.instance_create(x+8, y-4, Objects.emerald_big)
		elif (gml.rand(1,9) == 1): gml.instance_create(x+8, y-4, Objects.sapphire_big)
		elif (gml.rand(1,10) == 1): gml.instance_create(x+8, y-4, Objects.ruby_big)
	 # DY:  normal
	elif (not gml.collision_point(x, y-16, "solid", 0, 0) and
		not gml.collision_point(x, y-8, "chest", 0, 0) and
		not gml.collision_point(x, y-8, "spikes", 0, 0) and
		not gml.collision_point(x, y-8, "entrance", 0, 0) and
		not gml.collision_point(x, y-8, "exit", 0, 0)):

		if (gml.rand(1,40) == 1): gml.instance_create(x+8, y-4, Objects.gold_bar)
		elif (gml.rand(1,50) == 1): gml.instance_create(x+8, y-8, Objects.gold_bars)
		elif (gml.rand(1,140-2*global.curr_level) <= 1 + bones_chance):
		
			if (gml.rand(1,8) == 1): gml.instance_create(x, y-16, Objects.fake_bones)
			else:
			
				gml.instance_create(x, y-16, Objects.bones)
				gml.instance_create(x+12, y-4, Objects.skull)


func scr_level_gen():

	# DY: 
	# DY:  scr_level_gen()
	# DY: 
	# DY:  Sets the "room path" that Spelunky uses to determine the no-bombs/no-rope (in theory)
	# DY:  route to the exit.
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

	global.start_room_x = gml.rand(0,3)
	global.start_room_y = 0
	var room_x = global.start_room_x
	var room_y = 0
	var prev_x = global.start_room_x
	var prev_y = 0
	global.room_path[[room_x, room_y]] = 1
	var no_start_x = -1
	var n = gml.rand(0,3)
	var game = gml.get_instance("game")

	global.sacrifice_pit = false
	global.snake_pit = false
	global.alien_craft = false
	global.yeti_lair = false

	# DY:  Black Market
	global.black_market = false
	# DY: if (global.level_type == 1):

	if (global.level_type == 1 and not global.made_black_market and global.gen_black_market) or global.debug_black_market: #--- added for debugging purposes

		global.black_market = true
		global.start_room_x = 0
		global.start_room_y = 0
		global.end_room_x = 3
		global.end_room_y = 3
		global.room_path[[0, 0]] = 2
		global.room_path[[0, 1]] = 2
		global.room_path[[0, 2]] = 2
		global.room_path[[0, 3]] = 3
		global.room_path[[1, 0]] = 4
		global.room_path[[1, 1]] = 4
		global.room_path[[1, 2]] = 4
		global.room_path[[1, 3]] = 1
		global.room_path[[2, 0]] = 4
		global.room_path[[2, 1]] = 4
		global.room_path[[2, 2]] = 5
		global.room_path[[2, 3]] = 1
		global.room_path[[3, 0]] = 2
		global.room_path[[3, 1]] = 2
		global.room_path[[3, 2]] = 4
		global.room_path[[3, 3]] = 3
		global.made_black_market = true
		return 0


	if (global.level_type == 3 and gml.rand(1,global.prob_sac_pit) == 1):

		while (n == room_x):
		
			n = gml.rand(0,3)
		
		
		for i in range(0, 4):
		
			if (i == 0): global.room_path[[n, i]] = 7
			elif (i == 3): global.room_path[[n, i]] = 9
			else: global.room_path[[n, i]] = 8
		
		global.sacrifice_pit = true
		game.idol = true
		game.damsel = true


	while (room_y < 4):

		var d = false
		if (room_x == 0): n = gml.rand(3,5) # DY:  right
		elif (room_x == 3): n = gml.rand(5,7) # DY:  left
		else: n = gml.rand(1,5)
		
		if (n < 3 or n > 5): # DY:  move left
		
			if (room_x > 0):
				if (global.room_path[[room_x-1, room_y]] == 0): room_x -= 1
			elif (room_x < 3):
				if (global.room_path[[room_x+1, room_y]] == 0): room_x += 1
			else: n = 5
		
		elif (n == 3 or n == 4): # DY:  move right
		
			if (room_x < 3):
				if (global.room_path[[room_x+1, room_y]] == 0): room_x += 1
			elif (room_x > 0):
				if (global.room_path[[room_x-1, room_y]] == 0): room_x -= 1
			else: n = 5
		
		
		if (n == 5): # DY:  move down
		
			room_y += 1
			d = true
			if (room_y < 4):
			
				global.room_path[[prev_x, prev_y]] = 2
				global.room_path[[room_x, room_y]] = 3
				d = true
			
			else:
			
				global.end_room_x = room_x
				global.end_room_y = room_y-1
			
		
		
		if (not d): global.room_path[[room_x, room_y]] = 1
		prev_x = room_x
		prev_y = room_y


	# DY:  City of Gold
	if (global.city_of_gold): global.room_path[[gml.rand(0,3), 2]] = 6

	# DY:  snake pit
	var s_x1 = 0
	var s_x2 = 0
	# DY:  global.prob_snake_pit = 1
	if (global.level_type == 0):

		for j in range(0, 2):
		
			for i in range(0, 4):
			
				if (global.room_path[[i,j]] == 0 and global.room_path[[i,j+1]] == 0 and global.room_path[[i,j+2]] == 0 and gml.rand(1,global.prob_snake_pit) == 1):
				
					global.room_path[[i,j]] = 7 # DY:  top of pit
					if (true):
					
						if (global.room_path[[i,j+2]] == 0):
						
							global.room_path[[i,j+1]] = 8
							if (j == 0):
							
								if (global.room_path[[i,j+3]] == 0):
								
									global.room_path[[i,j+2]] = 8 # DY:  middle of pit
									global.room_path[[i,j+3]] = 9 # DY:  bottom of pit
								
								else:
								
									global.room_path[[i,j+2]] = 9
								
							
							else:
							
								global.room_path[[i,j+2]] = 9
							
						
					
					else:
					
						global.room_path[[i,j+1]] = 9
					
					global.snake_pit = true
					i = 99
					j = 99
					break
				
			
		


	global.room_path[[0,4]] = 0
	global.room_path[[1,4]] = 0
	global.room_path[[2,4]] = 0
	global.room_path[[3,4]] = 0

	# DY:   Lake
	# DY: global.lake = false
	if (global.lake):

		global.room_path[[0,3]] = 8
		global.room_path[[1,3]] = 8
		global.room_path[[2,3]] = 8
		global.room_path[[3,3]] = 8
		global.room_path[[0,4]] = 7
		global.room_path[[1,4]] = 7
		global.room_path[[2,4]] = 7
		global.room_path[[3,4]] = 7
		n = gml.rand(0,3)
		while (n == global.end_room_x):
		
			n = gml.rand(0,3)
		
		global.room_path[[n,4]] = 9


	# DY:  Moai
	if (not global.made_moai and global.level_type == 2):

		if (global.curr_level == 9 and gml.rand(1,4) == 1): global.made_moai = true
		elif (global.curr_level == 10 and gml.rand(1,3) == 1): global.made_moai = true
		elif (global.curr_level == 11 and gml.rand(1,2) == 1): global.made_moai = true
		elif (global.curr_level == 12): global.made_moai = true
		
		if (global.made_moai): global.room_path[[gml.rand(0,3), gml.rand(1,2)]] = 6

	elif (global.level_type == 2 and gml.rand(1,global.prob_alien) == 1): # DY:  alien craft

		var k = gml.rand(0,2)
		var j = gml.rand(1,2)
		for i in range(k, 4):
		
			if (i == k): global.room_path[[i,j]] = 7
			elif (i == 3): global.room_path[[i,j]] = 9
			else: global.room_path[[i,j]] = 8
		
		global.alien_craft = true

	elif (global.level_type == 2 and not global.alien_craft and gml.rand(1,global.prob_yeti_lair) == 1): # DY:  yeti

		global.yeti_lair = true


	# DY:  shop
	if (gml.rand(1,global.curr_level) <= 2 and global.curr_level > 1 and not global.made_black_market) or (global.debug_shop and global.curr_level < 16):
		var i = 0
		for k in range(0, 4):
		
			for j in range(0, 4): #--- looping through every room
			
				global.room_poss[[j,k]] = 0 #--- each possible room is initially zero
				# DY: j = gml.rand(0,3)
				# DY: k = gml.rand(0,3)
				if (global.room_path[[j,k]] == 0): #--- if current room in room_path is a side room
				
					if (j < 3): #--- if current room is not all the way to the right side
					
						if (global.room_path[[j+1,k]] == 1 or global.room_path[[j+1,k]] == 2): #--- if room to the right is normal room on path
						
							# DY: global.room_path[[j,k]] = 4
							global.room_poss[[j,k]] = 4 #--- possible room to the left of above room (non-right side shop)
							i += 1
							# DY: global.shop = true
							# DY: break
						
					
					elif (j > 0): #--- if room is all the way to the right side
					
						if (global.room_path[[j-1,k]] == 1 or global.room_path[[j-1,k]] == 2): #--- if the room to the left is a normal room on path
						
							# DY: global.room_path[[j,k]] = 5
							global.room_poss[[j,k]] = 5 #--- possible room to the right of above room (side shop)
							i += 1
							# DY: global.shop = true
							# DY: break
					
				
			
		
		
		if (i > 0): #--- if there are possible shops
			var room_selected: bool = false #--- added a check here to properly break out of both loops. j = 4 and k = 4 are meant to break out of both (does nothing in GDScript)
			n = gml.rand(0,i-1) #--- choosing one of the possible shops randomly
			for k in range(0, 4):
				if room_selected:
					break
				for j in range(0, 4): #--- looping through every room
				
					if (global.room_poss[[j,k]] != 0): #--- if possible room exists for this entry
					
						if (n == 0): #--- if matches the randomly chosen shop
						
							global.room_path[[j,k]] = global.room_poss[[j,k]]
							global.shop = true
							j = 4
							k = 4
							room_selected = true
							break
						
						else: n -= 1



func scr_init_level():
	# DY: 
	# DY:  scr_init_level()
	# DY: 
	# DY:  Calls scr_level_gen(), scr_room_gen*(), and scr_entity_gen() to build level.
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

	var game = gml.get_instance("game")
	
	global.level_type = 0
	# DY: global.curr_level = 16
	if (global.curr_level > 4 and global.curr_level < 9): global.level_type = 1
	if (global.curr_level > 8 and global.curr_level < 13): global.level_type = 2
	if (global.curr_level > 12 and global.curr_level < 16): global.level_type = 3
	if (global.curr_level == 16): global.level_type = 4

	if (global.curr_level <= 1 or
		global.curr_level == 5 or
		global.curr_level == 9 or
		global.curr_level == 13):

		global.had_dark_level = false


	# DY:  global.level_type = 3 # DY:  debug

	# DY:  DEBUG MODE # DY: 
	#/*
	#if (global.curr_level == 2): global.level_type = 4
	#if (global.curr_level == 3): global.level_type = 2
	#if (global.curr_level == 4): global.level_type = 3
	#if (global.curr_level == 5): global.level_type = 4
	#*/

	# DY:  global.level_type = 0

	global.start_room_x = 0
	global.start_room_y = 0
	global.end_room_x = 0
	global.end_room_y = 0
	#game.level_gen = false #--- commenting out because this is not used for anything

	# DY:  this is used to determine the path to the exit (generally no bombs required)
	for i in range(0, 4):

		for j in range(0, 4):
		
			global.room_path[[i,j]] = 0
		


	# DY:  side walls
	var k
	var obj
	if (global.level_type == 4):
		k = 54
	elif (global.level_type == 2):
		k = 38
	elif (global.lake):
		k = 41
	else:
		k = 33
	for i in range(0, 42):

		for j in range(0, k + 1): #---[FLAG] <= in original code is handled by doing value + 1. check other loops to make sure this is correct
		
			if (not InLevel.is_level()):
			
				i = 999
				j = 999
			
			elif (global.level_type == 2):
			
				if (i*16 == 0 or
					i*16 == 656 or
					j*16 == 0):
				
					obj = gml.instance_create(i*16, j*16, Objects.dark)
					obj.invincible = true
					obj.sprite_index = "dark"
				
			
			elif (global.level_type == 4):
			
				if (i*16 == 0 or
					i*16 == 656 or
					j*16 == 0):
				
					obj = gml.instance_create(i*16, j*16, Objects.temple)
					obj.invincible = true
					if (not global.city_of_gold): obj.sprite_index = "temple"
				
			
			elif (global.lake):
			
				if (i*16 == 0 or
					i*16 == 656 or
					j*16 == 0 or
					j*16 >= 656):
				
					obj = gml.instance_create(i*16, j*16, Objects.lush)
					obj.sprite_index = "lush"
					obj.invincible = true
				
			
			elif (i*16 == 0 or
				i*16 == 656 or
				j*16 == 0 or
				j*16 >= 528):
			
				if (global.level_type == 0):
					obj = gml.instance_create(i*16, j*16, Objects.brick)
					obj.sprite_index = "brick"
				elif (global.level_type == 1):
					obj = gml.instance_create(i*16, j*16, Objects.lush)
					obj.sprite_index = "lush"
				else:
					obj = gml.instance_create(i*16, j*16, Objects.temple)
					if (not global.city_of_gold):
						obj.sprite_index = "temple"
				obj.invincible = true
			
		


	if (global.level_type == 2):

		for i in range(0, 42):
		
			gml.instance_create(i*16, 40*16, Objects.dark)
			# DY: gml.instance_create(i*16, 35*16, Objects.spikes)
		


	if (global.level_type == 3):

		gml.background_index = "bg_temple"


	global.temp1 = global.game_start
	scr_level_gen()

	global.cemetary = false
	if (global.level_type == 1 and gml.rand(1,global.prob_cemetary) == 1): global.cemetary = true

	var all_rooms = gml.get_all_instances("room")
	for room_instance in all_rooms:
		#---[FLAG] having each room instance calling generation functions but may not be needed
		if (global.level_type == 0): scr_room_gen(room_instance.position.x, room_instance.position.y)
		elif (global.level_type == 1):
		
			if (global.black_market): scr_room_gen_market(room_instance.position.x, room_instance.position.y) #---[FLAG] may need to pass in x and y
			else: scr_room_gen2(room_instance.position.x, room_instance.position.y)
		
		elif (global.level_type == 2):
		
			if (global.yeti_lair): scr_room_gen_yeti(room_instance.position.x, room_instance.position.y)  #---[FLAG] may need to pass in x and y
			else: scr_room_gen3(room_instance.position.x, room_instance.position.y)  #---[FLAG] may need to pass in x and y
		
		elif (global.level_type == 3): scr_room_gen4(room_instance.position.x, room_instance.position.y)  #---[FLAG] may need to pass in x and y
		else: scr_room_gen5(room_instance.position.x, room_instance.position.y)  #---[FLAG] may need to pass in x and y


	global.dark_level = false
	global.dark_level = global.debug_dark_level #--- added for debugging purposes
	# DY: if (not global.had_dark_level and global.curr_level != 0 and global.level_type != 2 and global.curr_level != 16 and gml.rand(1,1) == 1):
	if (not global.had_dark_level and not global.no_dark_level and global.curr_level != 0 and global.curr_level != 1 and global.level_type != 2 and global.curr_level != 16 and gml.rand(1,global.prob_dark_level) == 1):

		global.dark_level = true
		global.had_dark_level = true
		# DY: gml.instance_create(player1.position.x, player1.position.y, Objects.flare)


	if (global.black_market): global.dark_level = false

	global.gen_udjat_eye = false
	if (not global.made_udjat_eye):

		if (global.curr_level == 2 and gml.rand(1,3) == 1): global.gen_udjat_eye = true
		elif (global.curr_level == 3 and gml.rand(1,2) == 1): global.gen_udjat_eye = true
		elif (global.curr_level == 4): global.gen_udjat_eye = true


	global.gen_market_entrance = false
	if (not global.made_market_entrance):

		if (global.curr_level == 5 and gml.rand(1,3) == 1): global.gen_market_entrance = true
		elif (global.curr_level == 6 and gml.rand(1,2) == 1): global.gen_market_entrance = true
		elif (global.curr_level == 7): global.gen_market_entrance = true


	# DY: # DY: # DY: # DY: # DY: # DY: # DY: # DY: # DY: # DY: # DY: # DY: # DY: # DY: 
	# DY:  ENTITY / TREASURES
	# DY: # DY: # DY: # DY: # DY: # DY: # DY: # DY: # DY: # DY: # DY: # DY: # DY: # DY: 
	global.temp2 = global.game_start
	if (not InLevel.is_room("tutorial") and not InLevel.is_room("load_level")): scr_entity_gen()

	if (gml.instance_exists("entrance") and not global.custom_level):
		var entrance = gml.get_instance("entrance")
		var player1 = gml.get_instance("player1") #---[FLAG] may have to change this for multiplayer
		if player1: #---[FLAG] seems necessary to add this or else end room doesn't work
			player1.position.x = entrance.position.x+8
			player1.position.y = entrance.position.y+8


	if (global.dark_level or
		global.black_market or
		global.snake_pit or
		global.cemetary or
		global.lake or
		global.yeti_lair or
		global.alien_craft or
		global.sacrifice_pit or
		global.city_of_gold):

		if (not InLevel.is_room("load_level")):
			var player1 = gml.get_instance("player1") #---[FLAG] may have to adjust this for multiplayer. check original code (uses "with" keyword)
			player1.alarm_0_countdown.start(10)
		


	if (global.level_type == 4): scr_setup_walls(864)
	elif (global.lake): scr_setup_walls(656)
	else: scr_setup_walls(528)

	# DY:  add background details
	if (global.graphics_high):

		for repetition in range(20):
		
			# DY:  bg = gml.instance_create(16*gml.rand(1,42), 16*gml.rand(1,33), Objects.cave_bg)
			if (global.level_type == 1 and gml.rand(1,3) < 3):
				gml.tile_add("bg_extras_lush", 32*gml.rand(0,1), 0, 32, 32, 16*gml.rand(1,42), 16*gml.rand(1,33), 10002)
			elif (global.level_type == 2 and gml.rand(1,3) < 3):
				gml.tile_add("bg_extras_ice", 32*gml.rand(0,1), 0, 32, 32, 16*gml.rand(1,42), 16*gml.rand(1,33), 10002)
			elif (global.level_type == 3 and gml.rand(1,3) < 3):
				gml.tile_add("bg_extras_temple", 32*gml.rand(0,1), 0, 32, 32, 16*gml.rand(1,42), 16*gml.rand(1,33), 10002)
			else:
				gml.tile_add("bg_extras", 32*gml.rand(0,1), 0, 32, 32, 16*gml.rand(1,42), 16*gml.rand(1,33), 10002)
		


	#game.level_gen = true #--- commenting out because this is not used for anything

	# DY:  generate angry shopkeeper at exit if murderer or thief:
	if (global.murderer or global.thief_level > 0):

		var all_exits = gml.get_all_instances("exit")
		for exit_instance in all_exits:
		
			if (exit_instance.type == "exit"):
			
				obj = gml.instance_create(exit_instance.position.x, exit_instance.position.y, Objects.shopkeeper)
				obj.status = 4
			
		
		# DY:  global.thief_level -= 1


	var all_treasure = gml.get_all_instances("treasure")
	for treasure_instance in all_treasure:

		if (gml.collision_point(treasure_instance.position.x, treasure_instance.position.y, "solid", 0, 0)):
		
			obj = gml.instance_place(treasure_instance.position.x, treasure_instance.position.y, "solid", treasure_instance)
			if (obj.invincible): gml.instance_destroy(treasure_instance)
		


	var all_water = gml.get_all_instances("water")
	for water_instance in all_water:

		if (water_instance.sprite_index == "water_top" or water_instance.sprite_index == "lava_top"):
		
			scr_check_water_top(water_instance)
		
		#/*
			#obj = gml.instance_place(position.x-16, position.y, water)
			#if (gml.instance_exists("obj")):
			#
				#if (obj.sprite_index == "water_top" or obj.sprite_index == "lava_top"):
				#
					#if (type == "Lava"): sprite_index = "lava_top"
					#else: sprite_index = "water_top"
				#
			#
			#obj = gml.instance_place(position.x+16, position.y, water)
			#if (gml.instance_exists("obj")):
			#
				#if (obj.sprite_index == "water_top" or obj.sprite_index == "lava_top"):
				#
					#if (type == "Lava"): sprite_index = "lava_top"
					#else: sprite_index = "water_top"
				#
			#
		#*/


	global.temp3 = global.game_start


func scr_room_gen(x, y): #--- have to pass in x and y
	# DY: 
	# DY:  scr_room_gen1()
	# DY: 
	# DY:  Room generation for Area 1, the Mines.
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

	#/*
	#Note:
#
	#ROOMS are 10x8 tile areas.
#
	#str_temp = "0000000000
			   #0000000000
			   #0000000000
			   #0000000000
			   #0000000000
			   #0000000000
			   #0000000000
			   #0000000000"
#
	#OBSTACLES are 5x3 tile chunks that are randomized within rooms.
			   #
	#str_obs = "00000
			  #00000
			  #00000"
			  #
	#The string representing a room or obstacle must be laid out unbroken:
	#*/
	
	var str_temp = "00000000000000000000000000000000000000000000000000000000000000000000000000000000"

	var room_path = global.room_path[[LevelGeneration.scr_get_room_x(x), LevelGeneration.scr_get_room_y(y)]]
	var room_path_above = -1
	var shop_type = "general"
	var n
	var game = gml.get_instance("game")
	
	if (LevelGeneration.scr_get_room_y(y) != 0): room_path_above = global.room_path[[LevelGeneration.scr_get_room_x(x), LevelGeneration.scr_get_room_y(y-128)]]

	if (LevelGeneration.scr_get_room_x(x) == global.start_room_x and LevelGeneration.scr_get_room_y(y) == global.start_room_y): # DY:  start room

		if (room_path == 2): n = gml.rand(5,8)
		else: n = gml.rand(1,4)
		match n:
		
			1:  str_temp = "60000600000000000000000000000000000000000008000000000000000000000000001111111111"
			2:  str_temp = "11111111112222222222000000000000000000000008000000000000000000000000001111111111"
			3:  str_temp = "00000000000008000000000000000000L000000000P111111000L111111000L00111111111111111"
			4:  str_temp = "0000000000008000000000000000000000000L000111111P000111111L001111100L001111111111"
			# DY:  hole
			5:  str_temp = "60000600000000000000000000000000000000000008000000000000000000000000002021111120"
			6:  str_temp = "11111111112222222222000000000000000000000008000000000000000000000000002021111120"
			7:  str_temp = "00000000000008000000000000000000L000000000P111111000L111111000L00011111111101111"
			8:  str_temp = "0000000000008000000000000000000000000L000111111P000111111L001111000L001111011111"
		

	elif (LevelGeneration.scr_get_room_x(x) == global.end_room_x and LevelGeneration.scr_get_room_y(y) == global.end_room_y): # DY:  end room

		if (room_path_above == 2): n = gml.rand(2,4)
		else: n = gml.rand(3,6)
		match n:
		
			1:  str_temp = "00000000006000060000000000000000000000000008000000000000000000000000001111111111"
			2:  str_temp = "00000000000000000000000000000000000000000008000000000000000000000000001111111111"
			3:  str_temp = "00000000000010021110001001111000110111129012000000111111111021111111201111111111"
			4:  str_temp = "00000000000111200100011110010021111011000000002109011111111102111111121111111111"
			# DY:  no drop
			5:  str_temp = "60000600000000000000000000000000000000000008000000000000000000000000001111111111"
			6:  str_temp = "11111111112222222222000000000000000000000008000000000000000000000000001111111111"
		

	elif (room_path == 0): # DY:  side room

		if (global.curr_level > 1 and not game.altar and gml.rand(1,16) == 1):
		
			n = 11
			game.altar = true
		
		elif (game.idol or LevelGeneration.scr_get_room_y(y) == 3):
		
			n = gml.rand(1,9)
		
		else:
		
			n = gml.rand(1,10)
			if (n == 10): game.idol = true
			# DY:  else: n = gml.rand(1,9)
		

		match n:
		
			# DY:  upper plats
			1:  str_temp = "00000000000010111100000000000000011010000050000000000000000000000000001111111111"
			# DY:  high walls
			2:  str_temp = "110000000040L600000011P000000011L000000011L5000000110000000011000000001111111111"
			3:  str_temp = "00000000110060000L040000000P110000000L110050000L11000000001100000000111111111111"
			4:  str_temp = "110000000040L600000011P000000011L000000011L0000000110000000011000000001112222111"
			5:  str_temp = "00000000110060000L040000000P110000000L110000000L11000000001100000000111112222111"
			6:  str_temp = "11111111110221111220002111120000022220000002222000002111120002211112201111111111"
			7:  str_temp = "11111111111112222111112000021111102201111120000211111022011111200002111112222111"
			8:  str_temp = "11111111110000000000110000001111222222111111111111112222221122000000221100000011"
			9:  str_temp = "121111112100L2112L0011P1111P1111L2112L1111L1111L1111L1221L1100L0000L001111221111"
			# DY:  idols
			10:  str_temp = "22000000220000B0000000000000000000000000000000000000000000000000I000001111A01111"
			# DY:  altars
			11:  str_temp = "220000002200000000000000000000000000000000000000000000x0000002211112201111111111"
		

	elif (room_path == 0 or room_path == 1): # DY:  main room

		match gml.rand(1,12):
		
		
			# DY:  basic rooms
			1:  str_temp = "60000600000000000000000000000000000000000050000000000000000000000000001111111111"
			2:  str_temp = "60000600000000000000000000000000000000005000050000000000000000000000001111111111"
			3:  str_temp = "60000600000000000000000000000000050000000000000000000000000011111111111111111111"
			4:  str_temp = "60000600000000000000000600000000000000000000000000000222220000111111001111111111"
			5:  str_temp = "11111111112222222222000000000000000000000050000000000000000000000000001111111111"
			6:  str_temp = "11111111112111111112022222222000000000000050000000000000000000000000001111111111"
			# DY:  low ceiling
			7:  str_temp = "11111111112111111112211111111221111111120111111110022222222000000000001111111111"
			# DY:  ladders
			8:
				if (gml.rand(1,2) == 1): str_temp = "1111111111000000000L111111111P000000000L5000050000000000000000000000001111111111"
				else:
					str_temp = "1111111111L000000000P111111111L0000000005000050000000000000000000000001111111111" #break
			
			9:  str_temp = "000000000000L0000L0000P1111P0000L0000L0000P1111P0000L1111L0000L1111L001111111111"
			# DY:  upper plats
			10:  str_temp = "00000000000111111110001111110000000000005000050000000000000000000000001111111111"
			11:  str_temp = "00000000000000000000000000000000000000000021111200021111112021111111121111111111"
			# DY:  treasure below
			12:
				if (gml.rand(1,2) == 1): str_temp = "2222222222000000000000000000L001111111P001050000L011000000L010000000L01111111111"
				else: str_temp = "222222222200000000000L000000000P111111100L500000100L000000110L000000011111111111" #break
			
		

	elif (room_path == 3): # DY:  main room

		match gml.rand(1,8):
		
		
			# DY:  basic rooms
			1:  str_temp = "00000000000000000000000000000000000000000050000000000000000000000000001111111111"
			2:  str_temp = "00000000000000000000000000000000000000005000050000000000000000000000001111111111"
			3:  str_temp = "00000000000000000000000000000050000500000000000000000000000011111111111111111111"
			4:  str_temp = "00000000000000000000000600000000000000000000000000000111110000111111001111111111"
			# DY:  upper plats
			5:  str_temp = "00000000000111111110001111110000000000005000050000000000000000000000001111111111"
			6:  str_temp = "00000000000000000000000000000000000000000021111200021111112021111111121111111111"
			7:  str_temp = "10000000011112002111111200211100000000000022222000111111111111111111111111111111"
			# DY:  treasure below
			8:
				if (gml.rand(1,2) == 1): str_temp = "0000000000000000000000000000L001111111P001050000L011000000L010000000L01111111111"
				else: str_temp = "000000000000000000000L000000000P111111100L500000100L000000110L000000011111111111" #break
			
		

	elif (room_path == 4): # DY:  shop

		str_temp = "111111111111111111111111221111111l000211...000W010...00000k0..Kiiii000bbbbbbbbbb"
		n = gml.rand(1,7)
		# DY:  n = 6
		match n:
		
			1:  shop_type = "general"
			2:  shop_type = "bomb"
			3:  shop_type = "weapon"
			4:  shop_type = "rare"
			5:  shop_type = "clothing"
			6:
				shop_type = "craps"
				str_temp = "11111111111111111111111122111111Kl000211..bQ00W010.0+00000k0.q+dd00000bbbbbbbbbb"
			7:
				shop_type = "kissing"
				str_temp = "111111111111111111111111221111111l000211...000W010...00000k0..K00D0000bbbbbbbbbb"
				game.damsel = true
		

	elif (room_path == 5): # DY:  shop

		str_temp = "111111111111111111111111221111112000l11101W0000...0k00000...000iiiiK..bbbbbbbbbb"
		n = gml.rand(1,7)
		# DY:  n = 6
		match n:
		
			1:  shop_type = "general"
			2:  shop_type = "bomb"
			3:  shop_type = "weapon"
			4:  shop_type = "rare"
			5:  shop_type = "clothing"
			6:
				shop_type = "craps"
				str_temp = "111111111111111111111111221111112000lK1101W0Q00b..0k00000+0.00000dd+q.bbbbbbbbbb"
			7:
				shop_type = "kissing"
				str_temp = "111111111111111111111111221111112000l11101W0000...0k00000...0000D00K..bbbbbbbbbb"
				game.damsel = true
		

	elif (room_path == 8): # DY:  snake pit

		match gml.rand(1,1):
		
			1:  str_temp = "111000011111s0000s11111200211111s0000s11111200211111s0000s11111200211111s0000s11"
		

	elif (room_path == 9): # DY:  snake pit bottom

		match gml.rand(1,1):
		
			1:  str_temp = "111000011111s0000s1111100001111100S0001111S0110S11111STTS1111111M111111111111111"
			

	else: # DY:  drop

		if (room_path == 7): n = gml.rand(4,12)
		elif (room_path_above != 2): n = gml.rand(1,12)
		else: n = gml.rand(1,8)
		match n:
		
			1:  str_temp = "00000000006000060000000000000000000000006000060000000000000000000000000000000000"
			2:  str_temp = "00000000006000060000000000000000000000000000050000000000000000000000001202111111"
			3:  str_temp = "00000000006000060000000000000000000000050000000000000000000000000000001111112021"
			4:  str_temp = "00000000006000060000000000000000000000000000000000000000000002200002201112002111"
			5:  str_temp = "00000000000000220000000000000000200002000112002110011100111012000000211111001111"
			6:  str_temp = "00000000000060000000000000000000000000000000000000001112220002100000001110111111"
			7:  str_temp = "00000000000060000000000000000000000000000000000000002221110000000001201111110111"
			8:  str_temp = "00000000000060000000000000000000000000000000000000002022020000100001001111001111"
			9:  str_temp = "11111111112222222222000000000000000000000000000000000000000000000000001120000211"
			10:  str_temp = "11111111112222111111000002211100000002110000000000200000000000000000211120000211"
			11:  str_temp = "11111111111111112222111220000011200000000000000000000000000012000000001120000211"
			12:  str_temp = "11111111112111111112021111112000211112000002112000000022000002200002201111001111"
		

	# DY:  Add obstacles

	for i in range(1, 81):
		var j
		var str_obs1
		var str_obs2
		var str_obs3

		j = i
	  
		str_obs1 = "00000"
		str_obs2 = "00000"
		str_obs3 = "00000"
		var tile = gml.string_char_at(str_temp, i)
		
		if (tile == "8"):
		
			match gml.rand(1,8):
			
				1:
					str_obs1 = "00900"
					str_obs2 = "01110"
					str_obs3 = "11111"
				2:
					str_obs1 = "00900"
					str_obs2 = "02120"
					str_obs3 = "02120"
				3:
					str_obs1 = "00000"
					str_obs2 = "00000"
					str_obs3 = "92222"
				4:
					str_obs1 = "00000"
					str_obs2 = "00000"
					str_obs3 = "22229"
				5:
					str_obs1 = "00000"
					str_obs2 = "11001"
					str_obs3 = "19001"
				6:
					str_obs1 = "00000"
					str_obs2 = "10011"
					str_obs3 = "10091"
				7:
					str_obs1 = "11111"
					str_obs2 = "10001"
					str_obs3 = "40094"
				8:
					str_obs1 = "00000"
					str_obs2 = "12021"
					str_obs3 = "12921"
			
		
		elif (tile == "5"): # DY:  ground
		
			match gml.rand(1,16):
			
				1:
					str_obs1 = "11111"
					str_obs2 = "00000"
					str_obs3 = "00000"
				2:
					str_obs1 = "00000"
					str_obs2 = "11110"
					str_obs3 = "00000"
				3:
					str_obs1 = "00000"
					str_obs2 = "01111"
					str_obs3 = "00000"
				4:
					str_obs1 = "00000"
					str_obs2 = "00000"
					str_obs3 = "11111"
				5:
					str_obs1 = "00000"
					str_obs2 = "20200"
					str_obs3 = "17177"
				6:
					str_obs1 = "00000"
					str_obs2 = "02020"
					str_obs3 = "71717"
				7:
					str_obs1 = "00000"
					str_obs2 = "00202"
					str_obs3 = "77171"
				8:
					str_obs1 = "00000"
					str_obs2 = "22200"
					str_obs3 = "11100"
				9:
					str_obs1 = "00000"
					str_obs2 = "02220"
					str_obs3 = "01110"
				10:
					str_obs1 = "00000"
					str_obs2 = "00222"
					str_obs3 = "00111"
				11:
					str_obs1 = "11100"
					str_obs2 = "22200"
					str_obs3 = "00000"
				12:
					str_obs1 = "01110"
					str_obs2 = "02220"
					str_obs3 = "00000"
				13:
					str_obs1 = "00111"
					str_obs2 = "00222"
					str_obs3 = "00000"
				14:
					str_obs1 = "00000"
					str_obs2 = "02220"
					str_obs3 = "21112"
				15:
					str_obs1 = "00000"
					str_obs2 = "20100"
					str_obs3 = "77117"
				16:
					str_obs1 = "00000"
					str_obs2 = "00102"
					str_obs3 = "71177"
			
		
		elif (tile == "6"): # DY:  air
		
			match gml.rand(1,10):
			
				1:
					str_obs1 = "11111"
					str_obs2 = "00000"
					str_obs3 = "00000"
				2:
					str_obs1 = "22222"
					str_obs2 = "00000"
					str_obs3 = "00000"
				3:
					str_obs1 = "11100"
					str_obs2 = "22200"
					str_obs3 = "00000"
				4:
					str_obs1 = "01110"
					str_obs2 = "02220"
					str_obs3 = "00000"
				5:
					str_obs1 = "00111"
					str_obs2 = "00222"
					str_obs3 = "00000"
				6:
					str_obs1 = "00000"
					str_obs2 = "01110"
					str_obs3 = "00000"
				7:
					str_obs1 = "00000"
					str_obs2 = "01110"
					str_obs3 = "02220"
				8:
					str_obs1 = "00000"
					str_obs2 = "02220"
					str_obs3 = "01110"
				9:
					str_obs1 = "00000"
					str_obs2 = "00220"
					str_obs3 = "01111"
				10:
					str_obs1 = "00000"
					str_obs2 = "22200"
					str_obs3 = "11100"
			
		
		
		if (tile == "5" or tile == "6" or tile == "8"):
		
			str_temp = gml.string_delete(str_temp, j, 5)
			str_temp = gml.string_insert(str_obs1, str_temp, j)
			j += 10
			str_temp = gml.string_delete(str_temp, j, 5)
			str_temp = gml.string_insert(str_obs2, str_temp, j)
			j += 10
			str_temp = gml.string_delete(str_temp, j, 5)
			str_temp = gml.string_insert(str_obs3, str_temp, j)
		

	assert(str_temp.length() == 80) #---TODO: check level strings in this file to make sure they match with originals. some got messed up in the conversion
	# DY:  Generate the tiles
	for j in range(0, 8):
		var obj

		for i in range(1, 11):
		
			var tile = gml.string_char_at(str_temp, i+j*10)
			var xpos = x + (i-1)*16
			var ypos = y + j*16
			if (tile == "1" and not gml.collision_point(xpos, ypos, "solid", 0, 0)):
			
				if (gml.rand(1,10) == 1): gml.instance_create(xpos, ypos, Objects.block)
				else:
				
					gml.instance_create(xpos, ypos, Objects.brick)
				
			
			elif (tile == "2" and gml.rand(1,2) == 1 and not gml.collision_point(xpos, ypos, "solid", 0, 0)):
			
				if (gml.rand(1,10) == 1): gml.instance_create(xpos, ypos, Objects.block)
				else:
				
					gml.instance_create(xpos, ypos, Objects.brick)
				
			
			elif (tile == "L"): gml.instance_create(xpos, ypos, Objects.ladder_orange)
			elif (tile == "P"): gml.instance_create(xpos, ypos, Objects.ladder_top)
			elif (tile == "7" and gml.rand(1,3) == 1): gml.instance_create(xpos, ypos, Objects.spikes)
			elif (tile == "4" and gml.rand(1,4) == 1): gml.instance_create(xpos, ypos, Objects.push_block)
			elif (tile == "9"):
			
				var block = gml.instance_create(xpos, ypos+16, Objects.brick)
				if (LevelGeneration.scr_get_room_x(x) == global.start_room_x and LevelGeneration.scr_get_room_y(y) == global.start_room_y):
					gml.instance_create(xpos, ypos, Objects.entrance)
				else:
				
					gml.instance_create(xpos, ypos, Objects.exit)
					global.exit_x = xpos
					global.exit_y = ypos
					block.invincible = true
				
			
			elif (tile == "A"):
			
				gml.instance_create(xpos, ypos, Objects.altar_left)
				gml.instance_create(xpos+16, ypos, Objects.altar_right)
			
			elif (tile == "x"):
			
				gml.instance_create(xpos, ypos, Objects.sac_altar_left)
				gml.instance_create(xpos+16, ypos, Objects.sac_altar_right)
				gml.tile_add("bg_kali_body", 0, 0, 64, 64, xpos-16, ypos-48, 10001)
				gml.instance_create(xpos+16, ypos-80+16, Objects.kali_head)
			
			elif (tile == "a"):
			
				gml.instance_create(xpos, ypos, Objects.chest)
			
			elif (tile == "I"):
			
				gml.instance_create(xpos+16, ypos+12, Objects.gold_idol)
			
			elif (tile == "B"):
			
				gml.instance_create(xpos+16, ypos+12, Objects.giant_tiki_head)
				gml.tile_add("bg_tiki", 0, 0, 32, 64, xpos, ypos+32, 10001)
				gml.tile_add("bg_tiki_arms", 16*gml.rand(0,2), 0, 16, 16, xpos+32, ypos+32, 10001)
				gml.tile_add("bg_tiki_arms", 16*gml.rand(0,2), 16, 16, 16, xpos-16, ypos+32, 10001)
			
			elif (tile == "Q"):
			
				if (shop_type == "craps"):
				
					gml.tile_add("bg_dice_sign", 0, 0, 48, 32, xpos, ypos, 9004)
				
			
			elif (tile == "q"):
			
				n = gml.rand(1,6)
				scr_generate_item(xpos+8, ypos+8, 1)
				#obj.in_dice_house = true #---[FLAG] obj doesn't appear to refer to anything in the original script. commenting out to get code to work
			
			elif (tile == "+"):
			
				obj = gml.instance_create(xpos, ypos, Objects.solid)
				obj.sprite_index = "ice_block"
				obj.shop_wall = true
			
			elif (tile == "W"):
			
				if (global.murderer or global.thief_level > 0):
				
					if (global.is_damsel): gml.tile_add("bg_wanted", 32, 0, 32, 32, xpos, ypos, 9004)
					elif (global.is_tunnel_man): gml.tile_add("bg_wanted", 64, 0, 32, 32, xpos, ypos, 9004)
					else: gml.tile_add("bg_wanted", 0, 0, 32, 32, xpos, ypos, 9004)
				
			
			elif (tile == "." and not gml.collision_point(xpos, ypos, "solid", 0, 0)):
			
				if (gml.rand(1,10) == 1): obj = gml.instance_create(xpos, ypos, Objects.block)
				else:
				
					obj = gml.instance_create(xpos, ypos, Objects.brick)
				
				obj.shop_wall = true
			
			elif (tile == "b"):
			
				obj = gml.instance_create(xpos, ypos, Objects.brick_smooth)
				obj.shop_wall = true
			
			elif (tile == "l"):
			
				if (game.damsel): gml.instance_create(xpos, ypos, Objects.lamp_red)
				else: gml.instance_create(xpos, ypos, Objects.lamp)
			
			elif (tile == "K"):
			
				obj = gml.instance_create(xpos, ypos, Objects.shopkeeper)
				obj.style = shop_type
			
			elif (tile == "k"):
			
				obj = gml.instance_create(xpos, ypos, Objects.sign)
				if (shop_type == "general"): obj.sprite_index = "sign_general"
				elif (shop_type == "bomb"): obj.sprite_index = "sign_bomb"
				elif (shop_type == "weapon"): obj.sprite_index = "sign_weapon"
				elif (shop_type == "clothing"): obj.sprite_index = "sign_clothing"
				elif (shop_type == "rare"): obj.sprite_index = "sign_rare"
				elif (shop_type == "craps"): obj.sprite_index = "sign_craps"
				elif (shop_type == "kissing"): obj.sprite_index = "sign_kissing"
			
			elif (tile == "i"):
			
				scr_shop_items_gen(xpos, ypos, shop_type)
			
			elif (tile == "d"):
			
				gml.instance_create(xpos+8, ypos+8, Objects.dice)
			
			elif (tile == "D"):
			
				obj = gml.instance_create(xpos+8, ypos+8, Objects.damsel)
				obj.for_sale = true
				obj.status = 5
			
			elif (tile == "s"):
			
				if (gml.rand(1,10) == 1): gml.instance_create(xpos, ypos, Objects.snake)
				elif (gml.rand(1,2) == 1): gml.instance_create(xpos, ypos, Objects.brick)
			
			elif (tile == "S"):
			
				gml.instance_create(xpos, ypos, Objects.snake)
			
			elif (tile == "T"):
			
				gml.instance_create(xpos+8, ypos+8, Objects.ruby_big)
			
			elif (tile == "M"):
			
				gml.instance_create(xpos, ypos, Objects.brick)
				obj = gml.instance_create(xpos+8, ypos+8, Objects.mattock)
				obj.cost = 0
				obj.for_sale = false


func scr_room_gen_market(x, y):
	# DY: 
	# DY:  scr_room_gen_market()
	# DY: 
	# DY:  Room generation for the Black Market, which is accessible from Area 2: Lush.
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

	#/*
	#Note:
#
	#ROOMS are 10x8 tile areas.
#
	#str_temp = "0000000000
		#0000000000
		#0000000000
		#0000000000
		#0000000000
		#0000000000
		#0000000000
		#0000000000"
#
	#OBSTACLES are 5x3 tile chunks that are randomized within rooms.
			#
	#str_obs = "00000
		#00000
		#00000"
			#
	#The string representing a room or obstacle must be laid out unbroken:
	#*/
	var str_temp = "00000000000000000000000000000000000000000000000000000000000000000000000000000000"

	var room_path = global.room_path[[LevelGeneration.scr_get_room_x(x), LevelGeneration.scr_get_room_y(y)]]
	var room_path_above = -1
	var n
	var shop_type
	var game = gml.get_instance("game")
	if (LevelGeneration.scr_get_room_y(y) != 0): room_path_above = global.room_path[[LevelGeneration.scr_get_room_x(x), LevelGeneration.scr_get_room_y(y-128)]]

	if (LevelGeneration.scr_get_room_x(x) == global.start_room_x and LevelGeneration.scr_get_room_y(y) == global.start_room_y): # DY:  start room

		if (room_path == 2): n = gml.rand(3,4)
		else: n = gml.rand(1,2)
		match n:
		
			1:  str_temp = "60000600000000000000000000000000000000000008000000000000000000000000001111111111"
			2:  str_temp = "11111111112222222222000000000000000000000008000000000000000000000000001111111111"
			# DY:  hole
			3:  str_temp = "60000600000000000000000000000000000000000008000000000000000000000000002021111120"
			4:  str_temp = "11111111112222222222000000000000000000000008000000000000000000000000002021111120"
		

	elif (LevelGeneration.scr_get_room_x(x) == global.end_room_x and LevelGeneration.scr_get_room_y(y) == global.end_room_y): # DY:  end room

		if (room_path_above == 2): n = gml.rand(1,2)
		else: n = gml.rand(3,4)
		match n:
		
			1:  str_temp = "00000000000000000000000000000000000000000008000000000000000000000000001111111111"
			2:  str_temp = "00000000006000060000000000000000000000000008000000000000000000000000001111111111"
			3:  str_temp = "60000600000000000000000000000000000000000008000000000000000000000000001111111111"
			4:  str_temp = "11111111112222222222000000000000000000000008000000000000000000000000001111111111"
		

	elif (room_path == 1):

		match gml.rand(1,8):
		
			# DY:  basic rooms
			1:  str_temp = "60000600000000000000000000000000000000000050000000000000000000000000001111111111"
			2:  str_temp = "60000600000000000000000000000000000000005000050000000000000000000000001111111111"
			3:  str_temp = "60000600000000000000000000000050000500000000000000000000000011111111111111111111"
			4:  str_temp = "60000600000000000000000000000000000000000000000000000111110000111111001111111111"
			# DY:  spikes
			5:  str_temp = "1111111111V0000V000000000000000000000000000000000010000000011ssssssss11111111111"
			# DY:  upper plats
			6:  str_temp = "00000000000000000000000000000000000000005000050000000000000000000000001111111111"
			# DY:  water
			7:  str_temp = "000000000000000000000000000000013wwww310013wwww310113wwww31111133331111111111111"
			8:  str_temp = "0060000000000000000000000000000000000000013wwww310113wwww31111133331111111111111"
		

	elif (room_path == 3):

		match gml.rand(1,7):
		
			# DY:  basic rooms
			1:  str_temp = "00000000000000000000000000000000000000000050000000000000000000000000001111111111"
			2:  str_temp = "00000000000000000000000000000000000000005000050000000000000000000000001111111111"
			3:  str_temp = "00000000000000000000000000000050000500000000000000000000000011111111111111111111"
			
			# DY:  upper plats
			4:  str_temp = "00000000000000000000000000000000000000000002222220001111111011111111111111111111"
			5:  str_temp = "00000000000000000000000000000000000000000000000221000002211100002211111111111111"
			# DY:  water
			6:  str_temp = "000000000000000000000000000000013wwww310013wwww310113wwww31111133331111111111111"
			7:  str_temp = "0000000000006000000000000000000000000000013wwww310113wwww31111133331111111111111"
		

	elif (room_path == 4 and x == 496): # DY:  shop

		str_temp = "0000000011.....b0AlK......bbbb..........1111111111111111111111111111111111111111"
		shop_type = "ankh"

	elif (room_path == 4): # DY:  shop

		str_temp = "........................22......2l00l2..0.000000.00k000000k0000iiiiK00bbbbbbbbbb"
		
		shop_type = ""
		
		n = gml.rand(1,5)
		var m = n
		
		while (shop_type == ""):
		
			if (n == 1):
				if (not game.gen_supply_shop):
					shop_type = "general"
					game.gen_supply_shop = true
			elif (n == 2):
				if (not game.gen_bomb_shop):
					shop_type = "bomb"
					game.gen_bomb_shop = true
			elif (n == 3):
				if (not game.gen_weapon_shop):
					shop_type = "weapon"
					game.gen_weapon_shop = true
			elif (n == 4):
				if (not game.gen_rare_shop):
					shop_type = "rare"
					game.gen_rare_shop = true
			elif (n == 5):
				if (not game.gen_clothing_shop):
					shop_type = "clothing"
					game.gen_clothing_shop = true
			n += 1
			if (n > 5): n = 1
			if (n == m):
			
				shop_type = "general"
				break
			
		

	elif (room_path == 5): # DY:  casino

		str_temp = "111111111111111111111111221111112000lK1101W0Q00b..0k00000+0.00000zz+q.bbbbbbbbbb"
		shop_type = "craps"

	else: # DY:  drop

		if (room_path_above != 2): n = gml.rand(1,6)
		else: n = gml.rand(1,5)
		match n:
		
			1:  str_temp = "00G000000000H111100000G222200000G000000000G000000000G000002200000002111111202111"
			2:  str_temp = "0000000G000001111H000002222G000000000G000000000G002200000G00112T0000001111202111"
			3:  str_temp = "00000000G060000011H000000000G000000000G0G0000000G0H1122000G0G0000000G011100001H1"
			4:  str_temp = "0000000G000001111H000002222G000000000G000000000G00000000000020000222221000111111"
			5:  str_temp = "00G000000000H111100000G222200000G000000000G0000000000000000022222000021111110001"
			# DY: 
			6:  str_temp = "11111111111111111111120000002120000000020000000000022000022021120021121111001111"
		


	# DY:  Add obstacles

	for i in range(1, 81):

		var j = i
	
		var str_obs1 = "00000"
		var str_obs2 = "00000"
		var str_obs3 = "00000"
		var str_obs4 = "00000"
		var tile = gml.string_char_at(str_temp, i)
		
		if (tile == "8"):
		
			n = gml.rand(1,1)
			match n:
			
				1:
					str_obs1 = "00900"
					str_obs2 = "01110"
					str_obs3 = "11111"
			
		
		elif (tile == "5"): # DY:  ground
		
			if (gml.rand(1,8) == 1): n = gml.rand(100,102)
			else: n = gml.rand(1,2)
			match n:
			
				1:
					str_obs1 = "00000"
					str_obs2 = "00000"
					str_obs3 = "22222"
				2:
					str_obs1 = "00000"
					str_obs2 = "22222"
					str_obs3 = "11111"
				100:
					str_obs1 = "00000"
					str_obs2 = "00000"
					str_obs3 = "0T022"
				101:
					str_obs1 = "00000"
					str_obs2 = "00000"
					str_obs3 = "20T02"
				102:
					str_obs1 = "00000"
					str_obs2 = "00000"
					str_obs3 = "220T0"
			
		
		elif (tile == "6"): # DY:  air
		
			n = gml.rand(1,4)
			match n:
			
				1:
					str_obs1 = "11112"
					str_obs2 = "22220"
					str_obs3 = "00000"
				2:
					str_obs1 = "21111"
					str_obs2 = "02222"
					str_obs3 = "00000"
				3:
					str_obs1 = "22222"
					str_obs2 = "00000"
					str_obs3 = "00000"
				4:
					str_obs1 = "11111"
					str_obs2 = "21112"
					str_obs3 = "02120"
			
		
		elif (tile == "V"): # DY:  vines
		
			n = gml.rand(1,3)
			match n:
			
				1:
					str_obs1 = "L0L0L"
					str_obs2 = "L0L0L"
					str_obs3 = "L000L"
					str_obs4 = "L0000"
				2:
					str_obs1 = "L0L0L"
					str_obs2 = "L0L0L"
					str_obs3 = "L000L"
					str_obs4 = "0000L"
				3:
					str_obs1 = "0L0L0"
					str_obs2 = "0L0L0"
					str_obs3 = "0L0L0"
					str_obs4 = "000L0"
			
		
		
		if (tile == "5" or tile == "6" or tile == "8" or tile == "V"):
		
			str_temp = gml.string_delete(str_temp, j, 5)
			str_temp = gml.string_insert(str_obs1, str_temp, j)
			j += 10
			str_temp = gml.string_delete(str_temp, j, 5)
			str_temp = gml.string_insert(str_obs2, str_temp, j)
			j += 10
			str_temp = gml.string_delete(str_temp, j, 5)
			str_temp = gml.string_insert(str_obs3, str_temp, j)
		
		if (tile == "V"):
		
			j += 10
			str_temp = gml.string_delete(str_temp, j, 5)
			str_temp = gml.string_insert(str_obs4, str_temp, j)
		

	assert(str_temp.length() == 80)
	# DY:  Generate the tiles
	for j in range(0, 8):

		for i in range(1, 11):
			var obj
			var tile = gml.string_char_at(str_temp, i+j*10)
			var xpos = x + (i-1)*16
			var ypos = y + j*16
			if (tile == "1" and not gml.collision_point(xpos, ypos, "solid", 0, 0)):
			
				gml.instance_create(xpos, ypos, Objects.lush)
			
			elif (tile == "2" and gml.rand(1,2) == 1 and not gml.collision_point(xpos, ypos, "solid", 0, 0)):
			
				gml.instance_create(xpos, ypos, Objects.lush)
			
			if (tile == "t" and not gml.collision_point(xpos, ypos, "solid", 0, 0)):
			
				gml.instance_create(xpos, ypos, Objects.temple)
			
			elif (tile == "3" and not gml.collision_point(xpos, ypos, "solid", 0, 0)):
			
				if (gml.rand(1,2) == 1): gml.instance_create(xpos, ypos, Objects.water_swim)
				else: gml.instance_create(xpos, ypos, Objects.lush)
			
			elif (tile == "L"): gml.instance_create(xpos, ypos, Objects.vine)
			elif (tile == "P"): gml.instance_create(xpos, ypos, Objects.vine_top)
			elif (tile == "G"): gml.instance_create(xpos, ypos, Objects.ladder_orange)
			elif (tile == "H"): gml.instance_create(xpos, ypos, Objects.ladder_top)
			elif (tile == "7" and gml.rand(1,3) == 1): gml.instance_create(xpos, ypos, Objects.spikes)
			elif (tile == "s"): gml.instance_create(xpos, ypos, Objects.spikes)
			elif (tile == "4"): gml.instance_create(xpos, ypos, Objects.push_block)
			elif (tile == "9"):
			
				var block = gml.instance_create(xpos, ypos+16, Objects.lush)
				if (LevelGeneration.scr_get_room_x(x) == global.start_room_x and LevelGeneration.scr_get_room_y(y) == global.start_room_y):
					gml.instance_create(xpos, ypos, Objects.entrance)
				else:
				
					gml.instance_create(xpos, ypos, Objects.exit)
					global.exit_x = xpos
					global.exit_y = ypos
					block.invincible = true
				
			
			elif (tile == "c"):
			
				gml.instance_create(xpos, ypos, Objects.chest)
			
			elif (tile == "d"):
			
				gml.instance_create(xpos, ypos, Objects.water_swim)
				gml.instance_create(xpos, ypos, Objects.chest)
			
			elif (tile == "w"):
			
				gml.instance_create(xpos, ypos, Objects.water_swim)
			
			elif (tile == "I"):
			
				gml.instance_create(xpos+16, ypos+8, Objects.gold_idol)
			
			elif (tile == "." and not gml.collision_point(xpos, ypos, "solid", 0, 0)):
			
				obj = gml.instance_create(xpos, ypos, Objects.lush)
				obj.shop_wall = true
			
			elif (tile == "+"):
			
				obj = gml.instance_create(xpos, ypos, Objects.solid)
				obj.sprite_index = "ice_block"
				obj.shop_wall = true
			
			elif (tile == "q"):
			
				n = gml.rand(1,6)
				scr_generate_item(xpos+8, ypos+8, 1)
				if obj: #--- adding checks because obj can be null
					if obj.has("in_dice_house"):
						obj.in_dice_house = true
			
			elif (tile == "Q"):
			
				if (shop_type == "craps"):
				
					gml.tile_add("bg_dice_sign", 0, 0, 48, 32, xpos, ypos, 9004)
				
			
			elif (tile == "W"):
			
				if (global.murderer or global.thief_level > 0):
				
					if (global.is_damsel): gml.tile_add("bg_wanted", 32, 0, 32, 32, xpos, ypos, 9004)
					elif (global.is_tunnel_man): gml.tile_add("bg_wanted", 64, 0, 32, 32, xpos, ypos, 9004)
					else: gml.tile_add("bg_wanted", 0, 0, 32, 32, xpos, ypos, 9004)
				
			
			elif (tile == "b"):
			
				obj = gml.instance_create(xpos, ypos, Objects.brick_smooth)
				obj.sprite_index = "lush_smooth"
				obj.shop_wall = true
			
			elif (tile == "l"):
			
				obj = gml.instance_create(xpos, ypos, Objects.lamp)
			
			elif (tile == "K"):
			
				obj = gml.instance_create(xpos, ypos, Objects.shopkeeper)
				obj.style = shop_type
			
			elif (tile == "k"):
			
				obj = gml.instance_create(xpos, ypos, Objects.sign)
				if (shop_type == "general"): obj.sprite_index = "sign_general"
				elif (shop_type == "bomb"): obj.sprite_index = "sign_bomb"
				elif (shop_type == "weapon"): obj.sprite_index = "sign_weapon"
				elif (shop_type == "clothing"): obj.sprite_index = "sign_clothing"
				elif (shop_type == "rare"): obj.sprite_index = "sign_rare"
				elif (shop_type == "craps"): obj.sprite_index = "sign_craps"
			
			elif (tile == "i"):
			
				scr_shop_items_gen(xpos, ypos, shop_type)
			
			elif (tile == "A"):
			
				obj = gml.instance_create(xpos+8, ypos+8, Objects.ankh)
			
			elif (tile == "z"):
			
				gml.instance_create(xpos+8, ypos+8, Objects.dice)
			
			elif (tile == "B"):
			
				gml.instance_create(xpos, ypos, Objects.trap_block)
			
			elif (tile == "p"):
			
				if (gml.rand(1,2)): gml.instance_create(xpos, ypos, Objects.fake_bones)
				else: gml.instance_create(xpos+8, ypos+10, Objects.jar)
			
			elif (tile == "T"):
			
				gml.instance_create(xpos, ypos, Objects.tree)
				n = 0
				var tx = xpos
				var ty = ypos-16
				var b1 = false
				var b2 = false
				for m in range(0, 5):
				
					if (gml.rand(0,m) > 2):
					
						break
					
					else:
					
						if (not gml.collision_point(tx, ty-16, "solid", 0, 0) and
							not gml.collision_point(tx-16, ty-16, "solid", 0, 0) and
							not gml.collision_point(tx+16, ty-16, "solid", 0, 0)):
						
							gml.instance_create(tx, ty, Objects.tree)
							if (m < 4):
							
								if (gml.rand(1,5) < 4 and not b1):
								
									gml.instance_create(tx+16, ty, Objects.tree_branch)
									b1 = true
								
								elif (b1): b1 = false
								if (gml.rand(1,5) < 4 and not b2):
								
									gml.instance_create(tx-16, ty, Objects.tree_branch)
									b2 = true
								
								elif (b2): b2 = false
							
						
						else:
						
							break
						
					
					ty -= 16
				
				gml.instance_create(tx-16, ty+16, Objects.leaves)
				gml.instance_create(tx+16, ty+16, Objects.leaves)
			
		



func scr_room_gen2(x, y):
	# DY: 
	# DY:  scr_room_gen2()
	# DY: 
	# DY:  Room generation for Area 2, the Lush Jungle.
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

	#/*
	#Note:
#
	#ROOMS are 10x8 tile areas.
#
	#str_temp = "0000000000
		#0000000000
		#0000000000
		#0000000000
		#0000000000
		#0000000000
		#0000000000
		#0000000000"
#
	#OBSTACLES are 5x3 tile chunks that are randomized within rooms.
			   #
	#str_obs = "00000
		#00000
		#00000"
			  #
	#The string representing a room or obstacle must be laid out unbroken:
	#*/
	var str_temp = "00000000000000000000000000000000000000000000000000000000000000000000000000000000"

	var room_path = global.room_path[[LevelGeneration.scr_get_room_x(x), LevelGeneration.scr_get_room_y(y)]]
	var room_path_above = -1
	var n
	var game = gml.get_instance("game")
	var shop_type
	if (LevelGeneration.scr_get_room_y(y) != 0): room_path_above = global.room_path[[LevelGeneration.scr_get_room_x(x), LevelGeneration.scr_get_room_y(y-128)]]

	if (LevelGeneration.scr_get_room_x(x) == global.start_room_x and LevelGeneration.scr_get_room_y(y) == global.start_room_y): # DY:  start room

		if (room_path == 2): n = gml.rand(3,4)
		else: n = gml.rand(1,2)
		match n:
		
			1:  str_temp = "60000600000000000000000000000000000000000008000000000000000000000000001111111111"
			2:  str_temp = "11111111112222222222000000000000000000000008000000000000000000000000001111111111"
			# DY:  hole
			3:  str_temp = "60000600000000000000000000000000000000000008000000000000000000000000002021111120"
			4:  str_temp = "11111111112222222222000000000000000000000008000000000000000000000000002021111120"
		

	elif (LevelGeneration.scr_get_room_x(x) == global.end_room_x and LevelGeneration.scr_get_room_y(y) == global.end_room_y): # DY:  end room

		if (global.lake): n = gml.rand(5,5)
		elif (room_path_above == 2): n = gml.rand(1,2)
		else: n = gml.rand(3,4)
		match n:
		
			1:  str_temp = "00000000000000000000000000000000000000000008000000000000000000000000001111111111"
			2:  str_temp = "00000000000011111100000000000000000000000008000000000000000000000000001111111111"
			3:  str_temp = "60000600000000000000000000000000000000000008000000000000000000000000001111111111"
			4:  str_temp = "11111111112222222222000000000000000000000008000000000000000000000000001111111111"
			5:  str_temp = "000000000000000900000221111220wwvvvvvvwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww"
		

	elif (room_path == 0 and gml.rand(1,3) <= 2): # DY:  side room

		if (not game.altar and gml.rand(1,12) == 1):
		
			n = 10
			game.altar = true
		
		elif (game.idol):
		
			n = gml.rand(1,8)
		
		else:
		
			n = gml.rand(1,9)
			if (n == 9): game.idol = true
		

		match n:
		
			# DY:  upper plats
			1:  str_temp = "00000000000010111100000000000000011010000050000000000000000000000000001111111111"
			2:  str_temp = "111111111111V0000211120000021100000002110000000211112000021111120021111111001111"
			3:  str_temp = "1111111111112V000011112000002111200000001120000000112000021111120021111111001111"
			4:  str_temp = "11120021111100000222120000021100000002220000000211112000022211177T71111111111111"
			5:  str_temp = "1112002111222000001111200000212220000000112000000022200002111117T771111111111111"
			6:  str_temp = "1112002111222000001111200000212220000000112000000022200002111117T771111111111111"
			# DY:  water rooms
			7:  str_temp = "000000000011wwwwww1111wwwwww11113wwww311113wwww311113wwww31111133331111111111111"
			8:  str_temp = "00000000000000rr0000000rttr00000rrrrrr0000V0000000000000000000000000000000000000"
			# DY:  idols
			9:
			
				if (global.cemetary): str_temp = "ttttttttttttttttttttttp0C00pttttt0tt0ttt4000000004ttt0tt0tttttp0000ptt1111111111"
				else: str_temp = "01000000100000I0000001BBBBBB10110000001111wwwwww1111wwwwww11113wwww3111111111111"
				#break
			
			# DY:  altars
			10:  str_temp = "220000002200000000000000000000000000000000000000000000x0000002211112201111111111"
		

	elif (room_path == 0 or room_path == 1):

		match gml.rand(1,10):
		
			# DY:  basic rooms
			1:  str_temp = "60000600000000000000000000000000000000000050000000000000000000000000001111111111"
			2:  str_temp = "60000600000000000000000000000000000000005000050000000000000000000000001111111111"
			3:  str_temp = "60000600000000000000000000000050000500000000000000000000000011111111111111111111"
			4:  str_temp = "60000600000000000000000000000000000000000000000000000111110000111111001111111111"
			5:  str_temp = "2222222222000000000000000000000000tt000000r0220r0000t0tt0t000rtrttrtr01111111111"
			6:
				if (gml.rand(1,2) == 1): str_temp = "0L000000001L111111110L222222200L000000000002002000011122111011200002111111111111"
				else: str_temp = "00000000L011111111L102222222L000000000L00002002000011122111011200002111111111111"
				#break
			
			# DY:  spikes
			7:  str_temp = "1111111111V0000V000000000000000000000000000000000010000000011ssssssss11111111111"
			# DY:  upper plats
			8:  str_temp = "00000000000000000000000000000000000000005000050000000000000000000000001111111111"
			# DY:  water
			9:  str_temp = "000000000000000000000000000000013wwww310013wwww310113wwww31111133331111111111111"
			10:  str_temp = "0060000000000000000000000000000000000000013wwww310113wwww31111133331111111111111"
		

	elif (room_path == 3):

		match gml.rand(1,7):
		
			# DY:  basic rooms
			1:  str_temp = "00000000000000000000000000000000000000000050000000000000000000000000001111111111"
			2:  str_temp = "00000000000000000000000000000000000000005000050000000000000000000000001111111111"
			3:  str_temp = "00000000000000000000000000000050000500000000000000000000000011111111111111111111"
			
			# DY:  upper plats
			4:  str_temp = "00000000000000000000000000000000000000000002222220001111111011111111111111111111"
			5:  str_temp = "00000000000000000000000000000000000000000000000221000002211100002211111111111111"
			# DY:  water
			6:  str_temp = "000000000000000000000000000000013wwww310013wwww310113wwww31111133331111111111111"
			7:  str_temp = "0000000000006000000000000000000000000000013wwww310113wwww31111133331111111111111"
		

	elif (room_path == 4): # DY:  shop

		str_temp = "111111111111111111111111221111111l000211...000W010...00000k0..Kiiii000bbbbbbbbbb"
		
		match gml.rand(1,7):
		
			1:  shop_type = "general"
			2:  shop_type = "bomb"
			3:  shop_type = "weapon"
			4:  shop_type = "rare"
			5:  shop_type = "clothing"
			6:
				shop_type = "craps"
				str_temp = "11111111111111111111111122111111Kl000211..bQ00W010.0+00000k0.q+uu00000bbbbbbbbbb"
			7:
				shop_type = "kissing"
				str_temp = "111111111111111111111111221111111l000211...000W010...00000k0..K00D0000bbbbbbbbbb"
				game.damsel = true
		   

	elif (room_path == 5): # DY:  shop

		str_temp = "111111111111111111111111221111112000l11101W0000...0k00000...000iiiiK..bbbbbbbbbb"
			
		match gml.rand(1,7):
		
			1:  shop_type = "general"
			2:  shop_type = "bomb"
			3:  shop_type = "weapon"
			4:  shop_type = "rare"
			5:  shop_type = "clothing"
			6:
				shop_type = "craps"
				str_temp = "111111111111111111111111221111112000lK1101W0Q00b..0k00000+0.00000uu+q.bbbbbbbbbb"
			7:
				shop_type = "kissing"
				str_temp = "111111111111111111111111221111112000l11101W0000...0k00000...0000D00K..bbbbbbbbbb"
				game.damsel = true
		

	elif (room_path == 7): # DY:  Lake Bottom

		match gml.rand(1,8):
		
			1:  str_temp = "wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww"
			2:  str_temp = "wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww,,,,,,,,,,"
			3:  str_temp = "wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww,,wwwwww,,wwwwwwwwwwwwwwwwwwww,,,,,,,,,,"
			4:  str_temp = "wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww,v,wwwwwwwwwv,wwwwwww,v,wwwwww,,v,,,,,ww"
			5:  str_temp = "wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww,v,wwwwww,vwwwwwwww,v,ww,,,,,,v,,"
			6:  str_temp = "wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww,,wwwwwww,vv,wwwwww,vv,wwwww,,vv,,ww,,,vvvv,,,"
			7:  str_temp = "wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww,,,,wwwww,vvvv,www,v,w,vv,ww,wwww,vv,,,,,,,,,,,"
			8:  str_temp = "wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww,,,,wwwww,vvvv,www,vv,w,v,w,vv,wwww,w,,,,,,,,,,"
		

	elif (room_path == 8): # DY:  Lake Top

		if (global.room_path[[LevelGeneration.scr_get_room_x(x), LevelGeneration.scr_get_room_y(y-128)]] == 2):
			n = gml.rand(1,5)
		else:
			n = gml.rand(1,8)
		match n:
		
			1:  str_temp = "000000000000000000000001111000w,,vvvv,,wwwww,,wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww"
			2:  str_temp = "000000000000000000001200000000vvwwwwwwww,wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww"
			3:  str_temp = "000000000000000000000000000021wwwwwwwwvvwwwwwwwww,wwwwwwwwwwwwwwwwwwwwwwwwwwwwww"
			4:  str_temp = "000000000000000000000000000000wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww"
			5:  str_temp = "000000000000000000000001111000w,,vvvv,,wwww,vv,wwwwwwwvvwwwwwwww,,wwwwwwwwwwwwww"
			6:  str_temp = "000022000000021120000001111000w,,vvvv,,wwww,vv,wwwwwwwvvwwwwwwww,,wwwwwwwwwwwwww"
			7:  str_temp = "600006000000000000000000000000wwwvvvvwwwwwww,,wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww"
			8:  str_temp = "000022000000021120000221111220www,,,,wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww"
		

	elif (room_path == 9): # DY:  Mega Mouth

		match gml.rand(1,1):
		
			1:  str_temp = "wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwJwwwwwwwwwwwwwwwwwwwwwwwwww,,,,,,,,,,"
		

	else: # DY:  drop

		if (room_path_above != 2): n = gml.rand(1,6)
		else: n = gml.rand(1,5)
		match n:
		
			1:  str_temp = "00000000000000000000000000000000000000000000000000000000002200000002111111202111"
			2:  str_temp = "000000000000000000000000000000000000000000000000002200000000112T0000001111202111"
			3:  str_temp = "00000000006000000000000000000000000000000000000000000000000000000000001000000001"
			4:  str_temp = "00000000000000000000000000000000000000000000000000000000000020000222221000111111"
			5:  str_temp = "00000000000000000000000000000000000000000000000000000000000022222000021111110001"
			# DY: 
			6:  str_temp = "11111111111111111111120000002100000000000000000000022000022021120021121111001111"
		


	# DY:  Add obstacles

	for i in range(1, 81):

		var j = i
	  
		var str_obs1 = "00000"
		var str_obs2 = "00000"
		var str_obs3 = "00000"
		var str_obs4 = "00000"
		var tile = gml.string_char_at(str_temp, i)
		
		if (tile == "8"):
		
			n = gml.rand(1,1)
			match n:
			
				1:
					str_obs1 = "00900"
					str_obs2 = "01110"
					str_obs3 = "11111"
			
		
		elif (tile == "5"): # DY:  ground
		
			if (gml.rand(1,8) == 1): n = gml.rand(100,102)
			else: n = gml.rand(1,2)
			match n:
			
				1:
					str_obs1 = "00000"
					str_obs2 = "00000"
					str_obs3 = "22222"
				2:
					str_obs1 = "00000"
					str_obs2 = "22222"
					str_obs3 = "11111"
				100:
					str_obs1 = "00000"
					str_obs2 = "00000"
					str_obs3 = "0T022"
				101:
					str_obs1 = "00000"
					str_obs2 = "00000"
					str_obs3 = "20T02"
				102:
					str_obs1 = "00000"
					str_obs2 = "00000"
					str_obs3 = "220T0"
			
		
		elif (tile == "6"): # DY:  air
		
			n = gml.rand(1,4)
			match n:
			
				1:
					str_obs1 = "11112"
					str_obs2 = "22220"
					str_obs3 = "00000"
				2:
					str_obs1 = "21111"
					str_obs2 = "02222"
					str_obs3 = "00000"
				3:
					str_obs1 = "22222"
					str_obs2 = "00000"
					str_obs3 = "00000"
				4:
					str_obs1 = "11111"
					str_obs2 = "21112"
					str_obs3 = "00000"
			
		
		elif (tile == "V"): # DY:  vines
		
			n = gml.rand(1,3)
			match n:
			
				1:
					str_obs1 = "L0L0L"
					str_obs2 = "L0L0L"
					str_obs3 = "L000L"
					str_obs4 = "L0000"
				2:
					str_obs1 = "L0L0L"
					str_obs2 = "L0L0L"
					str_obs3 = "L000L"
					str_obs4 = "0000L"
				3:
					str_obs1 = "0L0L0"
					str_obs2 = "0L0L0"
					str_obs3 = "0L0L0"
					str_obs4 = "000L0"
			
		
		
		if (tile == "5" or tile == "6" or tile == "8" or tile == "V"):
		
			str_temp = gml.string_delete(str_temp, j, 5)
			str_temp = gml.string_insert(str_obs1, str_temp, j)
			j += 10
			str_temp = gml.string_delete(str_temp, j, 5)
			str_temp = gml.string_insert(str_obs2, str_temp, j)
			j += 10
			str_temp = gml.string_delete(str_temp, j, 5)
			str_temp = gml.string_insert(str_obs3, str_temp, j)
		
		if (tile == "V"):
		
			j += 10
			str_temp = gml.string_delete(str_temp, j, 5)
			str_temp = gml.string_insert(str_obs4, str_temp, j)
		

	assert(str_temp.length() == 80)
	# DY:  Generate the tiles
	for j in range(0, 8):

		for i in range(1, 11):
			var obj
			var tile = gml.string_char_at(str_temp, i+j*10)
			var xpos = x + (i-1)*16
			var ypos = y + j*16
			if (tile == "1" and not gml.collision_point(xpos, ypos, "solid", 0, 0)):
			
				gml.instance_create(xpos, ypos, Objects.lush)
			
			elif (tile == "2" and gml.rand(1,2) == 1 and not gml.collision_point(xpos, ypos, "solid", 0, 0)):
			
				gml.instance_create(xpos, ypos, Objects.lush)
			
			if (tile == "t" and not gml.collision_point(xpos, ypos, "solid", 0, 0)):
			
				gml.instance_create(xpos, ypos, Objects.temple)
			
			if (tile == "r" and not gml.collision_point(xpos, ypos, "solid", 0, 0)):
			
				if (gml.rand(1,2) == 1): gml.instance_create(xpos, ypos, Objects.temple)
				else: gml.instance_create(xpos, ypos, Objects.lush)
			
			elif (tile == "3" and not gml.collision_point(xpos, ypos, "solid", 0, 0)):
			
				if (gml.rand(1,2) == 1): gml.instance_create(xpos, ypos, Objects.water_swim)
				else: gml.instance_create(xpos, ypos, Objects.lush)
			
			elif (tile == "L"): gml.instance_create(xpos, ypos, Objects.vine)
			elif (tile == "P"): gml.instance_create(xpos, ypos, Objects.vine_top)
			elif (tile == "7" and gml.rand(1,3) == 1): gml.instance_create(xpos, ypos, Objects.spikes)
			elif (tile == "s"): gml.instance_create(xpos, ypos, Objects.spikes)
			elif (tile == "4"): gml.instance_create(xpos, ypos, Objects.push_block)
			elif (tile == "9"):
			
				var block = gml.instance_create(xpos, ypos+16, Objects.lush)
				if (LevelGeneration.scr_get_room_x(x) == global.start_room_x and LevelGeneration.scr_get_room_y(y) == global.start_room_y):
					gml.instance_create(xpos, ypos, Objects.entrance)
				else:
				
					gml.instance_create(xpos, ypos, Objects.exit)
					global.exit_x = xpos
					global.exit_y = ypos
					block.invincible = true
				
			
			elif (tile == "c"):
			
				gml.instance_create(xpos, ypos, Objects.chest)
			
			elif (tile == "d"):
			
				gml.instance_create(xpos, ypos, Objects.water_swim)
				gml.instance_create(xpos, ypos, Objects.chest)
			
			elif (tile == "w"):
			
				gml.instance_create(xpos, ypos, Objects.water_swim)
			
			elif (tile == "v"):
			
				gml.instance_create(xpos, ypos, Objects.water_swim)
				gml.instance_create(xpos, ypos, Objects.lush)
			
			elif (tile == ","):
			
				gml.instance_create(xpos, ypos, Objects.water_swim)
				if (gml.rand(1,2)==1): gml.instance_create(xpos, ypos, Objects.lush)
			
			elif (tile == "J"):
			
				gml.instance_create(xpos, ypos, Objects.water_swim)
				gml.instance_create(xpos, ypos, Objects.jaws)
			
			elif (tile == "I"):
			
				gml.instance_create(xpos+16, ypos+12, Objects.gold_idol)
			
			elif (tile == "C"):
			
				gml.instance_create(xpos+16, ypos+12, Objects.crystal_skull)
			
			elif (tile == "." and not gml.collision_point(xpos, ypos, "solid", 0, 0)):
			
				obj = gml.instance_create(xpos, ypos, Objects.lush)
				obj.shop_wall = true
			
			elif (tile == "Q"):
			
				if (shop_type == "craps"):
				
					gml.tile_add("bg_dice_sign", 0, 0, 48, 32, xpos, ypos, 9004)
				
			
			elif (tile == "q"):
			
				n = gml.rand(1,6)
				scr_generate_item(xpos+8, ypos+8, 1)
				#obj.in_dice_house = true #---[FLAG] obj doesn't appear to refer to anything in the original script. commenting out to get code to work
			
			elif (tile == "+"):
			
				obj = gml.instance_create(xpos, ypos, Objects.solid)
				obj.sprite_index = "ice_block"
				obj.shop_wall = true
			
			elif (tile == "W"):
			
				if (global.murderer or global.thief_level > 0):
				
					if (global.is_damsel): gml.tile_add("bg_wanted", 32, 0, 32, 32, xpos, ypos, 9004)
					elif (global.is_tunnel_man): gml.tile_add("bg_wanted", 64, 0, 32, 32, xpos, ypos, 9004)
					else: gml.tile_add("bg_wanted", 0, 0, 32, 32, xpos, ypos, 9004)
				
			
			elif (tile == "b"):
			
				obj = gml.instance_create(xpos, ypos, Objects.brick_smooth)
				obj.sprite_index = "lush_smooth"
				obj.shop_wall = true
			
			elif (tile == "l"):
			
				if (game.damsel): gml.instance_create(xpos, ypos, Objects.lamp_red)
				else: gml.instance_create(xpos, ypos, Objects.lamp)
			
			elif (tile == "K"):
			
				obj = gml.instance_create(xpos, ypos, Objects.shopkeeper)
				obj.style = shop_type
			
			elif (tile == "k"):
			
				obj = gml.instance_create(xpos, ypos, Objects.sign)
				if (shop_type == "general"): obj.sprite_index = "sign_general"
				elif (shop_type == "bomb"): obj.sprite_index = "sign_bomb"
				elif (shop_type == "weapon"): obj.sprite_index = "sign_weapon"
				elif (shop_type == "clothing"): obj.sprite_index = "sign_clothing"
				elif (shop_type == "rare"): obj.sprite_index = "sign_rare"
				elif (shop_type == "craps"): obj.sprite_index = "sign_craps"
				elif (shop_type == "kissing"): obj.sprite_index = "sign_kissing"
			
			elif (tile == "i"):
			
				scr_shop_items_gen(xpos, ypos, shop_type)
			
			elif (tile == "u"):
			
				gml.instance_create(xpos+8, ypos+8, Objects.dice)
			
			elif (tile == "D"):
			
				obj = gml.instance_create(xpos+8, ypos+8, Objects.damsel)
				obj.for_sale = true
				obj.status = 5
			
			elif (tile == "B"):
			
				obj = gml.instance_create(xpos, ypos, Objects.trap_block)
				var gold_idol = gml.get_instance("gold_idol")
				obj.death_timer = 40-abs(obj.position.x-(gold_idol.position.x-8))
				if (obj.death_timer < 0): obj.death_timer = 0
			
			elif (tile == "x"):
			
				gml.instance_create(xpos, ypos, Objects.sac_altar_left)
				gml.instance_create(xpos+16, ypos, Objects.sac_altar_right)
				gml.tile_add("bg_kali_body", 0, 0, 64, 64, xpos-16, ypos-48, 10001)
				gml.instance_create(xpos+16, ypos-80+16, Objects.kali_head)
			
			elif (tile == "p"):
			
				if (gml.rand(1,2)): gml.instance_create(xpos, ypos, Objects.fake_bones)
				else: gml.instance_create(xpos+8, ypos+10, Objects.jar)
			
			elif (tile == "T"):
			
				gml.instance_create(xpos, ypos, Objects.tree)
				n = 0
				var tx = xpos
				var ty = ypos-16
				var b1 = false
				var b2 = false
				for m in range(0, 5):
				
					if (gml.rand(0,m) > 2):
					
						break
					
					else:
					
						if (not gml.collision_point(tx, ty-16, "solid", 0, 0) and
							not gml.collision_point(tx-16, ty-16, "solid", 0, 0) and
							not gml.collision_point(tx+16, ty-16, "solid", 0, 0)):
						
							gml.instance_create(tx, ty, Objects.tree)
							if (m < 4):
							
								if (gml.rand(1,5) < 4 and not b1):
								
									gml.instance_create(tx+16, ty, Objects.tree_branch)
									b1 = true
								
								elif (b1): b1 = false
								if (gml.rand(1,5) < 4 and not b2):
								
									gml.instance_create(tx-16, ty, Objects.tree_branch)
									b2 = true
								
								elif (b2): b2 = false
							
						
						else:
						
							break
						
					
					ty -= 16
				
				gml.instance_create(tx-16, ty+16, Objects.leaves)
				gml.instance_create(tx+16, ty+16, Objects.leaves)


func scr_room_gen_yeti(x, y):
	# DY: 
	# DY:  scr_room_gen_yeti()
	# DY: 
	# DY:  Room generation for the Yeti Cave that appears randomly in Area 3: Ice.
	# DY: 

	#/**********************************************************************************
		#Copyright (c) 2008, 2009 Derek Yu and Mossmouth, LLC
		#
		#This file is part of Spelunky.
#
		#You can redistribute and/or %ify Spelunky, including its source code, under
		#the terms of the Spelunky User License.
#
		#Spelunky is distributed in the hope that it will be entertaining and useful,
		#but WITHOUT WARRANTY.  Please see the Spelunky User License for more details.
#
		#The Spelunky User License should be available in "Game Information", which
		#can be found in the Resource Explorer, or as an external file called COPYING.
		#If not, please obtain a new copy of Spelunky from <http:# DY: spelunkyworld.com/>
		#
	#***********************************************************************************/

	#/*
	#Note:
#
	#ROOMS are 10x8 tile areas.
#
	#str_temp = "0000000000
			   #0000000000
			   #0000000000
			   #0000000000
			   #0000000000
			   #0000000000
			   #0000000000
			   #0000000000"
#
	#OBSTACLES are 5x3 tile chunks that are randomized within rooms.
			   #
	#str_obs = "00000
			  #00000
			  #00000"
			  #
	#The string representing a room or obstacle must be laid out unbroken:
	#*/
	var str_temp = "00000000000000000000000000000000000000000000000000000000000000000000000000000000"

	var room_path = global.room_path[[LevelGeneration.scr_get_room_x(x), LevelGeneration.scr_get_room_y(y)]]
	var room_path_above = -1
	var n
	var shop_type
	var game = gml.get_instance("game")
	if (LevelGeneration.scr_get_room_y(y) != 0): room_path_above = global.room_path[[LevelGeneration.scr_get_room_x(x), LevelGeneration.scr_get_room_y(y-128)]]

	if (LevelGeneration.scr_get_room_x(x) == global.start_room_x and LevelGeneration.scr_get_room_y(y) == global.start_room_y): # DY:  start room

		if (room_path == 2): n = gml.rand(3,4)
		else: n = gml.rand(1,2)
		match n:
		
			1:  str_temp = "60000600000000000000000000000000000000000008000000000000000000000000001111111111"
			2:  str_temp = "11111111112222222222000000000000000000000008000000000000000000000000001111111111"
			# DY:  hole
			3:  str_temp = "60000600000000000000000000000000000000000008000000000000000000000000002021111120"
			4:  str_temp = "11111111112222222222000000000000000000000008000000000000000000000000002021111120"
		

	elif (LevelGeneration.scr_get_room_x(x) == global.end_room_x and LevelGeneration.scr_get_room_y(y) == global.end_room_y): # DY:  end room

		if (room_path_above == 2): n = gml.rand(1,4)
		else: n = gml.rand(3,6)
		match n:
		
			1:  str_temp = "00000000000000000000000000000000000000000008000000000000000000000000001111111111"
			2:  str_temp = "00000000006000060000000000000000000000000008000000000000000000000000001111111111"
			3:  str_temp = "00000000000010021110001001111000110111129012000000111111111021111111201111111111"
			4:  str_temp = "00000000000111200100011110010021111011000000002109011111111102111111121111111111"
			# DY:  no drop
			5:  str_temp = "60000600000000000000000000000000000000000008000000000000000000000000001111111111"
			6:  str_temp = "11111111112222222222000000000000000000000008000000000000000000000000001111111111"
		

	elif (room_path == 0 and gml.rand(1,4) < 4): # DY:  side room

		if (game.idol or LevelGeneration.scr_get_room_y(y) == 3):
			n = gml.rand(1,2)
		else:
		
			n = gml.rand(1,1)
			if (n == 10): game.idol = true
			# DY:  else: n = gml.rand(1,9)
		

		match n:
		
			# DY:  upper plats
			1:  str_temp = "00000000000010111100000000000000011010000050000000000000000000000000001111111111"
			# DY:  high walls
			2:  str_temp = "000000000011tttttt11120000002112002200211200000021120022002111ssssss111111111111"
			# DY:  idols
			# DY:  10:  str_temp = "22000000220000B0000000000000000000000000000000000000000000000000I000001111A01111"
		

	elif (room_path == 0 or room_path == 1): # DY:  main room

		if (not gml.instance_exists("yeti_king")):
		
			n = gml.rand(1,10)
			if (y > 384): n = 10
			elif (y > 256 and gml.rand(1,2) == 1): n = 10
			elif (y > 128 and gml.rand(1,3) == 1): n = 10
		
		else: n = gml.rand(1,9)

		match n:
		
			# DY:  basic rooms
			1:  str_temp = "60000600000000000000000000000000000000000050000000000000000000000000001111111111"
			2:  str_temp = "60000600000000000000000000000000000000005000050000000000000000000000001111111111"
			3:  str_temp = "60000600000000000000000000000000050000000000000000000000000011111111111111111111"
			4:  str_temp = "60000600000000000000000600000000000000000000000000000222220000111111001111111111"
			5:  str_temp = "11111111112222222222000000000000000000000050000000000000000000000000001111111111"
			6:  str_temp = "11111111112111111112022222222000000000000050000000000000000000000000001111111111"
			# DY:  low ceiling
			7:  str_temp = "11111111112111111112211111111221111111120111111110022222222000000000001111111111"
			# DY:  thin ice
			8:  str_temp = "6000060000000000000000000000000000000000000000000000000000000000000000tttttttttt"
			9:  str_temp = "6000060000000000000000000000000000000000000000000001tttttt1021ssssss121111111111"
			# DY:  yeti king
			10:  str_temp = "iiiiiiiiiijiiiiiiiij0jjjjjjjj0000000000000000000000000Y0000000yy00yy001111111111"
		

	elif (room_path == 3): # DY:  main room

		match gml.rand(1,9):
		
		
			# DY:  basic rooms
			1:  str_temp = "00000000000000000000000000000000000000000050000000000000000000000000001111111111"
			2:  str_temp = "00000000000000000000000000000000000000005000050000000000000000000000001111111111"
			3:  str_temp = "00000000000000000000000000000050000500000000000000000000000011111111111111111111"
			4:  str_temp = "00000000000000000000000600000000000000000000000000000111110000111111001111111111"
			# DY:  upper plats
			5:  str_temp = "00000000000111111110001111110000000000005000050000000000000000000000001111111111"
			6:  str_temp = "00000000000000000000000000000000000000000021111200021111112021111111121111111111"
			7:  str_temp = "10000000011112002111111200211100000000000022222000111111111111111111111111111111"
			# DY:  thin ice
			8:  str_temp = "000000000000000000000000000000000000000000000000000000000000ssssssssss1111111111"
			9:  str_temp = "100000000111110011111111tt111111200002110000000000000000000011100001111111tt1111"
		

	elif (room_path == 4): # DY:  shop


		str_temp = "111111111111111111111111221111111l000211...000W010...00000k0..K$$$$000bbbbbbbbbb"

		match gml.rand(1,7):
		
			1:  shop_type = "general"
			2:  shop_type = "bomb"
			3:  shop_type = "weapon"
			4:  shop_type = "rare"
			5:  shop_type = "clothing"
			6:
				shop_type = "craps"
				str_temp = "11111111111111111111111122111111Kl000211..bQ00W010.0+00000k0.q+dd00000bbbbbbbbbb"
			7:
				shop_type = "kissing"
				str_temp = "111111111111111111111111221111111l000211...000W010...00000k0..K00D0000bbbbbbbbbb"
				game.damsel = true
		   


	elif (room_path == 5): # DY:  shop


		str_temp = "111111111111111111111111221111112000l11101W0000...0k00000...000$$$$K..bbbbbbbbbb"
		
		match gml.rand(1,7):
		
			1:  shop_type = "general"
			2:  shop_type = "bomb"
			3:  shop_type = "weapon"
			4:  shop_type = "rare"
			5:  shop_type = "clothing"
			6:
				shop_type = "craps"
				str_temp = "111111111111111111111111221111112000lK1101W0Q00b..0k00000+0.00000dd+q.bbbbbbbbbb"
			7:
				shop_type = "kissing"
				str_temp = "111111111111111111111111221111112000l11101W0000...0k00000...0000D00K..bbbbbbbbbb"
				game.damsel = true
		

	elif (room_path == 8): # DY:  snake pit

		match gml.rand(1,1):
		
			1:  str_temp = "111000011111s0000s11111200211111s0000s11111200211111s0000s11111200211111s0000s11"
		

	elif (room_path == 9): # DY:  snake pit bottom

		match gml.rand(1,1):
		
			1:  str_temp = "111000011111s0000s1111100001111100S0001111S0110S11111STTS11111111111111111111111"
			

	else: # DY:  drop

		if (room_path == 7): n = gml.rand(4,12)
		elif (room_path_above != 2): n = gml.rand(1,12)
		else: n = gml.rand(1,8)
		match n:
		
			1:  str_temp = "00000000006000060000000000000000000000006000060000000000000000000000000000000000"
			2:  str_temp = "00000000006000060000000000000000000000000000050000000000000000000000001202111111"
			3:  str_temp = "00000000006000060000000000000000000000050000000000000000000000000000001111112021"
			4:  str_temp = "00000000006000060000000000000000000000000000000000000000000002200002201112002111"
			5:  str_temp = "00000000000000220000000000000000200002000112002110011100111012000000211111001111"
			6:  str_temp = "00000000000060000000000000000000000000000000000000001112220002100000001110111111"
			7:  str_temp = "00000000000060000000000000000000000000000000000000002221110000000001201111110111"
			8:  str_temp = "00000000000060000000000000000000000000000000000000002022020000100001001111001111"
			9:  str_temp = "11111111112222222222000000000000000000000000000000000000000000000000001120000211"
			10:  str_temp = "11111111112222111111000002211100000002110000000000200000000000000000211120000211"
			11:  str_temp = "11111111111111112222111220000011200000000000000000000000000012000000001120000211"
			12:  str_temp = "11111111112111111112021111112000211112000002112000000022000002200002201111001111"
		
	assert(str_temp.length() == 80) #---TODO: double-check shop varieties and make sure there are no issues
	# DY:  Add obstacles

	for i in range(1, 81):

		var j = i
	  
		var str_obs1 = "00000"
		var str_obs2 = "00000"
		var str_obs3 = "00000"
		var tile = gml.string_char_at(str_temp, i)
		
		if (tile == "8"):
		
			match gml.rand(1,7):
			
				1:
					str_obs1 = "00900"
					str_obs2 = "01110"
					str_obs3 = "11111"
				2:
					str_obs1 = "00900"
					str_obs2 = "02120"
					str_obs3 = "02120"
				3:
					str_obs1 = "00000"
					str_obs2 = "00000"
					str_obs3 = "92222"
				4:
					str_obs1 = "00000"
					str_obs2 = "00000"
					str_obs3 = "22229"
				5:
					str_obs1 = "00000"
					str_obs2 = "11001"
					str_obs3 = "19001"
				6:
					str_obs1 = "00000"
					str_obs2 = "10011"
					str_obs3 = "10091"
				7:
					str_obs1 = "00000"
					str_obs2 = "12021"
					str_obs3 = "12921"
			
		
		elif (tile == "5"): # DY:  ground
		
			match gml.rand(1,16):
			
				1:
					str_obs1 = "11111"
					str_obs2 = "00000"
					str_obs3 = "00000"
				2:
					str_obs1 = "00000"
					str_obs2 = "11110"
					str_obs3 = "00000"
				3:
					str_obs1 = "00000"
					str_obs2 = "01111"
					str_obs3 = "00000"
				4:
					str_obs1 = "00000"
					str_obs2 = "00000"
					str_obs3 = "11111"
				5:
					str_obs1 = "00000"
					str_obs2 = "20200"
					str_obs3 = "17177"
				6:
					str_obs1 = "00000"
					str_obs2 = "02020"
					str_obs3 = "71717"
				7:
					str_obs1 = "00000"
					str_obs2 = "00202"
					str_obs3 = "77171"
				8:
					str_obs1 = "00000"
					str_obs2 = "22200"
					str_obs3 = "11100"
				9:
					str_obs1 = "00000"
					str_obs2 = "02220"
					str_obs3 = "01110"
				10:
					str_obs1 = "00000"
					str_obs2 = "00222"
					str_obs3 = "00111"
				11:
					str_obs1 = "11100"
					str_obs2 = "22200"
					str_obs3 = "00000"
				12:
					str_obs1 = "01110"
					str_obs2 = "02220"
					str_obs3 = "00000"
				13:
					str_obs1 = "00111"
					str_obs2 = "00222"
					str_obs3 = "00000"
				14:
					str_obs1 = "00000"
					str_obs2 = "02220"
					str_obs3 = "21112"
				15:
					str_obs1 = "00000"
					str_obs2 = "20100"
					str_obs3 = "77117"
				16:
					str_obs1 = "00000"
					str_obs2 = "00102"
					str_obs3 = "71177"
			
		
		elif (tile == "6"): # DY:  air
		
			match gml.rand(1,10):
			
				1:
					str_obs1 = "11111"
					str_obs2 = "00000"
					str_obs3 = "00000"
				2:
					str_obs1 = "22222"
					str_obs2 = "00000"
					str_obs3 = "00000"
				3:
					str_obs1 = "11100"
					str_obs2 = "22200"
					str_obs3 = "00000"
				4:
					str_obs1 = "01110"
					str_obs2 = "02220"
					str_obs3 = "00000"
				5:
					str_obs1 = "00111"
					str_obs2 = "00222"
					str_obs3 = "00000"
				6:
					str_obs1 = "00000"
					str_obs2 = "01110"
					str_obs3 = "00000"
				7:
					str_obs1 = "00000"
					str_obs2 = "01110"
					str_obs3 = "02220"
				8:
					str_obs1 = "00000"
					str_obs2 = "02220"
					str_obs3 = "01110"
				9:
					str_obs1 = "00000"
					str_obs2 = "00222"
					str_obs3 = "00111"
				10:
					str_obs1 = "00000"
					str_obs2 = "22200"
					str_obs3 = "11100"
			
		
		
		if (tile == "5" or tile == "6" or tile == "8"):
		
			str_temp = gml.string_delete(str_temp, j, 5)
			str_temp = gml.string_insert(str_obs1, str_temp, j)
			j += 10
			str_temp = gml.string_delete(str_temp, j, 5)
			str_temp = gml.string_insert(str_obs2, str_temp, j)
			j += 10
			str_temp = gml.string_delete(str_temp, j, 5)
			str_temp = gml.string_insert(str_obs3, str_temp, j)
		


	# DY:  Generate the tiles
	for j in range(0, 8):

		for i in range(1, 11):
			var obj
			var tile = gml.string_char_at(str_temp, i+j*10)
			var xpos = x + (i-1)*16
			var ypos = y + j*16
			if (tile == "1" and not gml.collision_point(xpos, ypos, "solid", 0, 0)):
			
				if (gml.rand(1,6) == 1): gml.instance_create(xpos, ypos, Objects.dark)
				else: gml.instance_create(xpos, ypos, Objects.ice)
			
			if (tile == "2" and gml.rand(1,2) == 1 and not gml.collision_point(xpos, ypos, "solid", 0, 0)):
			
				if (gml.rand(1,6) == 1): gml.instance_create(xpos, ypos, Objects.dark)
				else: gml.instance_create(xpos, ypos, Objects.ice)
			
			if (tile == "t" and not gml.collision_point(xpos, ypos, "solid", 0, 0)):
			
				gml.instance_create(xpos, ypos, Objects.thin_ice)
			
			elif (tile == "L"): gml.instance_create(xpos, ypos, Objects.ladder_orange)
			elif (tile == "P"): gml.instance_create(xpos, ypos, Objects.ladder_top)
			elif (tile == "7" and gml.rand(1,3) == 1): gml.instance_create(xpos, ypos, Objects.spikes)
			elif (tile == "4" and gml.rand(1,4) == 1): gml.instance_create(xpos, ypos, Objects.push_block)
			elif (tile == "9"):
			
				var block = gml.instance_create(xpos, ypos+16, Objects.dark)
				if (LevelGeneration.scr_get_room_x(x) == global.start_room_x and LevelGeneration.scr_get_room_y(y) == global.start_room_y):
					gml.instance_create(xpos, ypos, Objects.entrance)
				else:
				
					gml.instance_create(xpos, ypos, Objects.exit)
					global.exit_x = xpos
					global.exit_y = ypos
					block.invincible = true
				
			
			elif (tile == "A"):
			
				gml.instance_create(xpos, ypos, Objects.altar_left)
				gml.instance_create(xpos+16, ypos, Objects.altar_right)
			
			elif (tile == "a"):
			
				gml.instance_create(xpos, ypos, Objects.chest)
			
			elif (tile == "I"):
			
				gml.instance_create(xpos+16, ypos+8, Objects.gold_idol)
			
			elif (tile == "B"):
			
				gml.instance_create(xpos+16, ypos+12, Objects.giant_tiki_head)
			
			elif (tile == "." and not gml.collision_point(xpos, ypos, "solid", 0, 0)):
			
				obj = gml.instance_create(xpos, ypos, Objects.dark)
				obj.shop_wall = true
			
			elif (tile == "Q"):
			
				if (shop_type == "craps"):
				
					gml.tile_add("bg_dice_sign", 0, 0, 48, 32, xpos, ypos, 9004)
				
			
			elif (tile == "q"):
			
				n = gml.rand(1,6)
				scr_generate_item(xpos+8, ypos+8, 1)
				obj.in_dice_house = true
			
			elif (tile == "+"):
			
				obj = gml.instance_create(xpos, ypos, Objects.solid)
				obj.sprite_index = "ice_block"
				obj.shop_wall = true
			
			elif (tile == "W"):
			
				if (global.murderer or global.thief_level > 0):
				
					if (global.is_damsel): gml.tile_add("bg_wanted", 32, 0, 32, 32, xpos, ypos, 9004)
					elif (global.is_tunnel_man): gml.tile_add("bg_wanted", 64, 0, 32, 32, xpos, ypos, 9004)
					else: gml.tile_add("bg_wanted", 0, 0, 32, 32, xpos, ypos, 9004)
				
			
			elif (tile == "b"):
			
				obj = gml.instance_create(xpos, ypos, Objects.brick_smooth)
				obj.sprite_index = "dark_smooth"
				obj.shop_wall = true
			
			elif (tile == "l"):
			
				if (game.damsel): gml.instance_create(xpos, ypos, Objects.lamp_red)
				else: gml.instance_create(xpos, ypos, Objects.lamp)
			
			elif (tile == "K"):
			
				obj = gml.instance_create(xpos, ypos, Objects.shopkeeper)
				obj.style = shop_type
			
			elif (tile == "k"):
			
				obj = gml.instance_create(xpos, ypos, Objects.sign)
				if (shop_type == "general"): obj.sprite_index = "sign_general"
				elif (shop_type == "bomb"): obj.sprite_index = "sign_bomb"
				elif (shop_type == "weapon"): obj.sprite_index = "sign_weapon"
				elif (shop_type == "clothing"): obj.sprite_index = "sign_clothing"
				elif (shop_type == "rare"): obj.sprite_index = "sign_rare"
				elif (shop_type == "craps"): obj.sprite_index = "sign_craps"
				elif (shop_type == "kissing"): obj.sprite_index = "sign_kissing"
			
			elif (tile == "$"):
			
				scr_shop_items_gen(xpos, ypos, shop_type)
			
			elif (tile == "d"):
			
				gml.instance_create(xpos+8, ypos+8, Objects.dice)
			
			elif (tile == "D"):
			
				obj = gml.instance_create(xpos+8, ypos+8, Objects.damsel)
				obj.for_sale = true
				obj.status = 5
			
			elif (tile == "s"):
			
				gml.instance_create(xpos, ypos, Objects.spikes)
			
			elif (tile == "S"):
			
				gml.instance_create(xpos, ypos, Objects.snake)
			
			elif (tile == "T"):
			
				gml.instance_create(xpos+8, ypos+8, Objects.ruby_big)
			
			elif (tile == "i"):
			
				gml.instance_create(xpos, ypos, Objects.ice)
			
			elif (tile == "j" and gml.rand(1,2) == 1):
			
				gml.instance_create(xpos, ypos, Objects.ice)
			
			elif (tile == "Y"):
			
				gml.instance_create(xpos, ypos, Objects.yeti_king)
			
			elif (tile == "position.y"):
			
				gml.instance_create(xpos, ypos, Objects.yeti)


func scr_room_gen3(x, y):
	# DY: 
	# DY:  scr_room_gen3()
	# DY: 
	# DY:  Room generation for Area 3, the Ice Caves.
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

	#/*
	#Note:
#
	#ROOMS are 10x8 tile areas.
#
	#str_temp = "0000000000
		#0000000000
		#0000000000
		#0000000000
		#0000000000
		#0000000000
		#0000000000
		#0000000000"
#
	#OBSTACLES are 5x3 tile chunks that are randomized within rooms.
			   #
	#str_obs = "00000
		#00000
		#00000"
			  #
	#The string representing a room or obstacle must be laid out unbroken:
	#*/
	var str_temp = "00000000000000000000000000000000000000000000000000000000000000000000000000000000"

	var room_path = global.room_path[[LevelGeneration.scr_get_room_x(x), LevelGeneration.scr_get_room_y(y)]]
	var n
	var game = gml.get_instance("game")
	var shop_type
	if (LevelGeneration.scr_get_room_x(x) == global.start_room_x and LevelGeneration.scr_get_room_y(y) == global.start_room_y): # DY:  start room

		if (room_path == 2): n = gml.rand(2,2)
		else: n = gml.rand(1,1)
		match n:
		
			1:  str_temp = "00000000000000000000000000000000000000000008000000000000000000000000001111111111"
			# DY:  hole
			2:  str_temp = "00000000000000000000000000000000000000000008000000000000000000000000000011111110"
		

	elif (LevelGeneration.scr_get_room_x(x) == global.end_room_x and LevelGeneration.scr_get_room_y(y) == global.end_room_y): # DY:  end room

		n = gml.rand(1,1)
		match n:
		
			1:  str_temp = "00000000000000000000000000000000000000000008000000000000000000000000001111111111"
		

	elif (room_path == 0 and gml.rand(1,2) == 1): # DY:  side room

		if (not game.altar and gml.rand(1,12) == 1):
		
			n = 10
			game.altar = true
		
		elif (game.idol):
		
			n = gml.rand(1,8)
		
		else:
		
			n = gml.rand(1,9)
			if (n == 9): game.idol = true
		

		match n:
		
			# DY:  empty
			1:  str_temp = "00000000000000000000000000000000000000000000000000000000000000000000000000000000"
			# DY:  steps
			2:  str_temp = "10000000001000000000111000000022201100000000220100000000010000000001110000000222"
			3:  str_temp = "00000000010000000001000000011100001102220010220000001000000011100000002220000000"
			# DY:  treasure tower
			4:  str_temp = "000000000000021120000001111000000111100000f1111f000002222000f00000000f0000000000"
			5:  str_temp = "0000000000000000000000220022000011ff11000011001200202100120220210012020002002000"
			6:  str_temp = "0jiiiiiij00jij00jij0jjii0jiij0000000jij0jjiij0iij00jiij0jijj0jiij000000jjiiiiijj"
			7:  str_temp = "0jiiiiiij00jij00jij00jii0jiijj0jij0000000jij0jiijj0jij0jiij000000jiij00jjiiiiijj"
			8:  str_temp = "011iiii110000jjjj0000000ii00000000jj00000000ii00000000jj00000000ii00000002222000"
			# DY:  idol
			9:  str_temp = "00000000000000I000000000cc000000000000000000000000000000000000007700000000110000"
			# DY:  altars
			10:  str_temp = "000000000000000000000000000000000000000000000000000000x0000002211112201111111111"
		

	elif ((room_path == 0 or room_path == 1 or room_path == 2) and (gml.rand(1,10) < 10)):

		match gml.rand(1,9):
		
			# DY:  basic rooms
			1:  str_temp = "00000000000000000000000000000000006000000000000000000000000000021111120000222220"
			2:  str_temp = "00000000000000000000000000000060000000000000000000000000000021111120000222220000"
			3:  str_temp = "11111200001111112000111111200000002120001120000000112021200000001120001111120000"
			4:  str_temp = "00002111110002111111000211111100021200000000000211000212021100021100000000211111"
			5:  str_temp = "000000000000000000jj00f2100iii00021000000002111iii000021111100000222220000000000"
			# DY:  falling platforms
			6:  str_temp = "00000000000000000000000000000000000000000000000000F00F00F00000000000000000000000"
			# DY:  icy
			7:  str_temp = "00000000000000000000000000000000000000000iiiiiiii00021ii120000022220000000000000"
			8:  str_temp = "000000000000000000000iiiiiiii00021ii12000002222000000000000000000000000000000000"
			9:  str_temp = "0011111100000222200000000000000000000000jjjjjjjjjjiiiiiiiiii00000000001111111111"
		

	elif (room_path == 4): # DY:  shop

		str_temp = "111111111111111111111111221111111l000211...000W010...00000k0..K$$$$000::::::::::"
		
		match gml.rand(1,7):
		
			1:  shop_type = "general"
			2:  shop_type = "bomb"
			3:  shop_type = "weapon"
			4:  shop_type = "rare"
			5:  shop_type = "clothing"
			6:
				shop_type = "craps"
				str_temp = "11111111111111111111111122111111Kl000211..:Q00W010.0+00000k0.q+uu00000::::::::::"
			7:
				shop_type = "kissing"
				str_temp = "111111111111111111111111221111111l000211...000W010...00000k0..K00!0000::::::::::"
				game.damsel = true
		   


	elif (room_path == 5): # DY:  shop

		str_temp = "111111111111111111111111221111112000l11101W0000...0k00000...000$$$$K..::::::::::"
		
		match gml.rand(1,7):
		
			1:  shop_type = "general"
			2:  shop_type = "bomb"
			3:  shop_type = "weapon"
			4:  shop_type = "rare"
			5:  shop_type = "clothing"
			6:
				shop_type = "craps"
				str_temp = "111111111111111111111111221111112000lK1101W0Q00:..0k00000+0.00000uu+q.::::::::::"
			7:
				shop_type = "kissing"
				str_temp = "111111111111111111111111221111112000l11101W0000...0k00000...0000!00K..::::::::::"
				game.damsel = true
		

	elif (room_path == 6): # DY:  Moai

		match gml.rand(1,2):
		
			1:  str_temp = "000000000000000M000000000000000000000000021110002002111mmm2000111111000000000000"
			2:  str_temp = "000000000000M000000000000000000000000000020001112002mmm1112000111111000000000000"
		

	elif (room_path == 7):

		match gml.rand(1,1):
		
			1:  str_temp = "0000000000000DAAAAAA0iiiE0E0E00iG00000000C00000000000000000000BBBBBBBB0000000000"
		

	elif (room_path == 8):

		match gml.rand(1,1):
		
			1:  str_temp = "0000000000AAAAAAAAAAE0E0E0E0E0000000000000000000000000000000BBBBBBBBBB0000000000"
		

	elif (room_path == 9):

		match gml.rand(1,1):
		
			1:  str_temp = "0000022221AAAAAAAAA1E0E0Et2211000000X01100000000T1000022ii11BBBbbbbbbb0000222221"
		

	else:

		match gml.rand(1,1):
		
			1:  str_temp = "00000000000000000000000000000000005000000000000000000000000000021111120000222220"
		


	# DY:  Add obstacles

	for i in range(1, 81):

		var j = i
	  
		var str_obs1 = "00000"
		var str_obs2 = "00000"
		var str_obs3 = "00000"
		var tile = gml.string_char_at(str_temp, i)
		
		if (tile == "8"):
		
			match gml.rand(1,6):
			
				1:
					str_obs1 = "00900"
					str_obs2 = "01110"
					str_obs3 = "11111"
				2:
					str_obs1 = "00900"
					str_obs2 = "02120"
					str_obs3 = "02120"
				3:
					str_obs1 = "00000"
					str_obs2 = "00000"
					str_obs3 = "92222"
				4:
					str_obs1 = "00000"
					str_obs2 = "00000"
					str_obs3 = "22229"
				5:
					str_obs1 = "00000"
					str_obs2 = "11001"
					str_obs3 = "19001"
				6:
					str_obs1 = "00000"
					str_obs2 = "10011"
					str_obs3 = "10091"
			
		
		elif (tile == "5"): # DY:  ground
		
			match gml.rand(1,15):
			
				1:
					str_obs1 = "11111"
					str_obs2 = "00000"
					str_obs3 = "00000"
				2:
					str_obs1 = "00000"
					str_obs2 = "11111"
					str_obs3 = "00000"
				3:
					str_obs1 = "00000"
					str_obs2 = "00000"
					str_obs3 = "11111"
				4:
					str_obs1 = "00000"
					str_obs2 = "20200"
					str_obs3 = "10100"
				5:
					str_obs1 = "00000"
					str_obs2 = "02020"
					str_obs3 = "01010"
				6:
					str_obs1 = "00000"
					str_obs2 = "00202"
					str_obs3 = "00101"
				7:
					str_obs1 = "00000"
					str_obs2 = "22200"
					str_obs3 = "11100"
				8:
					str_obs1 = "00000"
					str_obs2 = "02220"
					str_obs3 = "01110"
				9:
					str_obs1 = "00000"
					str_obs2 = "00222"
					str_obs3 = "00111"
				10:
					str_obs1 = "11100"
					str_obs2 = "22200"
					str_obs3 = "00000"
				11:
					str_obs1 = "01110"
					str_obs2 = "02220"
					str_obs3 = "00000"
				12:
					str_obs1 = "00111"
					str_obs2 = "00222"
					str_obs3 = "00000"
				13:
					str_obs1 = "00000"
					str_obs2 = "02220"
					str_obs3 = "21112"
				14:
					str_obs1 = "00000"
					str_obs2 = "20100"
					str_obs3 = "00110"
				15:
					str_obs1 = "00000"
					str_obs2 = "00102"
					str_obs3 = "01100"
			
		
		elif (tile == "6"): # DY:  air
		
			match gml.rand(1,4):
			
				1:
					str_obs1 = "00000"
					str_obs2 = "00000"
					str_obs3 = "11111"
				2:
					str_obs1 = "00000"
					str_obs2 = "11111"
					str_obs3 = "22222"
				3:
					str_obs1 = "11111"
					str_obs2 = "22222"
					str_obs3 = "00000"
				4:
					str_obs1 = "0jij0"
					str_obs2 = "0jij0"
					str_obs3 = "0jij0"
			
		
		elif (tile == "F"): # DY:  falling/icy plats
		
			match gml.rand(1,12):
			
				1:
					str_obs1 = "0ff"
					str_obs2 = "000"
					str_obs3 = "000"
				2:
					str_obs1 = "000"
					str_obs2 = "0ff"
					str_obs3 = "000"
				3:
					str_obs1 = "000"
					str_obs2 = "000"
					str_obs3 = "0ff"
				4:
					str_obs1 = "00f"
					str_obs2 = "000"
					str_obs3 = "000"
				5:
					str_obs1 = "000"
					str_obs2 = "0f0"
					str_obs3 = "000"
				6:
					str_obs1 = "000"
					str_obs2 = "000"
					str_obs3 = "0f0"
				7:
					str_obs1 = "0ji"
					str_obs2 = "000"
					str_obs3 = "000"
				8:
					str_obs1 = "000"
					str_obs2 = "0ji"
					str_obs3 = "000"
				9:
					str_obs1 = "000"
					str_obs2 = "000"
					str_obs3 = "0ji"
				10:
					str_obs1 = "00i"
					str_obs2 = "000"
					str_obs3 = "000"
				11:
					str_obs1 = "000"
					str_obs2 = "0i0"
					str_obs3 = "000"
				12:
					str_obs1 = "000"
					str_obs2 = "000"
					str_obs3 = "0i0"
			
		
		
		if (tile == "5" or tile == "6" or tile == "8"):
		
			str_temp = gml.string_delete(str_temp, j, 5)
			str_temp = gml.string_insert(str_obs1, str_temp, j)
			j += 10
			str_temp = gml.string_delete(str_temp, j, 5)
			str_temp = gml.string_insert(str_obs2, str_temp, j)
			j += 10
			str_temp = gml.string_delete(str_temp, j, 5)
			str_temp = gml.string_insert(str_obs3, str_temp, j)
		
		elif (tile == "F"):
		
			str_temp = gml.string_delete(str_temp, j, 3)
			str_temp = gml.string_insert(str_obs1, str_temp, j)
			j += 10
			str_temp = gml.string_delete(str_temp, j, 3)
			str_temp = gml.string_insert(str_obs2, str_temp, j)
			j += 10
			str_temp = gml.string_delete(str_temp, j, 3)
			str_temp = gml.string_insert(str_obs3, str_temp, j)
		

	assert(str_temp.length() == 80) #---TODO: double-check shop varieties and make sure there are no issues
	# DY:  Generate the tiles
	for j in range(0, 8):

		for i in range(1, 11):
			var obj
			var tile = gml.string_char_at(str_temp, i+j*10)
			var xpos = x + (i-1)*16
			var ypos = y + j*16
			if (tile == "1" and not gml.collision_point(xpos, ypos, "solid", 0, 0)):
			
				if (gml.rand(1,10) == 1): gml.instance_create(xpos, ypos, Objects.ice)
				else: gml.instance_create(xpos, ypos, Objects.dark)
			
			elif (tile == "2" and gml.rand(1,2) == 1 and not gml.collision_point(xpos, ypos, "solid", 0, 0)):
			
				if (gml.rand(1,10) == 1): gml.instance_create(xpos, ypos, Objects.ice)
				else: gml.instance_create(xpos, ypos, Objects.dark)
			
			elif (tile == "L"): gml.instance_create(xpos, ypos, Objects.vine)
			elif (tile == "P"): gml.instance_create(xpos, ypos, Objects.vine)
			elif (tile == "7"): gml.instance_create(xpos, ypos, Objects.spikes)
			elif (tile == "4" and gml.rand(1,4) == 1): gml.instance_create(xpos, ypos, Objects.push_block)
			elif (tile == "9"):
			
				var block = gml.instance_create(xpos, ypos+16, Objects.dark)
				if (LevelGeneration.scr_get_room_x(x) == global.start_room_x and LevelGeneration.scr_get_room_y(y) == global.start_room_y):
					gml.instance_create(xpos, ypos, Objects.entrance)
				else:
				
					gml.instance_create(xpos, ypos, Objects.exit)
					global.exit_x = xpos
					global.exit_y = ypos
					block.invincible = true
				
			
			elif (tile == "a"):
			
				if (gml.rand(1,1) == 1): gml.instance_create(xpos, ypos, Objects.chest)
			
			elif (tile == "I"):
			
				gml.instance_create(xpos+16, ypos+12, Objects.gold_idol)
			
			elif (tile == "." and not gml.collision_point(xpos, ypos, "solid", 0, 0)):
			
				obj = gml.instance_create(xpos, ypos, Objects.dark)
				obj.shop_wall = true
			
			elif (tile == "Q"):
			
				if (shop_type == "craps"):
				
					gml.tile_add("bg_dice_sign", 0, 0, 48, 32, xpos, ypos, 9004)
				
			
			elif (tile == "q"):
			
				n = gml.rand(1,6)
				scr_generate_item(xpos+8, ypos+8, 1)
				if obj: #--- adding checks because obj can be null
					if obj.has("in_dice_house"):
						obj.in_dice_house = true
			
			elif (tile == "+"):
			
				obj = gml.instance_create(xpos, ypos, Objects.solid)
				obj.sprite_index = "ice_block"
				obj.shop_wall = true
			
			elif (tile == "W"):
			
				if (global.murderer or global.thief_level > 0):
				
					if (global.is_damsel): gml.tile_add("bg_wanted", 32, 0, 32, 32, xpos, ypos, 9004)
					elif (global.is_tunnel_man): gml.tile_add("bg_wanted", 64, 0, 32, 32, xpos, ypos, 9004)
					else: gml.tile_add("bg_wanted", 0, 0, 32, 32, xpos, ypos, 9004)
				
			
			elif (tile == ":"):
			
				obj = gml.instance_create(xpos, ypos, Objects.brick_smooth)
				obj.sprite_index = "dark_smooth"
				obj.shop_wall = true
			
			elif (tile == "l"):
			
				if (game.damsel): gml.instance_create(xpos, ypos, Objects.lamp_red)
				else: gml.instance_create(xpos, ypos, Objects.lamp)
			
			elif (tile == "K"):
			
				obj = gml.instance_create(xpos, ypos, Objects.shopkeeper)
				obj.style = shop_type
			
			elif (tile == "k"):
			
				obj = gml.instance_create(xpos, ypos, Objects.sign)
				if (shop_type == "general"): obj.sprite_index = "sign_general"
				elif (shop_type == "bomb"): obj.sprite_index = "sign_bomb"
				elif (shop_type == "weapon"): obj.sprite_index = "sign_weapon"
				elif (shop_type == "clothing"): obj.sprite_index = "sign_clothing"
				elif (shop_type == "rare"): obj.sprite_index = "sign_rare"
				elif (shop_type == "craps"): obj.sprite_index = "sign_craps"
				elif (shop_type == "kissing"): obj.sprite_index = "sign_kissing"
			
			elif (tile == "$"):
			
				scr_shop_items_gen(xpos, ypos, shop_type)
			
			elif (tile == "u"):
			
				gml.instance_create(xpos+8, ypos+8, Objects.dice)
			
			elif (tile == "!"):
			
				obj = gml.instance_create(xpos+8, ypos+8, Objects.damsel)
				obj.for_sale = true
				obj.status = 5
			
			elif (tile == "Y"):
			
				gml.instance_create(xpos, ypos, Objects.yeti)
			
			elif (tile == "A"):
			
				gml.instance_create(xpos, ypos, Objects.alien_ship)
				gml.tile_add("bg_alien_ship3", 0, 0, 16, 16, xpos, ypos, 9005)
			
			elif (tile == "B"):
			
				tile = gml.instance_create(xpos, ypos, Objects.alien_ship)
				tile.sprite_index = "alien_floor"
				gml.tile_add("bg_alien_ship3", 0, 0, 16, 16, xpos, ypos, 9005)
			
			elif (tile == "b"):
			
				if (gml.rand(1,2) == 1):
				
					if (gml.rand(1,10) == 1): gml.instance_create(xpos, ypos, Objects.ice)
					else: gml.instance_create(xpos, ypos, Objects.dark)
				
				else:
				
					tile = gml.instance_create(xpos, ypos, Objects.alien_ship)
					tile.sprite_index = "alien_floor"
					gml.tile_add("bg_alien_ship3", 0, 0, 16, 16, xpos, ypos, 9005)
				
			
			elif (tile == "C"):
			
				tile = gml.instance_create(xpos, ypos, Objects.alien_ship)
				tile.sprite_index = "alien_front"
				tile = gml.instance_create(xpos, ypos+16, Objects.alien_ship)
				tile.sprite_index = "alien_front"
				tile = gml.instance_create(xpos, ypos+32, Objects.alien_ship)
				tile.sprite_index = "alien_front2"
				gml.tile_add("bg_alien_ship3", 0, 0, 16, 16, xpos, ypos, 9005)
				gml.tile_add("bg_alien_ship3", 0, 0, 16, 16, xpos, ypos+16, 160)
				gml.tile_add("bg_alien_ship3", 0, 0, 16, 16, xpos, ypos+32, 160)
			
			elif (tile == "D"):
			
				tile = gml.instance_create(xpos, ypos, Objects.alien_ship)
				tile.sprite_index = "alien_front3"
				gml.tile_add("bg_alien_ship3", 0, 0, 16, 16, xpos, ypos, 9005)
			
			elif (tile == "E"):
			
				if (gml.rand(1,3) == 1): gml.tile_add("bg_alien_ship", 32, 0, 32, 64, xpos, ypos, 9005)
				else: gml.tile_add("bg_alien_ship", 0, 0, 32, 64, xpos, ypos, 9005)
			
			elif (tile == "G"):
			
				
				gml.tile_add("bg_alien_ship2", 0, 0, 32, 48, xpos, ypos, 9005)
			
			elif (tile == "X"):
			
				gml.instance_create(xpos, ypos, Objects.alien_boss)
			
			elif (tile == "x"):
			
				gml.instance_create(xpos, ypos, Objects.sac_altar_left)
				gml.instance_create(xpos+16, ypos, Objects.sac_altar_right)
				gml.tile_add("bg_kali_body", 0, 0, 64, 64, xpos-16, ypos-48, 10001)
				gml.instance_create(xpos+16, ypos-80+16, Objects.kali_head)
			
			elif (tile == "T"):
			
				gml.instance_create(xpos, ypos, Objects.dark)
				obj = gml.instance_create(xpos+8, ypos+8, Objects.jetpack)
				obj.cost = 0
				obj.for_sale = false
			
			elif (tile == "t"):
			
				gml.instance_create(xpos, ypos, Objects.barrier_emitter)
			
			elif (tile == "c"):
			
				gml.instance_create(xpos, ypos, Objects.thin_ice)
			
			elif (tile == "M" and not gml.collision_point(xpos, ypos, "solid", 0, 0)):
			
				gml.instance_create(xpos, ypos, Objects.moai)
				gml.instance_create(xpos+16, ypos, Objects.moai2)
				gml.instance_create(xpos+32, ypos, Objects.moai3)
				gml.instance_create(xpos+16, ypos+16, Objects.moai_inside)
				gml.tile_add("bg_alien_ship3", 0, 0, 16, 16, xpos+16, ypos+16, 150)
				gml.tile_add("bg_alien_ship3", 0, 0, 16, 16, xpos+16, ypos+32, 150)
				gml.instance_create(xpos+16, ypos+32, Objects.thin_ice)
				obj = gml.instance_create(xpos+16, ypos+48, Objects.exit)
				obj.type = "moai exit"
				obj = gml.instance_create(xpos+16+8, ypos+48+8, Objects.crown)
				obj.cost = 0
				obj.for_sale = false
			
			elif (tile == "m" and not gml.collision_point(xpos, ypos, "solid", 0, 0)):
			
				obj = gml.instance_create(xpos, ypos, Objects.dark)
				obj.invincible = true
			
			elif (tile == "i"):
			
				gml.instance_create(xpos, ypos, Objects.ice)
			
			elif (tile == "j" and gml.rand(1,2) == 1):
			
				gml.instance_create(xpos, ypos, Objects.ice)
			
			elif (tile == "f"):
			
				gml.instance_create(xpos, ypos, Objects.dark_fall)
			
			elif (tile == "w"):
			
				gml.instance_create(xpos, ypos, Objects.water_swim)


func scr_room_gen4(x, y):
	# DY: 
	# DY:  scr_room_gen4()
	# DY: 
	# DY:  Room generation for Area 4, the Temple.
	# DY: 

	#/**********************************************************************************
		#Copyright (c) 2008, 2009 Derek Yu and Mossmouth, LLC
		#
		#This file is part of Spelunky.
#
		#You can redistribute and/or %ify Spelunky, including its source code, under
		#the terms of the Spelunky User License.
#
		#Spelunky is distributed in the hope that it will be entertaining and useful,
		#but WITHOUT WARRANTY.  Please see the Spelunky User License for more details.
#
		#The Spelunky User License should be available in "Game Information", which
		#can be found in the Resource Explorer, or as an external file called COPYING.
		#If not, please obtain a new copy of Spelunky from <http:# DY: spelunkyworld.com/>
		#
	#***********************************************************************************/

	#/*
	#Note:
#
	#ROOMS are 10x8 tile areas.
#
	#str_temp = "0000000000
		#0000000000
		#0000000000
		#0000000000
		#0000000000
		#0000000000
		#0000000000
		#0000000000"
#
	#OBSTACLES are 5x3 tile chunks that are randomized within rooms.
			   #
	#str_obs = "00000
		#00000
		#00000"
			  #
	#The string representing a room or obstacle must be laid out unbroken:
	#*/
	var str_temp = "00000000000000000000000000000000000000000000000000000000000000000000000000000000"

	var room_path = global.room_path[[LevelGeneration.scr_get_room_x(x), LevelGeneration.scr_get_room_y(y)]]
	var n
	var game = gml.get_instance("game")
	var shop_type
	
	if (LevelGeneration.scr_get_room_x(x) == global.start_room_x and LevelGeneration.scr_get_room_y(y) == global.start_room_y): # DY:  start room

		if (room_path == 2): n = gml.rand(2,2)
		else: n = gml.rand(1,1)
		match n:
		
			1:  str_temp = "00000000000000000000000000000000000000000008000000000000000000000000001111111111"
			# DY:  hole
			2:  str_temp = "00000000000000000000000000000000000000000008000000000000000000000000002000000002"
		

	elif (LevelGeneration.scr_get_room_x(x) == global.end_room_x and LevelGeneration.scr_get_room_y(y) == global.end_room_y): # DY:  end room

		n = gml.rand(1,1)
		match n:
		
			1:  str_temp = "00000000000000000000000000000000000000000008000000000000000000000000000000000000"
		

	elif (room_path == 0 and gml.rand(1,4) > 1): # DY:  side room

		if (global.city_of_gold):
		
			n = gml.rand(1,14)
			if (n == 12): n = 15
		
		elif (not game.altar and gml.rand(1,12) == 1):
		
			n = 16
			game.altar = true
		
		elif (game.idol):
		
			n = gml.rand(1,11)
		
		else:
		
			n = gml.rand(1,12)
			if (n == 12): game.idol = true
		
			
		match n:
		
			# DY:  upper plats
			1:  str_temp = "11111000001111100000111110000011111000001111150000111110000011111000001111111111"
			2:  str_temp = "00000111110000011111000001111100000111115000011111000001111100000111111111111111"
			# DY:  triangles
			3:  str_temp = "11000000001110000000211100000011111000002211110000111111100022211111001111111111"
			4:  str_temp = "00000000110000000111000000111200000111110000111122000111111100111112221111111111"
			5:  str_temp = "11111111110000000000111111100011111100001111100000111100000011100000001100000011"
			6:  str_temp = "11111111110000000000000111111100001111110000011111000000111100000001111100000011"
			7:  str_temp = "11111111112000000002110122101111000000111101221011200000000220012210021100000011"
			8:  str_temp = "11111111110002112000110011001111102201111100110011020111102000021120001111111111"
			9:  str_temp = "1111111111000000000011011110111101111011100111100111wwwwww1111wwwwww111111111111"
			# DY:  sun room
			10:
				if (gml.rand(1,2) == 1): str_temp = "1000000001000000000010000000011000000001100000000100T0000T000dddddddd01111111111"
				else: str_temp = "1000000001000000000010000000011000000001100000000100T0000T000dddddddd01111111111"
			
			11:  str_temp = "10000000010021111200100000000110000000011111001111111200211111120021111111001111"
			# DY:  idol
			12:  str_temp = "11CCCCCC11110000001111000000111D000000D1100000000100000000000000I000001111111111"
			# DY:  treasure vaults
			13:  str_temp = "11ttttt0111111111011110ttttt11110111111111ttttt011111111101111cttttt111111111111"
			14:  str_temp = "1111111111110ttttc11110111111111ttttt0111111111011110ttttt1111011111111100000011"
			15:  str_temp = "111111111111111111111111cc1111110111101111c1111c111111cc111111111111111111111111"
			# DY:  altars
			16:  str_temp = "220000002200000000000000000000000000000000000000000000x0000002211112201111111111"
		

	elif (room_path == 0 or room_path == 1):

		if (global.city_of_gold): n = gml.rand(1,12)
		else: n = gml.rand(1,10)
		match n:
		
			# DY:  basic rooms
			1:  str_temp = "1000000001200r000002100000000110000000011100000011000000000000000000001111111111"
			2:  str_temp = "1000000000100r000000100000000010000000001100000000000000000000000000001111111111"
			3:  str_temp = "0000000001000r000001000000000100000000010000000011000000000000000000001111111111"
			4:  str_temp = "0000000001000r000001000000000100000000010000000011000022000000011110001111111111"
			5:  str_temp = "110000001100L0000L0011Pr000P1111L0000L1111L0000L1102L0000L2000000000001111111111"
			# DY:  hallways
			6:  str_temp = "11111111111111111111111111111111111111111111111111000000000000000000001111111111"
			7:  str_temp = "1000000001000r000000100000000110000000011111111111000000000000000000001111111111"
			8:  str_temp = "120r000021000000000012000000211220LL02211111PP11110011LL11000000LL00001111111111"
			
			9:  str_temp = "11111111112400000042110111101112000000211111111111000000000000000000001111111111"
			
			# DY:  lava
			10:  str_temp = "0000000000000000000000000000000000000000013wwww310013wwww31011133331111111111111"
			11:  str_temp = "1000000001000r0000001000000001100000000111111111110000?0000000000000001111111111"
			
			12:  str_temp = "100000000100000000001000?0000110000000011111111111000000000000000000001111111111"
			
		

	elif (room_path == 3):

		match gml.rand(1,4):
		
			# DY:  basic rooms
			1:  str_temp = "1000000001100r000001100000000110000000011100000011000000000000000000001111111111"
			2:  str_temp = "1000000000100r000000100000000010000000001100000000000000000000000000001111111111"
			3:  str_temp = "0000000001000r000001000000000100000000010000000011000000000000000000001111111111"
			# DY:  lava
			4:  str_temp = "0000000000000000000000000000000000000000013wwww310013wwww31011133331111111111111"
		

	elif (room_path == 4): # DY:  shop

		str_temp = "111111111111111111111111221111111l000211...000W010...00000k0..Kiiii000bbbbbbbbbb"
		
		if (game.damsel): n = gml.rand(1,6)
		else: n = gml.rand(1,7)
		match n:
		
			1:  shop_type = "general"
			2:  shop_type = "bomb"
			3:  shop_type = "weapon"
			4:  shop_type = "rare"
			5:  shop_type = "clothing"
			6:
				shop_type = "craps"
				str_temp = "11111111111111111111111122111111Kl000211..b_q00_w010.0+00000k0.q+uu00000bbbbbbbbbb"
			7:
				shop_type = "kissing"
				str_temp = "111111111111111111111111221111111p000211...000W010...00000k0..K00A0000bbbbbbbbbb"
				game.damsel = true
		   

	elif (room_path == 5): # DY:  shop

		str_temp = "111111111111111111111111221111112000l11101W0000...0k00000...000iiiiK..bbbbbbbbbb"
		
		if (game.damsel): n = gml.rand(1,6)
		else: n = gml.rand(1,7)
		match n:
		
			1:  shop_type = "general"
			2:  shop_type = "bomb"
			3:  shop_type = "weapon"
			4:  shop_type = "rare"
			5:  shop_type = "clothing"
			6:
				shop_type = "craps"
				str_temp = "111111111111111111111111221111112000lK1101W0Q00b..0k00000+0.00000uu+q.bbbbbbbbbb"
			7:
				shop_type = "kissing"
				str_temp = "111111111111111111111111221111112000p11101W0000...0k00000...0000A00K..bbbbbbbbbb"
				game.damsel = true
		

	elif (room_path == 6): # DY:  Lady Xoc

		str_temp = "000000000000X0000000000000000000000000000000000000000000000000000000001111111111"

	elif (room_path == 7): # DY:  pit top

		str_temp = "0000000000000000000000000000000000000000000100100000110011000111;01110111BBBB111"

	elif (room_path == 8): # DY:  pit

		str_temp = "11200002111120000211112000021111200002111120000211112000021111200002111120000211"

	elif (room_path == 9): # DY:  pit bottom

		str_temp = "112000021111200002111120000211113wwww311113wwww311113wwww31111RRRRRR111111111111"

	else: # DY:  drop

		match gml.rand(1,8):
		
			1:  str_temp = "00000000000000000000000000000000000000000000000000000000000000444044401111101111"
			2:  str_temp = "00000000000000000000000000000000000000000000000000000000000004440004441111000111"
			3:  str_temp = "00000000006000060000000000000000000000006000060000000000000000000000001000000001"
			4:  str_temp = "00000000000000000000000000000000000000000000000000000000000000000000001000111111"
			5:  str_temp = "00000000000000000000000000000000000000000000000000000000000000000000001111110001"
			6:  str_temp = "00000000000060000000000000000000000000000000000000001112220000100000001110111111"
			7:  str_temp = "00000000000060000000000000000000000000000000000000002221110000000001001111110111"
			8:  str_temp = "00000000000060000000000000000000000000000000000000001011010000100001001111001111"
		


	# DY:  Add obstacles

	for i in range(1, 81):

		var j = i
	  
		var str_obs1 = "00000"
		var str_obs2 = "00000"
		var str_obs3 = "00000"
		var tile = gml.string_char_at(str_temp, i)
		
		if (tile == "8"):
		
			match gml.rand(1,1):
			
				1:
					str_obs1 = "00900"
					str_obs2 = "21112"
					str_obs3 = "21112"
			
		
		elif (tile == "5"): # DY:  ground
		
			match gml.rand(1,8):
			
				1:
					str_obs1 = "00000"
					str_obs2 = "02220"
					str_obs3 = "21112"
				2:
					str_obs1 = "00000"
					str_obs2 = "02020"
					str_obs3 = "21212"
				3:
					str_obs1 = "11100"
					str_obs2 = "11110"
					str_obs3 = "11111"
				4:
					str_obs1 = "00111"
					str_obs2 = "01111"
					str_obs3 = "11111"
				5:
					str_obs1 = "21112"
					str_obs2 = "22222"
					str_obs3 = "00000"
				6:
					str_obs1 = "00022"
					str_obs2 = "00011"
					str_obs3 = "00011"
				7:
					str_obs1 = "22000"
					str_obs2 = "11000"
					str_obs3 = "11000"
				8:
					str_obs1 = "00000"
					str_obs2 = "00000"
					str_obs3 = "00000"
			
		
		elif (tile == "6"): # DY:  air
		
			match gml.rand(1,10):
			
				1:
					str_obs1 = "11111"
					str_obs2 = "00000"
					str_obs3 = "00000"
				2:
					str_obs1 = "22222"
					str_obs2 = "00000"
					str_obs3 = "00000"
				3:
					str_obs1 = "22200"
					str_obs2 = "22200"
					str_obs3 = "00000"
				4:
					str_obs1 = "02220"
					str_obs2 = "02220"
					str_obs3 = "00000"
				5:
					str_obs1 = "00222"
					str_obs2 = "00222"
					str_obs3 = "00000"
				6:
					str_obs1 = "00000"
					str_obs2 = "01110"
					str_obs3 = "00000"
				7:
					str_obs1 = "00000"
					str_obs2 = "01110"
					str_obs3 = "02220"
				8:
					str_obs1 = "00000"
					str_obs2 = "02220"
					str_obs3 = "01110"
				9:
					str_obs1 = "00000"
					str_obs2 = "20100"
					str_obs3 = "00111"
				10:
					str_obs1 = "00000"
					str_obs2 = "00102"
					str_obs3 = "11100"
			
		
		elif (tile == "r"): # DY:  air
		
			match gml.rand(1,10):
			
				1:
					str_obs1 = "1111"
					str_obs2 = "0000"
					str_obs3 = "0000"
				2:
					str_obs1 = "2222"
					str_obs2 = "0000"
					str_obs3 = "0000"
				3:
					str_obs1 = "2220"
					str_obs2 = "2220"
					str_obs3 = "0000"
				4:
					str_obs1 = "0222"
					str_obs2 = "0222"
					str_obs3 = "0000"
				5:
					str_obs1 = "2222"
					str_obs2 = "0000"
					str_obs3 = "2222"
				6:
					str_obs1 = "0000"
					str_obs2 = "1111"
					str_obs3 = "0000"
				7:
					str_obs1 = "0000"
					str_obs2 = "1111"
					str_obs3 = "2222"
				8:
					str_obs1 = "0000"
					str_obs2 = "2222"
					str_obs3 = "1111"
				9:
					str_obs1 = "0000"
					str_obs2 = "0220"
					str_obs3 = "2112"
				10:
					str_obs1 = "0000"
					str_obs2 = "2002"
					str_obs3 = "1221"
			
		
		
		if (tile == "5" or tile == "6" or tile == "8"):
		
			str_temp = gml.string_delete(str_temp, j, 5)
			str_temp = gml.string_insert(str_obs1, str_temp, j)
			j += 10
			str_temp = gml.string_delete(str_temp, j, 5)
			str_temp = gml.string_insert(str_obs2, str_temp, j)
			j += 10
			str_temp = gml.string_delete(str_temp, j, 5)
			str_temp = gml.string_insert(str_obs3, str_temp, j)
		
		elif (tile == "r"):
		
			str_temp = gml.string_delete(str_temp, j, 4)
			str_temp = gml.string_insert(str_obs1, str_temp, j)
			j += 10
			str_temp = gml.string_delete(str_temp, j, 4)
			str_temp = gml.string_insert(str_obs2, str_temp, j)
			j += 10
			str_temp = gml.string_delete(str_temp, j, 4)
			str_temp = gml.string_insert(str_obs3, str_temp, j)
		

	assert(str_temp.length() == 80)
	# DY:  Generate the tiles
	for j in range(0, 8):
		var obj

		for i in range(1, 11):
		
			var tile = gml.string_char_at(str_temp, i+j*10)
			var xpos = x + (i-1)*16
			var ypos = y + j*16
			if (tile == "1" and not gml.collision_point(xpos, ypos, "solid", 0, 0)):
			
				if (gml.rand(1,100) == 1): gml.instance_create(xpos, ypos, Objects.lush)
				elif (gml.rand(1,10) == 1): gml.instance_create(xpos, ypos, Objects.block)
				else: gml.instance_create(xpos, ypos, Objects.temple)
			
			elif (tile == "2" and gml.rand(1,2) == 1 and not gml.collision_point(xpos, ypos, "solid", 0, 0)):
			
				if (gml.rand(1,10) == 1): gml.instance_create(xpos, ypos, Objects.block)
				else: gml.instance_create(xpos, ypos, Objects.temple)
			
			elif (tile == "3" and not gml.collision_point(xpos, ypos, "solid", 0, 0)):
			
				if (gml.rand(1,2) == 1): gml.instance_create(xpos, ypos, Objects.lava)
				else: gml.instance_create(xpos, ypos, Objects.temple)
			
			elif (tile == "R" and not gml.collision_point(xpos, ypos, "solid", 0, 0)):
			
				var block = gml.instance_create(xpos, ypos, Objects.temple)
				#with block  treasure = "Big Ruby"
				block.treasure = "big ruby"
			
			elif (tile == "L"): gml.instance_create(xpos, ypos, Objects.ladder_orange)
			elif (tile == "P"): gml.instance_create(xpos, ypos, Objects.ladder_top)
			elif (tile == "7" and gml.rand(1,3) == 1): gml.instance_create(xpos, ypos, Objects.spikes)
			elif (tile == "4" and gml.rand(1,4) == 1): gml.instance_create(xpos, ypos, Objects.push_block)
			elif (tile == "9"):
			
				var block = gml.instance_create(xpos, ypos+16, Objects.temple)
				if (LevelGeneration.scr_get_room_x(x) == global.start_room_x and LevelGeneration.scr_get_room_y(y) == global.start_room_y):
					gml.instance_create(xpos, ypos, Objects.entrance)
				else:
				
					gml.instance_create(xpos, ypos, Objects.exit)
					global.exit_x = xpos
					global.exit_y = ypos
					block.invincible = true
				
			
			elif (tile == "a"):
			
				gml.instance_create(xpos+8, ypos+8, Objects.chest)
			
			elif (tile == "c"):
			
				if (gml.rand(1,2) == 1): gml.instance_create(xpos+8, ypos+8, Objects.chest)
				else: gml.instance_create(xpos+8, ypos+8, Objects.crate)
			
			elif (tile == "t"):
			
				if (gml.rand(1,120) == 1): gml.instance_create(xpos+8, ypos+12, Objects.ruby_big)
				elif (gml.rand(1,80) == 1): gml.instance_create(xpos+8, ypos+12, Objects.sapphire_big)
				elif (gml.rand(1,60) == 1): gml.instance_create(xpos+8, ypos+12, Objects.emerald_big)
				else: gml.instance_create(xpos+8, ypos+8, Objects.gold_bars)
			
			elif (tile == "x"):
			
				gml.instance_create(xpos, ypos, Objects.sac_altar_left)
				gml.instance_create(xpos+16, ypos, Objects.sac_altar_right)
				gml.tile_add("bg_kali_body", 0, 0, 64, 64, xpos-16, ypos-48, 10001)
				gml.instance_create(xpos+16, ypos-80+16, Objects.kali_head)
			
			elif (tile == "X"):
			
				for l in range(0, 6):
				
					for k in range(0, 5):
					
						obj = gml.instance_create(xpos+k*16, ypos+l*16, Objects.xoc_block)
						if (k == 2 and l == 1): obj.treasure = "Diamond"
						if (k == 1 and l == 2): obj.treasure = "Sapphire"
						if (k == 3 and l == 2): obj.treasure = "Sapphire"
						if (k == 0 and l == 3): obj.treasure = "Emerald"
						if (k == 4 and l == 3): obj.treasure = "Emerald"
						if (k == 2 and l == 4): obj.treasure = "Ruby"
						gml.tile_add("bg_lady_xoc", k*16, l*16, 16, 16, xpos+k*16, ypos+l*16, 99)
					
				
			
			elif (tile == "I"):
			
				gml.instance_create(xpos+16, ypos+12, Objects.gold_idol)
			
			elif (tile == ""):
			
				obj = gml.instance_create(xpos+8, ypos+8, Objects.damsel)
				obj.cost = 0
				obj.for_sale = false
				gml.instance_create(xpos+16+8, ypos+12, Objects.gold_idol)
			
			elif (tile == "B"):
			
				if (gml.rand(1,1) == 1): gml.instance_create(xpos, ypos, Objects.trap_block)
			
			elif (tile == "C"):
			
				gml.instance_create(xpos, ypos, Objects.ceiling_trap)
			
			elif (tile == "D"):
			
				gml.instance_create(xpos, ypos, Objects.door)
				gml.instance_create(xpos, ypos, Objects.temple_fake)
				gml.instance_create(xpos, ypos+16, Objects.temple_fake)
			
			elif (tile == "A"):
			
				obj = gml.instance_create(xpos+8, ypos+8, Objects.damsel)
				obj.for_sale = true
				obj.status = 5
			
			elif (tile == "?"):
			
				gml.instance_create(xpos, ypos, Objects.tomb_lord)
			
			elif (tile == "." and not gml.collision_point(xpos, ypos, "solid", 0, 0)):
			
				obj = gml.instance_create(xpos, ypos, Objects.temple)
				obj.shop_wall = true
			
			elif (tile == "Q"):
			
				if (shop_type == "craps"):
				
					gml.tile_add("bg_dice_sign", 0, 0, 48, 32, xpos, ypos, 9004)
				
			
			elif (tile == "q"):
			
				n = gml.rand(1,6)
				scr_generate_item(xpos+8, ypos+8, 1)
				obj.in_dice_house = true
			
			elif (tile == "+"):
			
				obj = gml.instance_create(xpos, ypos, Objects.solid)
				obj.sprite_index = "ice_block"
				obj.shop_wall = true
			
			elif (tile == "W"):
			
				if (global.murderer or global.thief_level > 0):
				
					if (global.is_damsel): gml.tile_add("bg_wanted", 32, 0, 32, 32, xpos, ypos, 9004)
					elif (global.is_tunnel_man): gml.tile_add("bg_wanted", 64, 0, 32, 32, xpos, ypos, 9004)
					else: gml.tile_add("bg_wanted", 0, 0, 32, 32, xpos, ypos, 9004)
				
			
			elif (tile == "b"):
			
				obj = gml.instance_create(xpos, ypos, Objects.temple)
				obj.shop_wall = true
			
			elif (tile == "l"):
			
				gml.instance_create(xpos, ypos, Objects.lamp)
			
			elif (tile == "p"):
			
				gml.instance_create(xpos, ypos, Objects.lamp_red)
			
			elif (tile == "K"):
			
				obj = gml.instance_create(xpos, ypos, Objects.shopkeeper)
				obj.style = shop_type
			
			elif (tile == "k"):
			
				obj = gml.instance_create(xpos, ypos, Objects.sign)
				if (shop_type == "general"): obj.sprite_index = "sign_general"
				elif (shop_type == "bomb"): obj.sprite_index = "sign_bomb"
				elif (shop_type == "weapon"): obj.sprite_index = "sign_weapon"
				elif (shop_type == "clothing"): obj.sprite_index = "sign_clothing"
				elif (shop_type == "rare"): obj.sprite_index = "sign_rare"
				elif (shop_type == "craps"): obj.sprite_index = "sign_craps"
				elif (shop_type == "kissing"): obj.sprite_index = "sign_kissing"
			
			elif (tile == "i"):
			
				scr_shop_items_gen(xpos, ypos, shop_type)
			

			elif (tile == "w"):
			
				gml.instance_create(xpos, ypos, Objects.lava)
			
			elif (tile == "u"):
			
				gml.instance_create(xpos+8, ypos+8, Objects.dice)
			
			elif (tile == "d"):
			
				gml.instance_create(xpos, ypos, Objects.lush)
			
			elif (tile == "e"):
			
				if (gml.rand(1,2) == 1): gml.instance_create(xpos, ypos, Objects.lush)
			
			elif (tile == "T"):
			
				gml.instance_create(xpos, ypos, Objects.tree)
				n = 0
				var tx = xpos
				var ty = ypos-16
				var b1 = false
				var b2 = false
				for m in range(0, 5):
				
					if (gml.rand(0,m) > 2):
					
						break
					
					else:
					
						if (not gml.collision_point(tx, ty-16, "solid", 0, 0) and
							not gml.collision_point(tx-16, ty-16, "solid", 0, 0) and
							not gml.collision_point(tx+16, ty-16, "solid", 0, 0)):
						
							gml.instance_create(tx, ty, Objects.tree)
							if (m < 4):
							
								if (gml.rand(1,5) < 4 and not b1):
								
									gml.instance_create(tx+16, ty, Objects.tree_branch)
									b1 = true
								
								elif (b1): b1 = false
								if (gml.rand(1,5) < 4 and not b2):
								
									gml.instance_create(tx-16, ty, Objects.tree_branch)
									b2 = true
								
								elif (b2): b2 = false
							
						
						else:
						
							break
						
					
					ty -= 16
				
				gml.instance_create(tx-16, ty+16, Objects.leaves)
				gml.instance_create(tx+16, ty+16, Objects.leaves)


func scr_room_gen5(x, y):
	# DY: 
	# DY:  scr_room_gen5()
	# DY: 
	# DY:  Room generation for the final boss level (which is only partially randomized).
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

	#/*
	#Note:
#
	#ROOMS are 10x8 tile areas.
#
	#str_temp = "0000000000
		#0000000000
		#0000000000
		#0000000000
		#0000000000
		#0000000000
		#0000000000
		#0000000000"
#
	#OBSTACLES are 5x3 tile chunks that are randomized within rooms.
			   #
	#str_obs = "00000
		#00000
		#00000"
			  #
	#The string representing a room or obstacle must be laid out unbroken:
	#*/
	var str_temp = "00000000000000000000000000000000000000000000000000000000000000000000000000000000"

	var room_path = global.room_path[[LevelGeneration.scr_get_room_x(x), LevelGeneration.scr_get_room_y(y)]]
	if (y < 480):

		match gml.rand(1,6):
		
			1:  str_temp = "60000000000000000000000000000000000000000000000000600000000000000000000000000000"
			2:  str_temp = "00000600000000000000000000000000000000000000000000600000000000000000000000000000"
			3:  str_temp = "60000000000000000000000000000000000000000000000000000006000000000000000000000000"
			4:  str_temp = "60000600000000000000000000000000000000000000000000000000000000000000000000000000"
			5:  str_temp = "00000000000000000000000000000000000000000000000000600006000000000000000000000000"
			6:  str_temp = "00000000000000000000000000000000600000000000000000000000000000000000000000000000"
		

	else:

		match gml.rand(1,6):
		
			1:  str_temp = "11111111111111111111111111111111111111111111111111111111111111111111111111111111"
			2:  str_temp = "11111111111222111111122211111111111111111111111111111111111111111111111111111111"
			3:  str_temp = "11111111111111111111111111111111122221111112222111111111111111111111111111111111"
			4:  str_temp = "11111111111111112221111111222111111111111111111111111111111111111111111111111111"
			5:  str_temp = "11111111111111111111111111111111111111111111111111122211111112221111111111111111"
			6:  str_temp = "11111111111111111111111111111111111111111111111111111111222111111122211111111111"
		


	# DY:  Add obstacles

	for i in range(1, 81):

		var j = i
	  
		var str_obs1 = "00000"
		var str_obs2 = "00000"
		var str_obs3 = "00000"
		var tile = gml.string_char_at(str_temp, i)
		
		if (tile == "8"):
		
			match gml.rand(1,1):
			
				1:
					str_obs1 = "00900"
					str_obs2 = "21112"
					str_obs3 = "21112"
			
		
		elif (tile == "5"): # DY:  ground
		
			match gml.rand(1,8):
			
				1:
					str_obs1 = "00000"
					str_obs2 = "02220"
					str_obs3 = "21112"
				2:
					str_obs1 = "00000"
					str_obs2 = "02020"
					str_obs3 = "21212"
				3:
					str_obs1 = "11100"
					str_obs2 = "11110"
					str_obs3 = "11111"
				4:
					str_obs1 = "00111"
					str_obs2 = "01111"
					str_obs3 = "11111"
				5:
					str_obs1 = "21112"
					str_obs2 = "22222"
					str_obs3 = "00000"
				6:
					str_obs1 = "00022"
					str_obs2 = "00011"
					str_obs3 = "00011"
				7:
					str_obs1 = "22000"
					str_obs2 = "11000"
					str_obs3 = "11000"
				8:
					str_obs1 = "00000"
					str_obs2 = "00000"
					str_obs3 = "00000"
			
		
		elif (tile == "6"): # DY:  air
		
			match gml.rand(1,8):
			
				1:
					str_obs1 = "0TTT0"
					str_obs2 = "21112"
					str_obs3 = "02220"
				2:
					str_obs1 = "0000T"
					str_obs2 = "0TTT1"
					str_obs3 = "21111"
				3:
					str_obs1 = "T0000"
					str_obs2 = "1TTT0"
					str_obs3 = "11112"
				4:
					str_obs1 = "1TT00"
					str_obs2 = "11112"
					str_obs3 = "12200"
				5:
					str_obs1 = "0TTT1"
					str_obs2 = "21111"
					str_obs3 = "00221"
				6:
					str_obs1 = "21112"
					str_obs2 = "TTTTT"
					str_obs3 = "11111"
			
		
		
		if (tile == "5" or tile == "6" or tile == "8"):
		
			str_temp = gml.string_delete(str_temp, j, 5)
			str_temp = gml.string_insert(str_obs1, str_temp, j)
			j += 10
			str_temp = gml.string_delete(str_temp, j, 5)
			str_temp = gml.string_insert(str_obs2, str_temp, j)
			j += 10
			str_temp = gml.string_delete(str_temp, j, 5)
			str_temp = gml.string_insert(str_obs3, str_temp, j)
		

	#assert(str_temp.length() == 80) #---TODO: seems to not work? usually 81
	# DY:  Generate the tiles
	for j in range(0, 8):

		for i in range(1, 11):
		
			var tile = gml.string_char_at(str_temp, i+j*10)
			var xpos = x + (i-1)*16
			var ypos = y + j*16
			if (tile == "1" and not gml.collision_point(xpos, ypos, "solid", 0, 0)):
			
				if (gml.rand(1,10) == 1): gml.instance_create(xpos, ypos, Objects.block)
				else:
				
					gml.instance_create(xpos, ypos, Objects.temple)
				
			
			elif (tile == "2" and gml.rand(1,2) == 1 and not gml.collision_point(xpos, ypos, "solid", 0, 0)):
			
				if (gml.rand(1,10) == 1): gml.instance_create(xpos, ypos, Objects.block)
				else:
				
					gml.instance_create(xpos, ypos, Objects.temple)
				
			
			elif (tile == "L"): gml.instance_create(xpos, ypos, Objects.vine)
			elif (tile == "P"): gml.instance_create(xpos, ypos, Objects.vine_top)
			elif (tile == "7" and gml.rand(1,3) == 1): gml.instance_create(xpos, ypos, Objects.spikes)
			elif (tile == "4" and gml.rand(1,4) == 1): gml.instance_create(xpos, ypos, Objects.push_block)
			elif (tile == "9"):
			
				if (LevelGeneration.scr_get_room_x(x) == global.start_room_x and LevelGeneration.scr_get_room_y(y) == global.start_room_y):
					gml.instance_create(xpos, ypos, Objects.entrance)
				else:
				
					gml.instance_create(xpos, ypos, Objects.exit)
					global.exit_x = xpos
					global.exit_y = ypos
				
				var block = gml.instance_create(xpos, ypos+16, Objects.temple)
				block.invincible = true
			
			elif (tile == "a"):
			
				if (gml.rand(1,1) == 1): gml.instance_create(xpos+8, ypos+8, Objects.chest)
			
			elif (tile == "T"):
			
				if (gml.rand(1,15) == 1): gml.instance_create(xpos+8, ypos+8, Objects.chest)
				elif (gml.rand(1,6) == 1): gml.instance_create(xpos+8, ypos+8, Objects.gold_bars)
				elif (gml.rand(1,6) == 1): gml.instance_create(xpos+8, ypos+12, Objects.emerald_big)
				elif (gml.rand(1,8) == 1): gml.instance_create(xpos+8, ypos+12, Objects.sapphire_big)
				elif (gml.rand(1,10) == 1): gml.instance_create(xpos+8, ypos+12, Objects.ruby_big)
				elif (gml.rand(1,10) == 1): gml.instance_create(xpos+8, ypos+8, Objects.crate)
				elif (gml.rand(1,10) == 1): gml.instance_create(xpos, ypos, Objects.block)
				else:
				
					gml.instance_create(xpos, ypos, Objects.temple)
				
			
			elif (tile == "t"):
			
				gml.instance_create(xpos, ypos, Objects.thwomp_trap)
			
			elif (tile == "I"):
			
				if (gml.rand(1,1) == 1): gml.instance_create(xpos+16, ypos, Objects.gold_idol)
			
			elif (tile == "C"):
			
				gml.instance_create(xpos, ypos, Objects.ceiling_trap)
			
			elif (tile == "D"):
			
				gml.instance_create(xpos, ypos, Objects.temple_fake)
				gml.instance_create(xpos, ypos+16, Objects.temple_fake)
				gml.instance_create(xpos, ypos, Objects.door)
			
			elif (tile == "w"):
			
				gml.instance_create(xpos, ypos, Objects.water_swim)


func scr_entity_gen():
	# DY: 
	# DY:  scr_entity_gen()
	# DY: 
	# DY:  Generates enemies, traps, and treasure.
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

	# DY:  Note: depth of trees, statues is 9005
	var exit = gml.get_instance("exit")

	global.locked_chest = false
	global.key = false
	global.locked_chest_chance = 8

	if (global.level_type == 0):

		global.giant_spider = false
		global.gen_giant_spider = false
		if (gml.rand(1,6) == 1): global.gen_giant_spider = true

		var all_solids = gml.get_all_instances("solid")
		for solid_instance in all_solids:
			if (not in_level.is_in_shop(solid_instance.position.x, solid_instance.position.y) and solid_instance.position.y > 16):
			
				if (solid_instance.type != "altar"):
				
					scr_treasure_gen(0, solid_instance) #--- passing in 0 for first argument as nothing is passed in original code
				
			
				# DY:  enemies
				if (LevelGeneration.scr_get_room_x(solid_instance.position.x) != global.start_room_x or LevelGeneration.scr_get_room_y(solid_instance.position.y-16) != global.start_room_y):
				
					if (solid_instance.position.y < gml.room_height - 64 and
						not gml.collision_point(solid_instance.position.x, solid_instance.position.y+16, "solid", 0, 0) and not gml.collision_point(solid_instance.position.x, solid_instance.position.y+32, "solid", 0, 0) and
						not gml.collision_point(solid_instance.position.x, solid_instance.position.y+16, "water", 0, 0) and not gml.collision_point(solid_instance.position.x, solid_instance.position.y+32, "water", 0, 0) and
						not gml.collision_point(solid_instance.position.x, solid_instance.position.y+16, "enemy", 0, 0)):
					
						if (global.gen_giant_spider and
							not global.giant_spider and
							not gml.collision_point(solid_instance.position.x+16, solid_instance.position.y+16, "solid", 0, 0) and
							not gml.collision_point(solid_instance.position.x+16, solid_instance.position.y+32, "solid", 0, 0) and
							gml.rand(1,40) == 1):
						
							gml.instance_create(solid_instance.position.x, solid_instance.position.y+16, Objects.giant_spider_hang)
							global.giant_spider = true
						
						elif (global.dark_level and gml.rand(1,60) == 1): gml.instance_create(solid_instance.position.x, solid_instance.position.y+16, Objects.lamp)
						elif (global.dark_level and gml.rand(1,40) == 1): gml.instance_create(solid_instance.position.x, solid_instance.position.y+16, Objects.scarab)
						elif (gml.rand(1,60) == 1): gml.instance_create(solid_instance.position.x, solid_instance.position.y+16, Objects.bat)
						elif (gml.rand(1,80) == 1): gml.instance_create(solid_instance.position.x, solid_instance.position.y+16, Objects.spider_hang)
					
				
					if (not gml.collision_point(solid_instance.position.x, solid_instance.position.y-16, "solid", 0, 0)):
					
						if (gml.rand(1,60) == 1): gml.instance_create(solid_instance.position.x, solid_instance.position.y-16, Objects.snake)
						elif (gml.rand(1,800) == 1): gml.instance_create(solid_instance.position.x, solid_instance.position.y-16, Objects.caveman)
					
				
			
		
		
		# DY:  force generate chest
		if (global.gen_udjat_eye and not global.locked_chest):
		
			var all_exits = gml.get_all_instances("exit")
			for exit_instance in all_exits:
			
				if (not gml.collision_point(exit_instance.position.x-8, exit_instance.position.y, "solid", 0, 0) and
					not gml.collision_point(exit_instance.position.x-8, exit_instance.position.y+15, "treasure", 0, 0) and
					not gml.collision_point(exit_instance.position.x-8, exit_instance.position.y+8, "chest", 0, 0) and
					not gml.collision_point(exit_instance.position.x-8, exit_instance.position.y+8, "spikes", 0, 0)):
				
					gml.instance_create(exit_instance.position.x-8, exit_instance.position.y+8, Objects.locked_chest)
					global.locked_chest = true
					break
				
				elif (not gml.collision_point(exit_instance.position.x+8, exit_instance.position.y, "solid", 0, 0) and
					not gml.collision_point(exit_instance.position.x+8, exit_instance.position.y+15, "treasure", 0, 0) and
					not gml.collision_point(exit_instance.position.x+8, exit_instance.position.y+8, "chest", 0, 0) and
					not gml.collision_point(exit_instance.position.x+8, exit_instance.position.y+8, "spikes", 0, 0)):
				
					gml.instance_create(exit_instance.position.x+16+8, exit_instance.position.y+8, Objects.locked_chest)
					global.locked_chest = true
					break
				
				else:
				
					gml.instance_create(exit_instance.position.x+8, exit_instance.position.y+8, Objects.locked_chest)
					global.locked_chest = true
					break
				
			
		
		
		# DY:  generate key if locked chest has been generated:
		if (gml.instance_exists("locked_chest")):
		
			var n = 1
			while (n < 8 and global.key == false):
			
				var all_treasure = gml.get_all_instances("treasure")
				for treasure_instance in all_treasure:
				
					if (gml.rand(1,8) <= 1 and not gml.collision_point(treasure_instance.position.x, treasure_instance.position.y, "solid", 0, 0) and global.key == false):
					
						if (treasure_instance.type == "gold bars"): gml.instance_create(treasure_instance.position.x, treasure_instance.position.y+4, Objects.key)
						else: gml.instance_create(treasure_instance.position.x, treasure_instance.position.y, Objects.key)
						global.key = true
						gml.instance_destroy(treasure_instance)
						break
					
				
				n += 1
			
			if (not global.key):
			
				var all_treasure = gml.get_all_instances("treasure")
				for treasure_instance in all_treasure:
				
					if (not gml.collision_point(treasure_instance.position.x, treasure_instance.position.y, "solid", 0, 0)):
					
						if (treasure_instance.type == "gold bars"): gml.instance_create(treasure_instance.position.x, treasure_instance.position.y+4, Objects.key)
						else: gml.instance_create(treasure_instance.position.x, treasure_instance.position.y, Objects.key)
						global.key = true
						gml.instance_destroy(treasure_instance)
						break
					
				
			
		
		
		if (global.key): global.made_udjat_eye = true
		
		var all_blocks = gml.get_all_instances("block")
		for block_instance in all_blocks:
		
			if (not in_level.is_in_shop(block_instance.position.x, block_instance.position.y)):
				var entrance = gml.get_instance("entrance")
				var n = gml.point_distance(block_instance.position.x, block_instance.position.y, entrance.position.x, entrance.position.y)
				if (not in_level.is_in_shop(block_instance.position.x, block_instance.position.y) and
					gml.rand(1,4) == 1 and not
					(block_instance.position.y == entrance.position.y and n < 144) and
					n > 48):
				
					if (gml.collision_point(block_instance.position.x+16, block_instance.position.y, "solid", 0, 0) and not
						gml.collision_rectangle(block_instance.position.x-32, block_instance.position.y, block_instance.position.x-1,  block_instance.position.y+15, "solid", 0, 0)):
					
						if (global.dark_level): gml.instance_create(block_instance.position.x, block_instance.position.y, Objects.arrow_trap_left_lit)
						else: gml.instance_create(block_instance.position.x, block_instance.position.y, Objects.arrow_trap_left)
						gml.instance_destroy(block_instance)
					
					elif (gml.collision_point(block_instance.position.x-16, block_instance.position.y, "solid", 0, 0) and not
						gml.collision_rectangle(block_instance.position.x+16, block_instance.position.y, block_instance.position.x+48,  block_instance.position.y+15, "solid", 0, 0)):
					
						if (global.dark_level): gml.instance_create(block_instance.position.x, block_instance.position.y, Objects.arrow_trap_right_lit)
						else: gml.instance_create(block_instance.position.x, block_instance.position.y, Objects.arrow_trap_right)
						gml.instance_destroy(block_instance)
					
				
			
		

	elif (global.level_type == 1):

		global.ash_grave = false
		if (global.cemetary):
		
			var all_lush = gml.get_all_instances("lush")
			for lush_instance in all_lush:
			
				# DY:  generate graves
				if (not gml.collision_point(lush_instance.position.x, lush_instance.position.y-16, "solid", 0, 0) and
					not gml.collision_point(lush_instance.position.x, lush_instance.position.y-16, "entrance", 0, 0) and
					not gml.collision_point(lush_instance.position.x, lush_instance.position.y-16, "exit", 0, 0) and
					gml.rand(1,20) == 1 and
					lush_instance.position.x != 160 and lush_instance.position.x != 176 and lush_instance.position.x != 320 and lush_instance.position.x != 336 and lush_instance.position.x != 480 and lush_instance.position.x != 496):
				
					var obj = gml.instance_create(lush_instance.position.x, lush_instance.position.y-16, Objects.grave)
					if (not global.ash_grave and gml.rand(1,40) == 1):
					
						obj.sprite_index = "grave_ash"
						obj = gml.instance_create(lush_instance.position.x+8, lush_instance.position.y+8, Objects.shotgun)
						obj.cost = 0
						obj.for_sale = false
						#lush_instance.ash_grave = true #---[FLAG] local variable doesn't seem to be used anywhere. double-check this
					
					elif (not gml.collision_point(lush_instance.position.x+8, lush_instance.position.y+8, "treasure", 0, 0)):
					
						if (gml.rand(1,2) == 1): gml.instance_create(lush_instance.position.x+8, lush_instance.position.y+8, Objects.gold_nugget)
						elif (gml.rand(1,4) == 1): gml.instance_create(lush_instance.position.x+8, lush_instance.position.y+8, Objects.sapphire_big)
						elif (gml.rand(1,6) == 1): gml.instance_create(lush_instance.position.x+8, lush_instance.position.y+8, Objects.emerald_big)
						elif (gml.rand(1,8) == 1): gml.instance_create(lush_instance.position.x+8, lush_instance.position.y+8, Objects.ruby_big)
					
				
			
		

		var all_solids = gml.get_all_instances("solid")
		for solid_instance in all_solids:
		
			# DY:  bg
			if (gml.rand(1,100) == 1 and not gml.collision_point(solid_instance.position.x, solid_instance.position.y-16, "solid", 0, 0)): gml.tile_add("bg_trees", 0, 0, 16, 48, solid_instance.position.x, solid_instance.position.y-32, 9005)
			
			if (not in_level.is_in_shop(solid_instance.position.x, solid_instance.position.y)):
			
				var entrance = gml.get_instance("entrance")
				if (solid_instance.position.y > 32 and gml.collision_point(solid_instance.position.x, solid_instance.position.y-16, "solid", 0, 0) and global.gen_market_entrance and not global.made_market_entrance):
				
					var obj = gml.instance_place(solid_instance.position.x, solid_instance.position.y-16, "solid", solid_instance)
					if (obj.type != "tree" and solid_instance.type != "altar" and not obj.invincible and gml.rand(1,global.market_chance) <= 1):
					
						gml.instance_create(solid_instance.position.x, solid_instance.position.y-16, Objects.x_market)
						solid_instance.invincible = true
						global.made_market_entrance = true
					
					else: global.market_chance -= 1
				
				elif (solid_instance.type != "tree" and solid_instance.type != "altar" and solid_instance.position.y != 0 and
					not gml.collision_rectangle(solid_instance.position.x, solid_instance.position.y-32, solid_instance.position.x+15,  solid_instance.position.y-1, "solid", false, true, solid_instance) and
					not gml.collision_rectangle(solid_instance.position.x, solid_instance.position.y-16, solid_instance.position.x+15,  solid_instance.position.y-1, "enemy", 0, 0) and
					(not gml.collision_point(solid_instance.position.x-16, solid_instance.position.y, "solid", 0, 0) or not gml.collision_point(solid_instance.position.x+16, solid_instance.position.y, "solid", 0, 0)) and
					gml.collision_point(solid_instance.position.x, solid_instance.position.y+16, "solid", 0, 0) and
					not gml.collision_point(solid_instance.position.x, solid_instance.position.y, "x_market", 0, 0) and
					not in_level.is_in_shop(solid_instance.position.x, solid_instance.position.y) and
					gml.point_distance(solid_instance.position.x, solid_instance.position.y, entrance.position.x, entrance.position.y) > 64):
				
					if (global.dark_level and not gml.collision_point(solid_instance.position.x, solid_instance.position.y-32, "water", 0, 0) and gml.rand(1,20) == 1):
					
						gml.instance_create(solid_instance.position.x, solid_instance.position.y-32, Objects.tiki_torch)
					
					elif (gml.rand(1,12) == 1 and
						solid_instance.position.x != 160 and solid_instance.position.x != 176 and solid_instance.position.x != 320 and solid_instance.position.x != 336 and solid_instance.position.x != 480 and solid_instance.position.x != 496):
					
						if (gml.collision_point(solid_instance.position.x, solid_instance.position.y-16, "solid", 0, 0)):
						
							var sol = gml.instance_nearest(solid_instance.position.x, solid_instance.position.y-16, "solid")
							sol.clean_death = true
							gml.instance_destroy(sol)
						
						gml.instance_create(solid_instance.position.x, solid_instance.position.y, Objects.spear_trap_bottom)
						if (global.dark_level): gml.instance_create(solid_instance.position.x, solid_instance.position.y-16, Objects.spear_trap_lit)
						else: gml.instance_create(solid_instance.position.x, solid_instance.position.y-16, Objects.spear_trap_top)
						solid_instance.clean_death = true
						gml.instance_destroy(solid_instance)
					
				
				
				if (solid_instance.type != "altar"):
				
					if (global.cemetary): scr_treasure_gen(10, solid_instance)
					else: scr_treasure_gen(0, solid_instance) #--- passing in 0 for first argument as nothing is passed in original code
				
			
				# DY:  enemies
				if (LevelGeneration.scr_get_room_x(solid_instance.position.x) != global.start_room_x or LevelGeneration.scr_get_room_y(solid_instance.position.y-16) != global.start_room_y):
					var n
					if (solid_instance.position.y < gml.room_height - 64 and
						not gml.collision_point(solid_instance.position.x, solid_instance.position.y+16, "solid", 0, 0) and not gml.collision_point(solid_instance.position.x, solid_instance.position.y+32, "solid", 0, 0) and
						not gml.collision_point(solid_instance.position.x, solid_instance.position.y+16, "water", 0, 0) and not gml.collision_point(solid_instance.position.x, solid_instance.position.y+32, "water", 0, 0)):
					
						if (global.cemetary): n = 60
						else: n = 80
						
						if (global.dark_level and gml.rand(1,40) == 1): gml.instance_create(solid_instance.position.x, solid_instance.position.y+16, Objects.scarab)
						elif (gml.rand(1,n) == 1): gml.instance_create(solid_instance.position.x, solid_instance.position.y+16, Objects.bat)
						# DY:  elif (gml.rand(1,40) == 1): gml.instance_create(position.x, position.y+16, Objects.spider_hang)
					
					
					if (solid_instance.position.y > 16 and not gml.collision_point(solid_instance.position.x, solid_instance.position.y-16, "solid", 0, 0) and
						not gml.collision_point(solid_instance.position.x, solid_instance.position.y, "enemy", 0, 0) and
						not gml.collision_point(solid_instance.position.x, solid_instance.position.y, "spikes", 0, 0)):
					
						if (global.cemetary):
						
							if (gml.rand(1,25) == 1): gml.instance_create(solid_instance.position.x, solid_instance.position.y-16, Objects.zombie)
							elif (gml.rand(1,160) == 1): gml.instance_create(solid_instance.position.x, solid_instance.position.y-16, Objects.vampire)
						
						elif (not gml.collision_point(solid_instance.position.x, solid_instance.position.y-16, "water", 0, 0)):
						
							if (global.black_market and (fmod(solid_instance.position.y, 128) == 0)): n = 0 # DY:  to prevent mantraps from spawning near shopkeepers in black market
							else: n = 1
							if (gml.rand(1,60) == n): gml.instance_create(solid_instance.position.x, solid_instance.position.y-16, Objects.man_trap)
							elif (gml.rand(1,60) == 1): gml.instance_create(solid_instance.position.x, solid_instance.position.y-16, Objects.caveman)
							elif (gml.rand(1,120) == 1): gml.instance_create(solid_instance.position.x, solid_instance.position.y-16, Objects.fire_frog)
							elif (gml.rand(1,30) == 1): gml.instance_create(solid_instance.position.x, solid_instance.position.y-16, Objects.frog)
						
						elif (gml.rand(1,120) == 1): gml.instance_create(solid_instance.position.x, solid_instance.position.y-16, Objects.fire_frog)
						elif (gml.rand(1,30) == 1): gml.instance_create(solid_instance.position.x, solid_instance.position.y-16, Objects.frog)
					
				
				
				# DY:  rock
				
		

		# DY:  force market entrance
		if (global.gen_market_entrance and not global.made_market_entrance):
		
			for solid_instance in all_solids:
			
				if (solid_instance.position.y > 32 and gml.collision_point(solid_instance.position.x, solid_instance.position.y-16, "solid", 0, 0)):
				
					var obj = gml.instance_place(solid_instance.position.x, solid_instance.position.y-16, "solid", solid_instance)
					if (obj.type != "tree" and solid_instance.type != "altar" and not obj.invincible):
					
						gml.instance_create(solid_instance.position.x, solid_instance.position.y-16, Objects.x_market)
						solid_instance.invincible = true
						global.made_market_entrance = true
					
				
			
		
		
		var all_vines = gml.get_all_instances("vine")
		for vine_instance in all_vines:
		
			if (gml.rand(1,15) == 1): gml.instance_create(vine_instance.position.x, vine_instance.position.y, Objects.monkey)
		
		
		var all_water = gml.get_all_instances("water")
		for water_instance in all_water:
		
			if (not gml.collision_point(water_instance.position.x, water_instance.position.y, "solid", 0, 0)):
			
				if (gml.rand(1,30) == 1):
				
					if (global.cemetary): gml.instance_create(water_instance.position.x+4, water_instance.position.y+4, Objects.dead_fish)
					else: gml.instance_create(water_instance.position.x+4, water_instance.position.y+4, Objects.piranha)
				
			
		

	elif (global.level_type == 2):

		var all_solids = gml.get_all_instances("solid")
		for solid_instance in all_solids:
		
			if (not in_level.is_in_shop(solid_instance.position.x, solid_instance.position.y)):
				var entrance = gml.get_instance("entrance")
				# DY:  enemies
				var n = 30
				if (global.yeti_lair): n = 90
				
				if (LevelGeneration.scr_get_room_x(solid_instance.position.x) != global.start_room_x or LevelGeneration.scr_get_room_y(solid_instance.position.y-16) != global.start_room_y):
				
					if (solid_instance.position.y < gml.room_height - 64 and
						not gml.collision_point(solid_instance.position.x, solid_instance.position.y+16, "solid", 0, 0) and not gml.collision_point(solid_instance.position.x, solid_instance.position.y+32, "solid", 0, 0) and
						not gml.collision_point(solid_instance.position.x, solid_instance.position.y+16, "water", 0, 0) and not gml.collision_point(solid_instance.position.x, solid_instance.position.y+32, "water", 0, 0)):
					
						if (global.dark_level and gml.rand(1,40) == 1): gml.instance_create(solid_instance.position.x, solid_instance.position.y+16, Objects.scarab)
					
					elif (solid_instance.position.y > 16 and solid_instance.position.y < 592 and not gml.collision_point(solid_instance.position.x, solid_instance.position.y-16, "solid", 0, 0) and not in_level.is_in_shop(solid_instance.position.x, solid_instance.position.y)):
					
						if (gml.rand(1,n) == 1): gml.instance_create(solid_instance.position.x, solid_instance.position.y-16, Objects.ufo)
					
				
				
				if (solid_instance.position.y > 16 and solid_instance.position.y < 592 and
					not gml.collision_point(solid_instance.position.x, solid_instance.position.y-16, "solid", 0, 0) and
					not gml.collision_point(solid_instance.position.x+8, solid_instance.position.y-8, "enemy", 0, 0) and
					not gml.collision_point(solid_instance.position.x+8, solid_instance.position.y-1, "spikes", 0, 0) and
					gml.point_distance(solid_instance.position.x, solid_instance.position.y, entrance.position.x, entrance.position.y) > 64 and
					not in_level.is_in_shop(solid_instance.position.x, solid_instance.position.y)):
				
					if (gml.rand(1,10) == 1 and solid_instance.sprite_index == "dark" and not gml.collision_rectangle(solid_instance.position.x, solid_instance.position.y-64, solid_instance.position.x+15, solid_instance.position.y-1, "solid", 0, 0) and gml.distance_to_object(exit, solid_instance) > 64): gml.instance_create(solid_instance.position.x, solid_instance.position.y-16, Objects.spring_trap)
					elif (gml.rand(1,20) == 1 and gml.point_distance(solid_instance.position.x, solid_instance.position.y, entrance.position.x, entrance.position.y) > 64): gml.instance_create(solid_instance.position.x, solid_instance.position.y-16, Objects.yeti)
				
				
				if (solid_instance.type != "altar"):
					
					scr_treasure_gen(0, solid_instance) #--- passing in 0 for first argument as nothing is passed in original code
			
			
		

	elif (global.level_type == 3):

		global.tomb_lord = false
		global.gen_tomb_lord = false
		if (global.curr_level == 13): global.gen_tomb_lord = true
		elif (gml.rand(1,4) == 1): global.gen_tomb_lord = true
		
		global.gen_gold_entrance = false
		if (global.curr_level == 14): global.gen_gold_entrance = true
		global.made_gold_entrance = false

		var all_solids = gml.get_all_instances("solid")
		for solid_instance in all_solids:
		   
			# DY:  bg
			if (gml.rand(1,100) == 1 and not gml.collision_point(solid_instance.position.x, solid_instance.position.y-16, "solid", 0, 0)): gml.tile_add("bg_statues", 0, 0, 16, 48, solid_instance.position.x, solid_instance.position.y-32, 9005)
		
			if (not in_level.is_in_shop(solid_instance.position.x, solid_instance.position.y)):
			
				var entrance = gml.get_instance("entrance")
				# DY:  traps
				if (solid_instance.position.y > 32 and not gml.collision_point(solid_instance.position.x, solid_instance.position.y-16, "solid", 0, 0) and global.gen_gold_entrance and not global.made_gold_entrance):
				
					if (gml.rand(1,global.gold_chance) == 1):
					
						gml.instance_create(solid_instance.position.x, solid_instance.position.y-16, Objects.gold_door)
						solid_instance.invincible = true
						global.made_gold_entrance = true
					
					else: global.gold_chance -= 1
				
				elif (solid_instance.type != "tree" and solid_instance.type != "altar" and solid_instance.position.y != 0 and
					not gml.collision_point(solid_instance.position.x, solid_instance.position.y-16, "solid", 0, 0) and
					not gml.collision_point(solid_instance.position.x, solid_instance.position.y-16, "lava", 0, 0) and
					not gml.collision_rectangle(solid_instance.position.x, solid_instance.position.y-16, solid_instance.position.x+15,  solid_instance.position.y-1, "enemy", 0, 0) and
					not gml.collision_point(solid_instance.position.x, solid_instance.position.y-32, "solid", 0, 0) and
					(not gml.collision_point(solid_instance.position.x-16, solid_instance.position.y, "solid", 0, 0) or not gml.collision_point(solid_instance.position.x+16, solid_instance.position.y, "solid", 0, 0)) and
					gml.collision_point(solid_instance.position.x, solid_instance.position.y+16, "solid", 0, 0) and
					not in_level.is_in_shop(solid_instance.position.x, solid_instance.position.y) and
					solid_instance.position.x != 160 and solid_instance.position.x != 176 and solid_instance.position.x != 320 and solid_instance.position.x != 336 and solid_instance.position.x != 480 and solid_instance.position.x != 496):
				
					if (gml.rand(1,12) == 1 and gml.point_distance(solid_instance.position.x, solid_instance.position.y, entrance.position.x, entrance.position.y) > 64):
					
						# DY:  to keep the spear trap from plugging up lava passage
						if (gml.collision_point(solid_instance.position.x-16, solid_instance.position.y-32, "solid", 0, 0) and gml.collision_point(solid_instance.position.x+16, solid_instance.position.y-32, "solid", 0, 0) and
							not gml.collision_point(solid_instance.position.x, solid_instance.position.y-32, "solid", 0, 0)):
						
							# DY:  do nothing
							pass
						
						else:
						
							if (gml.collision_point(solid_instance.position.x, solid_instance.position.y-16, "solid", 0, 0)):
							
								var sol = gml.instance_nearest(solid_instance.position.x, solid_instance.position.y-16, "solid")
								sol.clean_death = true
								gml.instance_destroy(sol)
							
							gml.instance_create(solid_instance.position.x, solid_instance.position.y, Objects.spear_trap_bottom)
							if (global.dark_level): gml.instance_create(solid_instance.position.x, solid_instance.position.y-16, Objects.spear_trap_lit)
							else: gml.instance_create(solid_instance.position.x, solid_instance.position.y-16, Objects.spear_trap_top)
							solid_instance.clean_death = true
							gml.instance_destroy(solid_instance)
						
					
				
			
				# DY:  enemies
				if (solid_instance.position.y < gml.room_height - 64 and
					not gml.collision_point(solid_instance.position.x, solid_instance.position.y+16, "solid", 0, 0) and not gml.collision_point(solid_instance.position.x, solid_instance.position.y+32, "solid", 0, 0) and
					not gml.collision_point(solid_instance.position.x, solid_instance.position.y+16, "water", 0, 0) and not gml.collision_point(solid_instance.position.x, solid_instance.position.y+32, "water", 0, 0)):
				
					if (global.dark_level and gml.rand(1,40) == 1): gml.instance_create(solid_instance.position.x, solid_instance.position.y+16, Objects.scarab)
				

				if (LevelGeneration.scr_get_room_x(solid_instance.position.x) != global.start_room_x or LevelGeneration.scr_get_room_y(solid_instance.position.y-16) != global.start_room_y and
					not gml.collision_point(solid_instance.position.x, solid_instance.position.y-16, "enemy", 0, 0)):
						 
					if (solid_instance.position.y > 16 and not gml.collision_point(solid_instance.position.x, solid_instance.position.y-16, "solid", 0, 0)):
					
						if (global.gen_tomb_lord and
							not global.tomb_lord and
							not gml.collision_rectangle(solid_instance.position.x, solid_instance.position.y-32, solid_instance.position.x+32,  solid_instance.position.y-1, "solid", 0, 0) and
							gml.rand(1,40) == 1):
						
							gml.instance_create(solid_instance.position.x, solid_instance.position.y-32, Objects.tomb_lord)
							global.tomb_lord = true
						
						elif (gml.rand(1,40) == 1): gml.instance_create(solid_instance.position.x, solid_instance.position.y-16, Objects.caveman)
						elif (gml.rand(1,40) == 1): gml.instance_create(solid_instance.position.x, solid_instance.position.y-16, Objects.hawkman)
						elif (gml.rand(1,60) == 1):
						
							if (global.dark_level): gml.instance_create(solid_instance.position.x, solid_instance.position.y-16, Objects.smash_trap_lit)
							else: gml.instance_create(solid_instance.position.x, solid_instance.position.y-16, Objects.smash_trap)
						
					
				
				
				if (solid_instance.type != "altar"):
					   
					scr_treasure_gen(0, solid_instance) #--- passing in 0 for first argument as nothing is passed in original code
				
			
		
		
		# DY:  force generate gold door
		if (global.gen_gold_entrance and not global.made_gold_entrance):
		
			for solid_instance in all_solids:
			
				if (solid_instance.position.y > 32 and not gml.collision_point(solid_instance.position.x, solid_instance.position.y-16, "solid", 0, 0)):
				
					gml.instance_create(solid_instance.position.x, solid_instance.position.y-16, Objects.gold_door)
					solid_instance.invincible = true
					global.made_gold_entrance = true
					break
				
			
		
		
		var all_blocks = gml.get_all_instances("block")
		for block_instance in all_blocks:
		   
			block_instance.clean_death = true
			if (not in_level.is_in_shop(block_instance.position.x, block_instance.position.y)):
				var entrance = gml.get_instance("entrance")
				var n = gml.point_distance(block_instance.position.x, block_instance.position.y, entrance.position.x, entrance.position.y)
				if (not in_level.is_in_shop(block_instance.position.x, block_instance.position.y) and
					gml.rand(1,3) == 1 and not
					(block_instance.position.y == entrance.position.y and n < 144) and
					n > 48):
				
					if (gml.collision_point(block_instance.position.x+16, block_instance.position.y, "solid", 0, 0) and not
						gml.collision_rectangle(block_instance.position.x-32, block_instance.position.y, block_instance.position.x-1,  block_instance.position.y+15, "solid", 0, 0)):
					
						if (global.dark_level): gml.instance_create(block_instance.position.x, block_instance.position.y, Objects.arrow_trap_left_lit)
						else: gml.instance_create(block_instance.position.x, block_instance.position.y, Objects.arrow_trap_left)
						gml.instance_destroy(block_instance)
					
					elif (gml.collision_point(block_instance.position.x-16, block_instance.position.y, "solid", 0, 0) and not
						gml.collision_rectangle(block_instance.position.x+16, block_instance.position.y, block_instance.position.x+48,  block_instance.position.y+15, "solid", 0, 0)):
					
						if (global.dark_level): gml.instance_create(block_instance.position.x, block_instance.position.y, Objects.arrow_trap_right_lit)
						else: gml.instance_create(block_instance.position.x, block_instance.position.y, Objects.arrow_trap_right)
						gml.instance_destroy(block_instance)
					
				
			
		


	# DY:  add box of flares to dark level
	if (global.dark_level):

		var all_entrances = gml.get_all_instances("entrance")
		for entrance_instance in all_entrances:
		
			if (not gml.collision_point(entrance_instance.position.x-16, entrance_instance.position.y, "solid", 0, 0)):
			
				gml.instance_create(entrance_instance.position.x-16+8, entrance_instance.position.y+8, Objects.flare_crate)
			
			elif (not gml.collision_point(entrance_instance.position.x+16, entrance_instance.position.y, "solid", 0, 0)):
			
				gml.instance_create(entrance_instance.position.x+16+8, entrance_instance.position.y+8, Objects.flare_crate)
			
			else:
			
				gml.instance_create(entrance_instance.position.x+8, entrance_instance.position.y+8, Objects.flare_crate)
			
		


	global.clean_solids = false


func scr_setup_walls(placement):
	# DY: 
	# DY:  scr_setup_walls()
	# DY: 
	# DY:  Adds decorations to walls, changes their sprites depending on placement.
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

	var all_bricks = gml.get_all_instances("brick")
	for brick_instance in all_bricks:

		brick_instance.up = false
		brick_instance.down = false
		brick_instance.left = false
		brick_instance.right = false

		if (brick_instance.position.y == 0 or gml.collision_point(brick_instance.position.x, brick_instance.position.y-16, "brick", 0, 0) or gml.collision_point(brick_instance.position.x, brick_instance.position.y-16, "hard_block", 0, 0)): brick_instance.up = true
		if (brick_instance.position.y >= placement or gml.collision_point(brick_instance.position.x, brick_instance.position.y+16, "brick", 0, 0) or gml.collision_point(brick_instance.position.x, brick_instance.position.y+16, "hard_block", 0, 0)): brick_instance.down = true
		if (gml.collision_point(brick_instance.position.x-16, brick_instance.position.y, "brick", 0, 0) or gml.collision_point(brick_instance.position.x-16, brick_instance.position.y, "hard_block", 0, 0)): brick_instance.left = true
		if (gml.collision_point(brick_instance.position.x+16, brick_instance.position.y, "brick", 0, 0) or gml.collision_point(brick_instance.position.x+16, brick_instance.position.y, "hard_block", 0, 0)): brick_instance.right = true

		if (not brick_instance.up):
		
			brick_instance.sprite_index = "cave_up"
			if (global.graphics_high):
				var cave_top: Sprite2D = brick_instance.get_node("CaveTop")
				if (gml.rand(1,3) < 3): cave_top.set_cave_top("bg_cave_top", 0, 0, 16, 16, brick_instance.position.x, brick_instance.position.y-16, 3) #--- changed from tile_add
				else: cave_top.set_cave_top("bg_cave_top", 16, 0, 16, 16, brick_instance.position.x, brick_instance.position.y-16, 3) #--- changed from tile_add
			
			# DY:  gml.instance_create(position.x, position.y-16, Objects.cave_top)
		
		
		if (not brick_instance.down):
		
			if (not brick_instance.up): brick_instance.sprite_index = "cave_up2"
			else: brick_instance.sprite_index = "brick_down"
			# DY: gml.instance_create(position.x, position.y+16, Objects.cave_bottom)
		
		
		#/*
		#if (not left):
		#
			#gml.instance_create(position.x-16, position.y, Objects.cave_left)
		#
		#
		#if (not right):
		#
			#gml.instance_create(position.x+15, position.y, Objects.cave_right)
		#
		#*/
		
		

	var all_lush = gml.get_all_instances("lush")
	for lush_instance in all_lush:

		lush_instance.up = false
		lush_instance.down = false
		lush_instance.left = false
		lush_instance.right = false

		if (lush_instance.position.y == 0 or gml.collision_point(lush_instance.position.x, lush_instance.position.y-16, "lush", 0, 0)): lush_instance.up = true
		if (lush_instance.position.y >= placement or gml.collision_point(lush_instance.position.x, lush_instance.position.y+16, "lush", 0, 0)): lush_instance.down = true
		if (gml.collision_point(lush_instance.position.x-16, lush_instance.position.y, "lush", 0, 0)): lush_instance.left = true
		if (gml.collision_point(lush_instance.position.x+16, lush_instance.position.y, "lush", 0, 0)): lush_instance.right = true


		if (not lush_instance.up):
		
			lush_instance.sprite_index = "lush_up"
			if (global.graphics_high):
			
				if (gml.rand(1,8) == 1): gml.tile_add("bg_cave_top2", 32, 0, 16, 16, lush_instance.position.x, lush_instance.position.y-16, 3)
				elif (gml.rand(1,3) < 3): gml.tile_add("bg_cave_top2", 0, 0, 16, 16, lush_instance.position.x, lush_instance.position.y-16, 3)
				else: gml.tile_add("bg_cave_top2", 16, 0, 16, 16, lush_instance.position.x, lush_instance.position.y-16, 3)
			
		
		
		if (not lush_instance.down):
		
			if (not lush_instance.up): lush_instance.sprite_index = "lush_up2"
			else: lush_instance.sprite_index = "lush_down"
			
			if (not gml.collision_point(lush_instance.position.x, lush_instance.position.y+16, "solid", 0, 0) and global.graphics_high):
			
				if (gml.rand(1,12) == 1): gml.tile_add("bg_cave_top2", 48, 0, 16, 16, lush_instance.position.x, lush_instance.position.y+16, 3)
				elif (gml.rand(1,12) == 1): gml.tile_add("bg_cave_top2", 64, 0, 16, 16, lush_instance.position.x, lush_instance.position.y+16, 3)
			
			# DY: gml.instance_create(position.x, position.y+16, Objects.lush_bottom)
		
		

	var all_darks = gml.get_all_instances("dark")
	for dark_instance in all_darks:

		dark_instance.up = false
		dark_instance.down = false
		dark_instance.left = false
		dark_instance.right = false

		if (dark_instance.position.y == 0 or gml.collision_point(dark_instance.position.x, dark_instance.position.y-16, "dark", 0, 0)): dark_instance.up = true
		if (dark_instance.position.y >= placement or gml.collision_point(dark_instance.position.x, dark_instance.position.y+16, "dark", 0, 0)): dark_instance.down = true
		if (gml.collision_point(dark_instance.position.x-16, dark_instance.position.y, "dark", 0, 0)): dark_instance.left = true
		if (gml.collision_point(dark_instance.position.x+16, dark_instance.position.y, "dark", 0, 0)): dark_instance.right = true

		if (not dark_instance.up):
		
			dark_instance.sprite_index = "dark_up"
			if (global.graphics_high):
			
				if (gml.rand(1,3) < 3): gml.tile_add("bg_cave_top3", 0, 0, 16, 16, dark_instance.position.x, dark_instance.position.y-16, 3)
				else: gml.tile_add("bg_cave_top3", 16, 0, 16, 16, dark_instance.position.x, dark_instance.position.y-16, 3)
			
		

		if (not dark_instance.down):
		
			if (not dark_instance.up): dark_instance.sprite_index = "dark_up2"
			else: dark_instance.sprite_index = "dark_down"
			# DY: gml.instance_create(position.x, position.y+16, Objects.dark_bottom)
		
		
		#/*
		#if (not left):
		#
			#gml.instance_create(position.x-16, position.y, Objects.dark_left)
		#
		#
		#if (not right):
		#
			#gml.instance_create(position.x+15, position.y, Objects.dark_right)
		#
		#*/

	var all_ice = gml.get_all_instances("ice")
	for ice_instance in all_ice:

		ice_instance.up = false
		ice_instance.down = false
		ice_instance.left = false
		ice_instance.right = false

		if (gml.collision_point(ice_instance.position.x, ice_instance.position.y-16, "ice", 0, 0)):  ice_instance.up = true
		if (gml.collision_point(ice_instance.position.x, ice_instance.position.y+16, "ice", 0, 0)):  ice_instance.down = true
		if (gml.collision_point(ice_instance.position.x-16, ice_instance.position.y, "ice", 0, 0)):  ice_instance.left = true
		if (gml.collision_point(ice_instance.position.x+16, ice_instance.position.y, "ice", 0, 0)):  ice_instance.right = true

		if (not ice_instance.up):
		
			ice_instance.sprite_index = "ice_up"
		
		if (not ice_instance.down):
		
			if (not ice_instance.up): ice_instance.sprite_index = "ice_up2"
			else: ice_instance.sprite_index = "ice_down"
			if (gml.rand(1,20) == 1 and not gml.collision_point(ice_instance.position.x, ice_instance.position.y+16, "solid", 0, 0)): gml.instance_create(ice_instance.position.x, ice_instance.position.y+16, Objects.ice_bottom)
		
		if (not ice_instance.left):
		
			if (not ice_instance.up and not ice_instance.down): ice_instance.sprite_index = "ice_udl"
			elif (not ice_instance.up): ice_instance.sprite_index = "ice_ul"
			elif (not ice_instance.down): ice_instance.sprite_index = "ice_dl"
			else: ice_instance.sprite_index = "ice_left"
		
		if (not ice_instance.right):
		
			if (not ice_instance.up and not ice_instance.down): ice_instance.sprite_index = "ice_udr"
			elif (not ice_instance.up): ice_instance.sprite_index = "ice_ur"
			elif (not ice_instance.down): ice_instance.sprite_index = "ice_dr"
			else: ice_instance.sprite_index = "ice_right"
		
		if (not ice_instance.up and not ice_instance.left and not ice_instance.right and ice_instance.down): ice_instance.sprite_index = "ice_ulr"
		if (not ice_instance.down and not ice_instance.left and not ice_instance.right and ice_instance.up): ice_instance.sprite_index = "ice_dlr"
		if (ice_instance.up and ice_instance.down and not ice_instance.left and not ice_instance.right): ice_instance.sprite_index = "ice_lr"
		if (not ice_instance.up and not ice_instance.down and not ice_instance.left and not ice_instance.right):
		
			ice_instance.sprite_index = "ice_block"
		

	var all_temples = gml.get_all_instances("temple")
	for temple_instance in all_temples:

		temple_instance.up = false
		temple_instance.down = false
		temple_instance.left = false
		temple_instance.right = false

		if (temple_instance.position.y == 0 or gml.collision_point(temple_instance.position.x, temple_instance.position.y-16, "temple", 0, 0) or gml.collision_point(temple_instance.position.x, temple_instance.position.y+16, "temple_fake", 0, 0)): temple_instance.up = true
		if (temple_instance.position.y >= placement or gml.collision_point(temple_instance.position.x, temple_instance.position.y+16, "temple", 0, 0) or gml.collision_point(temple_instance.position.x, temple_instance.position.y+16, "temple_fake", 0, 0)): temple_instance.down = true
		if (gml.collision_point(temple_instance.position.x-16, temple_instance.position.y, "temple", 0, 0) or gml.collision_point(temple_instance.position.x-16, temple_instance.position.y, "temple_fake", 0, 0)): temple_instance.left = true
		if (gml.collision_point(temple_instance.position.x+16, temple_instance.position.y, "temple", 0, 0) or gml.collision_point(temple_instance.position.x+16, temple_instance.position.y, "temple_fake", 0, 0)): temple_instance.right = true

		if (global.city_of_gold):
		
		
			if (not temple_instance.up):
			
				temple_instance.sprite_index = "g_temple_up"
				if (global.graphics_high):
				
					if (gml.rand(1,4) == 1): gml.tile_add("bg_cave_top4", 0, 0, 16, 16, temple_instance.position.x, temple_instance.position.y-16, 3)
					elif (gml.rand(1,4) == 1): gml.tile_add("bg_cave_top4", 16, 0, 16, 16, temple_instance.position.x, temple_instance.position.y-16, 3)
				
				if (not temple_instance.left and not temple_instance.right):
				
					if (not temple_instance.down): temple_instance.sprite_index = "g_temple_up6"
					else: temple_instance.sprite_index = "g_temple_up5"
				
				elif (not temple_instance.left):
				   
					if (not temple_instance.down): temple_instance.sprite_index = "g_temple_up7"
					else: temple_instance.sprite_index = "g_temple_up3"
				
				elif (not temple_instance.right):
				   
					if (not temple_instance.down): temple_instance.sprite_index = "g_temple_up8"
					else: temple_instance.sprite_index = "g_temple_up4"
				
				elif (temple_instance.left and temple_instance.right and not temple_instance.down):
				
					temple_instance.sprite_index = "g_temple_up2"
				
			
			elif (not temple_instance.down):
			
				temple_instance.sprite_index = "g_temple_down"
		
		
		
		else:
			if (not temple_instance.up):
			
				temple_instance.sprite_index = "temple_up"
				if (global.graphics_high):
				
					if (gml.rand(1,4) == 1): gml.tile_add("bg_cave_top4", 0, 0, 16, 16, temple_instance.position.x, temple_instance.position.y-16, 3)
					elif (gml.rand(1,4) == 1): gml.tile_add("bg_cave_top4", 16, 0, 16, 16, temple_instance.position.x, temple_instance.position.y-16, 3)
				
				if (not temple_instance.left and not temple_instance.right):
				
					if (not temple_instance.down): temple_instance.sprite_index = "temple_up6"
					else: temple_instance.sprite_index = "temple_up5"
				
				elif (not temple_instance.left):
				   
					if (not temple_instance.down): temple_instance.sprite_index = "temple_up7"
					else: temple_instance.sprite_index = "temple_up3"
				
				elif (not temple_instance.right):
				   
					if (not temple_instance.down): temple_instance.sprite_index = "temple_up8"
					else: temple_instance.sprite_index = "temple_up4"
				
				elif (temple_instance.left and temple_instance.right and not temple_instance.down):
				
					temple_instance.sprite_index = "temple_up2"
				
			
			elif (not temple_instance.down):
			
				temple_instance.sprite_index = "temple_down"
		

	var all_temple_fakes = gml.get_all_instances("temple_fake")
	for temple_fake_instance in all_temple_fakes:

		temple_fake_instance.up = false
		temple_fake_instance.down = false
		temple_fake_instance.left = false
		temple_fake_instance.right = false

		if (temple_fake_instance.position.y == 0 or gml.collision_point(temple_fake_instance.position.x, temple_fake_instance.position.y-16, "temple", 0, 0) or gml.collision_point(temple_fake_instance.position.x, temple_fake_instance.position.y-16, "temple_fake", 0, 0)): temple_fake_instance.up = true
		if (gml.collision_point(temple_fake_instance.position.x, temple_fake_instance.position.y+16, "temple", 0, 0) or gml.collision_point(temple_fake_instance.position.x, temple_fake_instance.position.y+16, "temple_fake", 0, 0)): temple_fake_instance.down = true
		if (gml.collision_point(temple_fake_instance.position.x-16, temple_fake_instance.position.y, "temple", 0, 0) or gml.collision_point(temple_fake_instance.position.x-16, temple_fake_instance.position.y, "temple_fake", 0, 0)): temple_fake_instance.left = true
		if (gml.collision_point(temple_fake_instance.position.x+16, temple_fake_instance.position.y, "temple", 0, 0) or gml.collision_point(temple_fake_instance.position.x+16, temple_fake_instance.position.y, "temple_fake", 0, 0)): temple_fake_instance.right = true

		if (global.city_of_gold):
		
		
			if (not temple_fake_instance.up):
			
				temple_fake_instance.sprite_index = "g_temple_up"
				if (global.graphics_high):
				
					if (gml.rand(1,4) == 1): gml.tile_add("bg_cave_top4", 0, 0, 16, 16, temple_fake_instance.position.x, temple_fake_instance.position.y-16, 3)
					elif (gml.rand(1,4) == 1): gml.tile_add("bg_cave_top4", 16, 0, 16, 16, temple_fake_instance.position.x, temple_fake_instance.position.y-16, 3)
				
				if (not temple_fake_instance.left and not temple_fake_instance.right):
				
					if (not temple_fake_instance.down): temple_fake_instance.sprite_index = "g_temple_up6"
					else: temple_fake_instance.sprite_index = "g_temple_up5"
				
				elif (not temple_fake_instance.left):
				   
					if (not temple_fake_instance.down): temple_fake_instance.sprite_index = "g_temple_up7"
					else: temple_fake_instance.sprite_index = "g_temple_up3"
				
				elif (not temple_fake_instance.right):
				   
					if (not temple_fake_instance.down): temple_fake_instance.sprite_index = "g_temple_up8"
					else: temple_fake_instance.sprite_index = "g_temple_up4"
				
				elif (temple_fake_instance.left and temple_fake_instance.right and not temple_fake_instance.down):
				
					temple_fake_instance.sprite_index = "g_temple_up2"
				
			
			elif (not temple_fake_instance.down):
			
				temple_fake_instance.sprite_index = "g_temple_down"
		
		
		
		else:

			if (not temple_fake_instance.up):
			
				temple_fake_instance.sprite_index = "temple_up"
				if (not temple_fake_instance.left and not temple_fake_instance.right):
				
					if (not temple_fake_instance.down): temple_fake_instance.sprite_index = "temple_up6"
					else: temple_fake_instance.sprite_index = "temple_up5"
				
				elif (not temple_fake_instance.left):
				   
					if (not temple_fake_instance.down): temple_fake_instance.sprite_index = "temple_up7"
					else: temple_fake_instance.sprite_index = "temple_up3"
				
				elif (not temple_fake_instance.right):
				   
					if (not temple_fake_instance.down): temple_fake_instance.sprite_index = "temple_up8"
					else: temple_fake_instance.sprite_index = "temple_up4"
				
				elif (temple_fake_instance.left and temple_fake_instance.right and not temple_fake_instance.down):
				
					temple_fake_instance.sprite_index = "temple_up2"
				
			
			elif (not temple_fake_instance.down):
			
				temple_fake_instance.sprite_index = "temple_down"
		

	var all_water = gml.get_all_instances("water")
	for water_instance in all_water:

		if (water_instance.type == "water"):
		 
			water_instance.up = false
			water_instance.up_water = false
			water_instance.down = false
			water_instance.left = false
			water_instance.right = false

			if (gml.collision_point(water_instance.position.x, water_instance.position.y-16, "water", 0, 0)): water_instance.up_water = true
			if (gml.collision_point(water_instance.position.x, water_instance.position.y-16, "solid", 0, 0)): water_instance.up = true
			if (gml.collision_point(water_instance.position.x, water_instance.position.y+16, "solid", 0, 0) and not gml.collision_point(water_instance.position.x, water_instance.position.y+16, "water", 0, 0)): water_instance.down = true

			if (not water_instance.up and not water_instance.up_water):
			
				water_instance.sprite_index = "water_top"
			
			
			if (water_instance.up_water and gml.collision_point(water_instance.position.x, water_instance.position.y-32, "water", 0, 0) and water_instance.down and gml.rand(1,4) == 1):
			
				water_instance.sprite_index = "water_bottom_tall2"
				var water = gml.instance_place(water_instance.position.x, water_instance.position.y-16, "water", water_instance)
				if (water): water.sprite_index = "water_bottom_tall1"
			
			elif ((water_instance.up or water_instance.up_water) and water_instance.down):
			
				var n = gml.rand(1,4)
				match (n):
				
					1: water_instance.sprite_index = "water_bottom"
					2: water_instance.sprite_index = "water_bottom2"
					3: water_instance.sprite_index = "water_bottom3"
					4: water_instance.sprite_index = "water_bottom4"
		
		

	var all_lava = gml.get_all_instances("lava")
	for lava_instance in all_lava:

		lava_instance.up = false
		lava_instance.up_water = false
		lava_instance.down = false
		lava_instance.left = false
		lava_instance.right = false

		if (gml.collision_point(lava_instance.position.x, lava_instance.position.y-16, "water", 0, 0)): lava_instance.up_water = true
		if (gml.collision_point(lava_instance.position.x, lava_instance.position.y-16, "solid", 0, 0)): lava_instance.up = true
		if (gml.collision_point(lava_instance.position.x, lava_instance.position.y+16, "solid", 0, 0)): lava_instance.down = true

		if (not lava_instance.up and not lava_instance.up_water):
		
			lava_instance.sprite_index = "lava_top"
			if (gml.rand(1,4) == 1): lava_instance.spurt = true
		
		
		#/*
		#if (up_water and gml.collision_point(position.x, position.y-32, "water", 0, 0) and down and gml.rand(1,4) == 1):
		#
			#sprite_index = "water_bottom_tall2"
			#water = gml.instance_place(position.x, position.y-16, water)
			#if (water): water.sprite_index = "water_bottom_tall1"
		#
		#elif ((up or up_water) and down):
		#
			#n = gml.rand(1,4)
			#match (n)
			#
			#1:  sprite_index = "water_bottom"  
			#2:  sprite_index = "water_bottom2"  
			#3:  sprite_index = "water_bottom3"  
			#4:  sprite_index = "water_bottom4"  
			#
		#
		#*/

	var all_vines = gml.get_all_instances("vine")
	for vine_instance in all_vines:

		vine_instance.up = false
		vine_instance.down = false
		vine_instance.left = false
		vine_instance.right = false

		if (gml.collision_point(vine_instance.position.x+8, vine_instance.position.y-8, "ladder", 0, 0)): vine_instance.up = true
		if (gml.collision_point(vine_instance.position.x+8, vine_instance.position.y+16, "ladder", 0, 0)): vine_instance.down = true

		if (not vine_instance.up):
		
			vine_instance.sprite_index = "vine_source"
		
		elif (not vine_instance.down):
		
			vine_instance.sprite_index = "vine_bottom"
		

	var all_blocks = gml.get_all_instances("block")
	for block_instance in all_blocks:

		block_instance.down = false

		if (gml.collision_point(block_instance.position.x, block_instance.position.y+16, "brick", 0, 0) or gml.collision_point(block_instance.position.x, block_instance.position.y+16, "temple", 0, 0) or gml.collision_point(block_instance.position.x, block_instance.position.y+16, "hard_block", 0, 0)): block_instance.down = true

		# DY:  don't want push blocks next to lava until we tighten up liquid draining
		if (gml.collision_point(block_instance.position.x-16, block_instance.position.y, "lava", 0, 0) or gml.collision_point(block_instance.position.x+16, block_instance.position.y, "lava", 0, 0)): block_instance.down = false
		
		if (block_instance.down and gml.rand(1,4) == 1):
		
			gml.instance_create(block_instance.position.x, block_instance.position.y, Objects.push_block)
			gml.instance_destroy(block_instance)
		

	var all_trees = gml.get_all_instances("tree")
	for tree_instance in all_trees:

		tree_instance.up = false
		tree_instance.down = false
		tree_instance.left = false
		tree_instance.right = false

		if (gml.collision_point(tree_instance.position.x, tree_instance.position.y-16, "tree", 0, 0)): tree_instance.up = true
		if (gml.collision_point(tree_instance.position.x, tree_instance.position.y+16, "tree", 0, 0)): tree_instance.down = true
		if (gml.collision_point(tree_instance.position.x-16, tree_instance.position.y, "tree", 0, 0)): tree_instance.left = true
		if (gml.collision_point(tree_instance.position.x+16, tree_instance.position.y, "tree", 0, 0)): tree_instance.right = true
		
		if (not tree_instance.up):
		
			if (global.cemetary): tree_instance.sprite_index = "tree_top_dead"
			else: tree_instance.sprite_index = "tree_top"
			tree_instance.depth = 1
		

	var all_tree_branches = gml.get_all_instances("tree_branch")
	for tree_branch_instance in all_tree_branches:

		tree_branch_instance.up = false
		tree_branch_instance.down = false
		tree_branch_instance.left = false
		tree_branch_instance.right = false

		if (gml.collision_point(tree_branch_instance.position.x, tree_branch_instance.position.y-16, "leaves", 0, 0)): tree_branch_instance.up = true
		if (gml.collision_point(tree_branch_instance.position.x, tree_branch_instance.position.y+16, "tree_branch", 0, 0)): tree_branch_instance.down = true
		if (gml.collision_point(tree_branch_instance.position.x-16, tree_branch_instance.position.y, "tree_branch", 0, 0)): tree_branch_instance.left = true
		if (gml.collision_point(tree_branch_instance.position.x+16, tree_branch_instance.position.y, "tree", 0, 0)): tree_branch_instance.right = true
		
		if (tree_branch_instance.up):
		
			gml.instance_destroy(tree_branch_instance)
		
		if (tree_branch_instance.right):
		
			if (global.cemetary): tree_branch_instance.sprite_index = "tree_branch_dead_l"
			else: tree_branch_instance.sprite_index = "tree_branch_left"


func scr_check_water_top(calling_object):
	# DY: 
	# DY:  scr_check_water_top()
	# DY: 
	# DY:  recursive function called in scr_init_level() that checks for the surface of a
	# DY:  pool of water or lava and sets the sprite accordingly
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

	var obj = gml.instance_place(calling_object.position.x-16, calling_object.position.y, "water", calling_object)
	#if (gml.instance_exists(obj)): #--- can do a simple check here to see if it found a collision, rather than calling instance_ex
	if obj:

		if (obj.sprite_index != "water_top" and obj.sprite_index != "lava_top"):

			
			if (obj.type == "lava"): obj.sprite_index = "lava_top"
			else: obj.sprite_index = "water_top"
			scr_check_water_top(calling_object)
			
		

	obj = gml.instance_place(calling_object.position.x+16, calling_object.position.y, "water", calling_object)
	#if (gml.instance_exists(obj)):
	if obj: #--- can do a simple check here to see if it found a collision, rather than calling instance_ex

		if (obj.sprite_index != "water_top" and obj.sprite_index != "lava_top"):

			
			if (obj.type == "lava"): obj.sprite_index = "lava_top"
			else: obj.sprite_index = "water_top"
			scr_check_water_top(calling_object)
			
