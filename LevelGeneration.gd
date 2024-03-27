extends Node

var jetpack
var cape_pickup
var shotgun
var mattock
var teleporter
var gloves
var spectacles
var web_cannon
var pistol
var mitt
var paste = preload("res://Test Scenes/paste.tscn")
var spring_shoes
var spike_shoes
var machete
var bomb_box = preload("res://Test Scenes/bomb_box.tscn")
var bow
var compass
var para_pickup
var rope_pile

var bomb_bag = preload("res://Test Scenes/bomb_bag.tscn")

var rock
var jar
var solid
var block
var giant_spider
var web
var locked_chest
var crate
var chest
var damsel: bool
var damsel_object
var water
var fake_bones
var bones
var skull
var gold_bar
var gold_bars
var emerald_big
var sapphire_big
var ruby_big
var spikes
var entrance
var exit

var idol: bool
	
func scr_get_room_x(x):
#
# scr_get_room_x(x)
#
# Returns the horizontal room number of a room given the x-coord.
#
	var tx = x

	if (tx < 160+16): return 0
	elif (tx >= 160+16 and tx < 320+16): return 1
	elif (tx >= 320+16 and tx < 480+16): return 2
	elif (tx >= 480+16): return 3

	return -1

func scr_get_room_y(y):
#
# scr_get_room_y(y)
#
# Returns the vertical room number of a room given the y-coord.
#

	var ty = y

	if (ty < 128+16): return 0
	elif (ty >= 128+16 and ty < 256+16): return 1
	elif (ty >= 256+16 and ty < 384+16): return 2
	elif (ty >= 384+16 and ty < 512+16): return 3
	elif (ty >= 512+16): return 4

	return -1

func scr_generate_item(x, y, set_type):
# scr_generate_item(x, y, set_type)
#
# Generate an item at (x,y).
#
	randomize()
	var obj
	
	if (set_type == 0): # Crate Set

		if (randi_range(1,500) == 1): obj = gml.instance_create(x, y, jetpack)
		elif (randi_range(1,200) == 1): obj = gml.instance_create(x, y, cape_pickup)
		elif (randi_range(1,100) == 1): obj = gml.instance_create(x, y, shotgun)
		elif (randi_range(1,100) == 1): obj = gml.instance_create(x, y, mattock)
		elif (randi_range(1,100) == 1): obj = gml.instance_create(x, y, teleporter)
		elif (randi_range(1,90) == 1): obj = gml.instance_create(x, y, gloves)
		elif (randi_range(1,90) == 1): obj = gml.instance_create(x, y, spectacles)
		elif (randi_range(1,80) == 1): obj = gml.instance_create(x, y, web_cannon)
		elif (randi_range(1,80) == 1): obj = gml.instance_create(x, y, pistol)
		elif (randi_range(1,80) == 1): obj = gml.instance_create(x, y, mitt)
		elif (randi_range(1,60) == 1): obj = gml.instance_create(x, y, paste)
		elif (randi_range(1,60) == 1): obj = gml.instance_create(x, y, spring_shoes)
		elif (randi_range(1,60) == 1): obj = gml.instance_create(x, y, spike_shoes)
		elif (randi_range(1,60) == 1): obj = gml.instance_create(x, y, machete)
		elif (randi_range(1,40) == 1): obj = gml.instance_create(x, y, bomb_box)
		elif (randi_range(1,40) == 1): obj = gml.instance_create(x, y, bow)
		elif (randi_range(1,20) == 1): obj = gml.instance_create(x, y, compass)
		elif (randi_range(1,10) == 1): obj = gml.instance_create(x, y, para_pickup)
		else: obj = gml.instance_create(x, y, rope_pile)
		obj.cost = 0
		obj.for_sale = false

	elif (set_type == 1): # High End Set

		if (randi_range(1,40) == 1): obj = gml.instance_create(x, y, jetpack)
		elif (randi_range(1,25) == 1): obj = gml.instance_create(x, y, cape_pickup)
		elif (randi_range(1,20) == 1): obj = gml.instance_create(x, y, shotgun)
		elif (randi_range(1,10) == 1): obj = gml.instance_create(x, y, gloves)
		elif (randi_range(1,10) == 1): obj = gml.instance_create(x, y, teleporter)
		elif (randi_range(1,8) == 1): obj = gml.instance_create(x, y, mattock)
		elif (randi_range(1,8) == 1): obj = gml.instance_create(x, y, paste)
		elif (randi_range(1,8) == 1): obj = gml.instance_create(x, y, spring_shoes)
		elif (randi_range(1,8) == 1): obj = gml.instance_create(x, y, spike_shoes)
		elif (randi_range(1,8) == 1): obj = gml.instance_create(x, y, compass)
		elif (randi_range(1,8) == 1): obj = gml.instance_create(x, y, pistol)
		elif (randi_range(1,8) == 1): obj = gml.instance_create(x, y, machete)
		else: obj = gml.instance_create(x, y, bomb_box)

	elif (set_type == 2): # Underground Set

		match randi_range(0,18):
	
			0:  obj = gml.instance_create(x, y-2, jetpack)
			1:  obj = gml.instance_create(x, y, cape_pickup)
			2:  obj = gml.instance_create(x, y, shotgun)
			3:  obj = gml.instance_create(x, y, mattock)
			4:  obj = gml.instance_create(x, y+3, teleporter)
			5:  obj = gml.instance_create(x, y-1, gloves)
			6:  obj = gml.instance_create(x, y, spectacles)
			7:  obj = gml.instance_create(x-2, y, web_cannon)
			8:  obj = gml.instance_create(x, y, pistol)
			9:  obj = gml.instance_create(x, y-1, mitt)
			10:  obj = gml.instance_create(x, y, paste)
			11:  obj = gml.instance_create(x, y, spring_shoes)
			12:  obj = gml.instance_create(x, y, spike_shoes)
			13:  obj = gml.instance_create(x, y, machete)
			14:  obj = gml.instance_create(x, y-2, bomb_box)
			15:  obj = gml.instance_create(x, y, bow)
			16:  obj = gml.instance_create(x, y, compass)
			17:  obj = gml.instance_create(x, y, para_pickup)
			18:  obj = gml.instance_create(x, y, rope_pile)
	
		obj.cost = 0 #--- should test these to see if they are properly set after setting up the class so these exist for the object
		obj.for_sale = false

func scr_shop_items_gen(xpos, ypos, shop_type): #--- original doesn't have these arguments but seems necessary
#
	# scr_shop_items_gen()
	#
	# Generate shop items.  Must be called from scr_room_gen_x().
	#
	randomize()
	
	var obj
	var m
	var n
	
	if (shop_type == "Bomb"):

		while (true):
		
			if (randi_range(1,5) == 1):
				if (not gml.instance_exists(paste)):
					obj = gml.instance_create(xpos+8, ypos+10, paste)
					break
			
			elif (randi_range(1,4) == 1):
				obj = gml.instance_create(xpos+8, ypos+8, bomb_box)
				break
			else:
				obj = gml.instance_create(xpos+8, ypos+10, bomb_bag)
				break
		

	elif (shop_type == "Weapon"):

		m = 20
		while (true):
		
			n = randi_range(1,4)
			if (m <= 0):
				obj = gml.instance_create(xpos+8, ypos+10, bomb_bag)
				break
			elif (randi_range(1,12)==1):
			
				if (not gml.instance_exists(web_cannon)):
					obj = gml.instance_create(xpos+8, ypos+12, web_cannon)
					break
			
			elif (randi_range(1,10)==1):
			
				if (not gml.instance_exists(shotgun)):
					obj = gml.instance_create(xpos+8, ypos+12, shotgun)
					break
			
			elif (randi_range(1,6)==1):
				obj = gml.instance_create(xpos+8, ypos+10, bomb_box)
				break
			elif (n == 1):
			
				if (not gml.instance_exists(pistol)):
					obj = gml.instance_create(xpos+8, ypos+12, pistol)
					break
			
			elif (n == 2):
			
				if (not gml.instance_exists(machete)):
					obj = gml.instance_create(xpos+8, ypos+12, machete)
					break
			
			elif (n == 3):
				obj = gml.instance_create(xpos+8, ypos+10, bomb_bag)
				break
			elif (n == 4):
			
				if (not gml.instance_exists(bow)):
					obj = gml.instance_create(xpos+8, ypos+12, bow)
					break
			
			m -= 1
		

	elif (shop_type == "Clothing"):

		m = 20
		while (true):
		
			n = randi_range(1,6)
			if (randi_range(1,m) == 1):
				obj = gml.instance_create(xpos+8, ypos+11, rope_pile)
				break
			elif (n == 1):
				
				if (not gml.instance_exists(spring_shoes)):
					obj = gml.instance_create(xpos+8, ypos+10, spring_shoes)
					break
				
			elif (n == 2):
				
				if (not gml.instance_exists(spectacles)):
					obj = gml.instance_create(xpos+8, ypos+10, spectacles)
					break
				
			elif (n == 3):
				
				if (not gml.instance_exists(gloves)):
					obj = gml.instance_create(xpos+8, ypos+8, gloves)
					break
				
			elif (n == 4):
				
				if (not gml.instance_exists(mitt)):
					obj = gml.instance_create(xpos+8, ypos+8, mitt)
					break
				
			elif (n == 5):
				
				if (not gml.instance_exists(cape_pickup)):
					obj = gml.instance_create(xpos+8, ypos+10, cape_pickup)
					break
				
			elif (n == 6):
				
				if (not gml.instance_exists(spike_shoes)):
					obj = gml.instance_create(xpos+8, ypos+10, spike_shoes)
					break
				
			m -= 1
		

	elif (shop_type == "Rare"):

		m = 20
		while (true):
		
			n = randi_range(1,11)
			if (randi_range(1,m) == 1):
				obj = gml.instance_create(xpos+8, ypos+8, bomb_box)
				break
			elif (n == 1):
				
				if (not gml.instance_exists(spring_shoes)):
					obj = gml.instance_create(xpos+8, ypos+10, spring_shoes)
					break
				
			elif (n == 2):
				
				if (not gml.instance_exists(compass)):
					obj = gml.instance_create(xpos+8, ypos+10, compass)
					break
				
			elif (n == 3):
				
				if (not gml.instance_exists(mattock)):
					obj = gml.instance_create(xpos+8, ypos+10, mattock)
					break
				
			elif (n == 4):
				
				if (not gml.instance_exists(spectacles)):
					obj = gml.instance_create(xpos+8, ypos+10, spectacles)
					break
				
			elif (n == 5):
				
				if (not gml.instance_exists(jetpack)):
					obj = gml.instance_create(xpos+8, ypos+8, jetpack)
					break
				
			elif (n == 6):
				
				if (not gml.instance_exists(gloves)):
					obj = gml.instance_create(xpos+8, ypos+8, gloves)
					break
				
			elif (n == 7):
				
				if (not gml.instance_exists(mitt)):
					obj = gml.instance_create(xpos+8, ypos+8, mitt)
					break
				
			elif (n == 8):
				
				if (not gml.instance_exists(web_cannon)):
					obj = gml.instance_create(xpos+8, ypos+12, web_cannon)
					break
				
			elif (n == 9):
				
				if (not gml.instance_exists(cape_pickup)):
					obj = gml.instance_create(xpos+8, ypos+10, cape_pickup)
					break
				
			elif (n == 10):
				
				if (not gml.instance_exists(teleporter)):
					obj = gml.instance_create(xpos+8, ypos+12, teleporter)
					break
				
			elif (n == 11):
				
				if (not gml.instance_exists(spike_shoes)):
					obj = gml.instance_create(xpos+8, ypos+10, spike_shoes)
					break
				
			m -= 1
		

	else:

		while (true):
		
			n = randi_range(1,3)
			if (randi_range(1,20) == 1):
			
				if (not gml.instance_exists(mattock)):
					obj = gml.instance_create(xpos+8, ypos+10, mattock)
					break
			
			elif (randi_range(1,10) == 1):
				
				if (not gml.instance_exists(gloves)):
					obj = gml.instance_create(xpos+8, ypos+8, gloves)
					break
				
			elif (randi_range(1,10) == 1):
				
				if (not gml.instance_exists(compass)):
					obj = gml.instance_create(xpos+8, ypos+10, compass)
					break
				
			elif (n == 1):
				obj = gml.instance_create(xpos+8, ypos+10, bomb_bag)
				break
			elif (n == 2):
				obj = gml.instance_create(xpos+8, ypos+11, rope_pile)
				break
			elif (n == 3):
				obj = gml.instance_create(xpos+8, ypos+10, para_pickup)
				break

#--- needs to be finished
	#if (obj):
#
		#obj.for_sale = true
		#if (global.curr_level > 2):
		#
			#with obj
			#
				#cost += (cost/100)*10*(global.curr_level-2)
				#if (shop_desc == ""): buy_message = "A " + string_upper(type) + " FOR $" + string(cost) + "."
				#else: buy_message = shop_desc + " FOR $" + string(cost) + "."

func scr_get_name():
#
# scr_get_name()
#
# Return a random name (for shopkeeper).
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
	#If not, please obtain a new copy of Spelunky from <http:#spelunkyworld.com/>
	#
#***********************************************************************************/
	randomize()
	match randi_range(1,32):
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

func scr_treasure_gen(bones_chance, x, y): #will pass in x and y as well since there is no position for this to have an x and y
#
# scr_treasure_gen(bones_chance)
#
# Generates crates, chests, gold, gems, and bones.
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
	#If not, please obtain a new copy of Spelunky from <http:#spelunkyworld.com/>
	#
#***********************************************************************************/

	# argument0: bones
	randomize()
	# alcove
	if (gml.distance_tobject('entrance', x, y) < 32): return 0 #seems simple to send these as strings and then have the function turn that into the appropriate group to search for
	if (gml.distance_tobject('exit', x, y) < 32): return 0 #passing x and y as well since there is no other way to check
	if (gml.distance_tobject('gold_idol', x, y) < 64): return 0

	var col_stuff = true
	if (not gml.collision_point(x, y-16, 'solid', 0, 0) and #same as above for here
		not gml.collision_point(x, y-1, 'treasure', 0, 0) and
		not gml.collision_point(x, y-8, 'chest', 0, 0) and
		not gml.collision_point(x, y-8, 'spikes', 0, 0) and
		not gml.collision_point(x, y-8, 'entrance', 0, 0) and
		not gml.collision_point(x, y-8, 'exit', 0, 0)):

		col_stuff = false


	if (not col_stuff):

		if (randi_range(1,100) == 1):
			gml.instance_create(x+8, y-4, rock)
			return 0
		elif (randi_range(1,40) == 1):
			gml.instance_create(x+8, y-6, jar)
			return 0

	# alcove
	if (not col_stuff and
		gml.collision_point(x, y-32, solid, 0, 0) and
		(gml.collision_point(x-16, y-16, solid, 0, 0) or gml.collision_point(x+16, y-16, solid, 0, 0) or gml.collision_point(x-16, y-16, block, 0, 0) or gml.collision_point(x+16, y-16, block, 0, 0))):

		var n = 60
		if (gml.distance_tobject(giant_spider,x, y) < 100 ): n = 5 #adjusting the < 100 part since it was inside the argument. kinda weird
		
		if (global.level_type != 2 and randi_range(1,n) == 1): gml.instance_create(x, y-16, web)
		elif (global.gen_udjat_eye and not global.Locked_chest):
		
			if (randi_range(1,global.locked_chestChance) == 1):
			
				gml.instance_create(x+8, y-8, locked_chest)
				global.Locked_chest = true
			
			else: global.locked_chestChance -= 1
		
		elif (randi_range(1,10) == 1):
		
			gml.instance_create(x+8, y-8, crate)
		
		elif (randi_range(1,15) == 1):
		
			gml.instance_create(x+8, y-8, chest)
		
		elif (not damsel and randi_range(1,8) == 1 and not gml.collision_point(x+8, y-8, water, 0, 0)):
		
			var obj = gml.instance_create(x+8, y-8, damsel_object) #changed from 'damsel' to 'damsel_object' as damsel here is a bool
			obj.cost = 0
			obj.for_sale = false
			damsel = true
		
		elif (randi_range(1,40-2*global.curr_level) <= 1 + bones_chance):
		
			if (randi_range(1,8) == 1): gml.instance_create(x, y-16, fake_bones)
			else:
			
				gml.instance_create(x, y-16, bones)
				gml.instance_create(x+12, y-4, skull)
			
		
		elif (randi_range(1,3) == 1): gml.instance_create(x+8, y-4, gold_bar)
		elif (randi_range(1,6) == 1): gml.instance_create(x+8, y-8, gold_bars)
		elif (randi_range(1,6) == 1): gml.instance_create(x+8, y-4, emerald_big)
		elif (randi_range(1,8) == 1): gml.instance_create(x+8, y-4, sapphire_big)
		elif (randi_range(1,10) == 1): gml.instance_create(x+8, y-4, ruby_big)
	 # tunnel
	elif (not col_stuff and
		(gml.collision_point(x-16, y-16, solid, 0, 0) and gml.collision_point(x+16, y-16, solid, 0, 0))):

		var n = 60
		if (gml.distance_tobject(giant_spider, x, y) < 100): n = 10
		if (global.level_type != 2 and randi_range(1,n) == 1): gml.instance_create(x, y-16, web)
		elif (randi_range(1,4) == 1): gml.instance_create(x+8, y-4, gold_bar)
		elif (randi_range(1,8) == 1): gml.instance_create(x+8, y-8, gold_bars)
		elif (randi_range(1,80-global.curr_level) <= 1 + bones_chance):
		
			if (randi_range(1,8) == 1): gml.instance_create(x, y-16, fake_bones)
			else:
			
				gml.instance_create(x, y-16, bones)
				gml.instance_create(x+12, y-4, skull)
			
		
		elif (randi_range(1,8) == 1): gml.instance_create(x+8, y-4, emerald_big)
		elif (randi_range(1,9) == 1): gml.instance_create(x+8, y-4, sapphire_big)
		elif (randi_range(1,10) == 1): gml.instance_create(x+8, y-4, ruby_big)
	 # normal
	elif (not gml.collision_point(x, y-16, solid, 0, 0) and
		not gml.collision_point(x, y-8, chest, 0, 0) and
		not gml.collision_point(x, y-8, spikes, 0, 0) and
		not gml.collision_point(x, y-8, entrance, 0, 0) and
		not gml.collision_point(x, y-8, exit, 0, 0)):

		if (randi_range(1,40) == 1): gml.instance_create(x+8, y-4, gold_bar)
		elif (randi_range(1,50) == 1): gml.instance_create(x+8, y-8, gold_bars)
		elif (randi_range(1,140-2*global.curr_level) <= 1 + bones_chance):
		
			if (randi_range(1,8) == 1): gml.instance_create(x, y-16, fake_bones)
			else:
			
				gml.instance_create(x, y-16, bones)
				gml.instance_create(x+12, y-4, skull)

func scr_level_gen():

#
# scr_level_gen()
#
# Sets the "room path" that Spelunky uses to determine the no-bombs/no-rope (in theory)
# route to the exit.
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
	#If not, please obtain a new copy of Spelunky from <http:#spelunkyworld.com/>
	#
#***********************************************************************************/
	randomize()
	
	global.start_room_x = randi_range(0,3)
	global.start_room_y = 0
	var room_x = global.start_room_x
	var room_y = 0
	var prev_x = global.start_room_x
	var prev_y = 0
	global.room_path[[room_x, room_y]] = 1
	var nstart_x = -1
	var n = randi_range(0,3)

	global.sacrifice_pit = false
	global.snake_pit = false
	global.alien_craft = false
	global.yeti_lair = false

	# Black Market
	global.black_market = false
	#if (global.level_type == 1):

	if (global.level_type == 1 and not global.made_black_market and global.gen_black_market):

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


	if (global.level_type == 3 and randi_range(1,global.prob_sac_pit) == 1):

		while (n == room_x):
		
			n = randi_range(0,3)
		
		
		for i in range(0, 4):
		
			if (i == 0): global.room_path[[n, i]] = 7
			elif (i == 3): global.room_path[[n, i]] = 9
			else: global.room_path[[n, i]] = 8
		
		global.sacrifice_pit = true
		idol = true
		damsel = true


	while (room_y < 4):

		var d = false
		if (room_x == 0): n = randi_range(3,5) # right
		elif (room_x == 3): n = randi_range(5,7) # left
		else: n = randi_range(1,5)
		
		if (n < 3 or n > 5): # move left
		
			if (room_x > 0):
				if (global.room_path[[room_x-1, room_y]] == 0): room_x -= 1
			elif (room_x < 3):
				if (global.room_path[[room_x+1, room_y]] == 0): room_x += 1
			else: n = 5
		
		elif (n == 3 or n == 4): # move right
		
			if (room_x < 3):
				if (global.room_path[[room_x+1, room_y]] == 0): room_x += 1
			elif (room_x > 0):
				if (global.room_path[[room_x-1, room_y]] == 0): room_x -= 1
			else: n = 5
		
		
		if (n == 5): # move down
		
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


	# City of Gold
	if (global.city_of_gold): global.room_path[[randi_range(0,3), 2]] = 6

	# snake pit
	var s_x1 = 0
	var s_x2 = 0
	# global.prob_snake_pit = 1
	if (global.level_type == 0):

		for j in range(0, 2):
		
			for i in range(0, 4):
			
				if (global.room_path[[i,j]] == 0 and global.room_path[[i,j+1]] == 0 and global.room_path[[i,j+2]] == 0 and randi_range(1,global.prob_snake_pit) == 1):
				
					global.room_path[[i,j]] = 7 # top of pit
					if (true):
					
						if (global.room_path[[i,j+2]] == 0):
						
							global.room_path[[i,j+1]] = 8
							if (j == 0):
							
								if (global.room_path[[i,j+3]] == 0):
								
									global.room_path[[i,j+2]] = 8 # middle of pit
									global.room_path[[i,j+3]] = 9 # bottom of pit
								
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

	#  Lake
	#global.lake = false
	if (global.lake):

		global.room_path[[0,3]] = 8
		global.room_path[[1,3]] = 8
		global.room_path[[2,3]] = 8
		global.room_path[[3,3]] = 8
		global.room_path[[0,4]] = 7
		global.room_path[[1,4]] = 7
		global.room_path[[2,4]] = 7
		global.room_path[[3,4]] = 7
		n = randi_range(0,3)
		while (n == global.end_room_x):
		
			n = randi_range(0,3)
		
		global.room_path[[n,4]] = 9


	# Moai
	if (not global.made_moai and global.level_type == 2):

		if (global.curr_level == 9 and randi_range(1,4) == 1): global.made_moai = true
		elif (global.curr_level == 10 and randi_range(1,3) == 1): global.made_moai = true
		elif (global.curr_level == 11 and randi_range(1,2) == 1): global.made_moai = true
		elif (global.curr_level == 12): global.made_moai = true
		
		if (global.made_moai): global.room_path[[randi_range(0,3), randi_range(1,2)]] = 6

	elif (global.level_type == 2 and randi_range(1,global.prob_alien) == 1): # alien craft

		var k = randi_range(0,2)
		var j = randi_range(1,2)
		for i in range(k, 4):
		
			if (i == k): global.room_path[[i,j]] = 7
			elif (i == 3): global.room_path[[i,j]] = 9
			else: global.room_path[[i,j]] = 8
		
		global.alien_craft = true

	elif (global.level_type == 2 and not global.alien_craft and randi_range(1,global.prob_yeti_lair) == 1): # yeti

		global.yeti_lair = true


	# shop
	if (randi_range(1,global.curr_level) <= 2 and global.curr_level > 1 and not global.made_black_market):

		var i = 0
		for k in range(0, 4):
		
			for j in range(0, 4):
			
				global.room_poss[[j,k]] = 0
				#j = randi_range(0,3)
				#k = randi_range(0,3)
				if (global.room_path[[j,k]] == 0):
				
					if (j < 3):
					
						if (global.room_path[[j+1,k]] == 1 or global.room_path[[j+1,k]] == 2):
						
							#global.room_path[[j,k]] = 4
							global.room_poss[[j,k]] = 4
							i += 1
							#global.shop = true
							#break
						
					
					elif (j > 0):
					
						if (global.room_path[[j-1,k]] == 1 or global.room_path[[j-1,k]] == 2):
						
							#global.room_path[[j,k]] = 5
							global.room_poss[[j,k]] = 5
							i += 1
							#global.shop = true
							#break
					
				
			
		
		
		if (i > 0):
			n = randi_range(0,i-1)
			for k in range(0, 4):
			
				for j in range(0, 4):
				
					if (global.room_poss[[j,k]] != 0):
					
						if (n == 0):
						
							global.room_path[[j,k]] = global.room_poss[[j,k]]
							global.shop = true
							j = 4
							k = 4
							break
						
						else: n -= 1
	#Testing output					
	#print(str(global.room_path[[0,0]]) + str(global.room_path[[1,0]]) + str(global.room_path[[2,0]]) + str(global.room_path[[3,0]]))
	#print(str(global.room_path[[0,1]]) + str(global.room_path[[1,1]]) + str(global.room_path[[2,1]]) + str(global.room_path[[3,1]]))
	#print(str(global.room_path[[0,2]]) + str(global.room_path[[1,2]]) + str(global.room_path[[2,2]]) + str(global.room_path[[3,2]]))
	#print(str(global.room_path[[0,3]]) + str(global.room_path[[1,3]]) + str(global.room_path[[2,3]]) + str(global.room_path[[3,3]]))

func scr_init_level():
#
# scr_init_level()
#
# Calls scr_level_gen(), scr_room_gen*(), and scr_entity_gen() to build level.
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
	#If not, please obtain a new copy of Spelunky from <http:#spelunkyworld.com/>
	#
#***********************************************************************************/

	global.level_type = 0
	#global.curr_level = 16
	if (global.curr_level > 4 and global.curr_level < 9): global.level_type = 1
	if (global.curr_level > 8 and global.curr_level < 13): global.level_type = 2
	if (global.curr_level > 12 and global.curr_level < 16): global.level_type = 3
	if (global.curr_level == 16): global.level_type = 4

	if (global.curr_level <= 1 or
		global.curr_level == 5 or
		global.curr_level == 9 or
		global.curr_level == 13):

		global.had_dark_level = false


	# global.level_type = 3 # debug

	# DEBUG MODE #
	#/*
	#if (global.curr_level == 2): global.level_type = 4
	#if (global.curr_level == 3): global.level_type = 2
	#if (global.curr_level == 4): global.level_type = 3
	#if (global.curr_level == 5): global.level_type = 4
	#*/

	# global.level_type = 0

	global.start_room_x = 0
	global.start_room_y = 0
	global.end_room_x = 0
	global.end_room_y = 0
	var level_gen = false #actually is oGame.level_gen. Seems to do nothing

	# this is used to determine the path to the exit (generally no bombs required)
	for i in range(0, 4):

		for j in range(0, 4):
		
			global.room_path[[i,j]] = 0
		


	# side walls
	var k
	if (global.level_type == 4):
		k = 54
	elif (global.level_type == 2):
		k = 38
	elif (global.lake):
		k = 41
	else:
		k = 33
	for i in range(0, 42):

		for j in range (0,k):
		
			if (not InLevel.is_level()):
			
				i = 999
				j = 999
			
			elif (global.level_type == 2):
			
				if (i*16 == 0 or
					i*16 == 656 or
					j*16 == 0):
				
					obj = instance_create(i*16, j*16, dark)
					obj.invincible = true
					obj.sprite_index = s_dark
				
			
			elif (global.level_type == 4):
			
				if (i*16 == 0 or
					i*16 == 656 or
					j*16 == 0):
				
					obj = instance_create(i*16, j*16, temple)
					obj.invincible = true
					if (not global.city_of_gold): obj.sprite_index = s_temple
				
			
			elif (global.lake):
			
				if (i*16 == 0 or
					i*16 == 656 or
					j*16 == 0 or
					j*16 >= 656):
				
					obj = instance_create(i*16, j*16, lush)
					obj.sprite_index = s_lush
					obj.invincible = true
				
			
			elif (i*16 == 0 or
				i*16 == 656 or
				j*16 == 0 or
				j*16 >= 528):
			
				if (global.level_type == 0):
					obj = instance_create(i*16, j*16, brick)
					obj.sprite_index = s_brick
				elif (global.level_type == 1):
					obj = instance_create(i*16, j*16, lush)
					obj.sprite_index = s_lush
				else:
					obj = instance_create(i*16, j*16, temple)
					if (not global.city_of_gold): obj.sprite_index = s_temple
				obj.invincible = true
			
		


	if (global.level_type == 2):

		for i in range(0, 42):
		
			instance_create(i*16, 40*16, dark)
			#instance_create(i*16, 35*16, spikes)
		


	if (global.level_type == 3):

		background_index = bg_temple


	global.temp1 = global.start
	scr_level_gen()

	global.cemetary = false
	if (global.level_type == 1 and randi_range(1,global.prob_cemetary) == 1): global.cemetary = true

	for room in rooms: #temp to make this work
	#with room

		if (global.level_type == 0): scr_room_gen()
		elif (global.level_type == 1):
		
			if (global.black_market): scr_room_genMarket()
			else: scr_room_gen2()
		
		elif (global.level_type == 2):
		
			if (global.yeti_lair): scr_room_genYeti()
			else: scr_room_gen3()
		
		elif (global.level_type == 3): scr_room_gen4()
		else: scr_room_gen5()


	global.dark_level = false
	#if (not global.had_dark_level and global.curr_level != 0 and global.level_type != 2 and global.curr_level != 16 and randi_range(1,1) == 1):
	if (not global.had_dark_level and not global.ndark_level and global.curr_level != 0 and global.curr_level != 1 and global.level_type != 2 and global.curr_level != 16 and randi_range(1,global.prob_dark_level) == 1):

		global.dark_level = true
		global.had_dark_level = true
		#instance_create(player1.x, player1.y, flare)


	if (global.black_market): global.dark_level = false

	global.gen_udjat_eye = false
	if (not global.made_udjat_eye):

		if (global.curr_level == 2 and randi_range(1,3) == 1): global.gen_udjat_eye = true
		elif (global.curr_level == 3 and randi_range(1,2) == 1): global.gen_udjat_eye = true
		elif (global.curr_level == 4): global.gen_udjat_eye = true


	global.gen_market_entrance = false
	if (not global.made_market_entrance):

		if (global.curr_level == 5 and randi_range(1,3) == 1): global.gen_market_entrance = true
		elif (global.curr_level == 6 and randi_range(1,2) == 1): global.gen_market_entrance = true
		elif (global.curr_level == 7): global.gen_market_entrance = true


	##############
	# ENTITY / TREASURES
	##############
	global.temp2 = global.start
	if (not is_room("r_tutorial") and not is_room("r_load_level")): scr_entity_gen()

	if (instance_exists(entrance) and not global.custom_level):

		player1.x = entrance.x+8
		player1.y = entrance.y+8


	if (global.dark_level or
		global.black_market or
		global.snake_pit or
		global.cemetary or
		global.lake or
		global.yeti_lair or
		global.alien_craft or
		global.sacrifice_pit or
		global.city_of_gold):

		if (not is_room("r_load_level")):
			for player in players: #temp to get this to work
			#with player1 
				alarm[0] = 10
		


	if (global.level_type == 4): scr_setup_walls(864)
	elif (global.lake): scr_setup_walls(656)
	else: scr_setup_walls(528)

	# add background details
	if (global.graphics_high):

		for repetition in range(1, 20):
		
			# bg = instance_create(16*randi_range(1,42), 16*randi_range(1,33), cave_bg)
			if (global.level_type == 1 and randi_range(1,3) < 3):
				tile_add(bg_extras_lush, 32*randi_range(0,1), 0, 32, 32, 16*randi_range(1,42), 16*randi_range(1,33), 10002)
			elif (global.level_type == 2 and randi_range(1,3) < 3):
				tile_add(bg_extras_ice, 32*randi_range(0,1), 0, 32, 32, 16*randi_range(1,42), 16*randi_range(1,33), 10002)
			elif (global.level_type == 3 and randi_range(1,3) < 3):
				tile_add(bg_extras_temple, 32*randi_range(0,1), 0, 32, 32, 16*randi_range(1,42), 16*randi_range(1,33), 10002)
			else:
				tile_add(bg_extras, 32*randi_range(0,1), 0, 32, 32, 16*randi_range(1,42), 16*randi_range(1,33), 10002)
		


	level_gen = true

	# generate angry shopkeeper at exit if murderer or thief
	if (global.murderer or global.thief_level > 0):

		for exit in exits: #temp to get this to work
		#with exit
		
			if (type == "Exit"):
			
				obj = instance_create(x, y, shopkeeper)
				obj.status = 4
			
		
		# global.thief_level -= 1

	for treasure in treasure: #temp to get this to work
	#with treasure

		if (collision_point(x, y, solid, 0, 0)):
		
			obj = instance_place(x, y, solid)
			if (obj.invincible): instance_destroy()
		

	for water in water: #temp to get this to work
	#with water

		if (sprite_index == s_water_top or sprite_index == s_lava_top):
		
			scr_check_water_top()
		
		#/*
			#obj = instance_place(x-16, y, water)
			#if (instance_exists(obj)):
			#
				#if (obj.sprite_index == s_water_top or obj.sprite_index == s_lava_top):
				#
					#if (type == "Lava"): sprite_index = s_lava_top
					#else: sprite_index = s_water_top
				#
			#
			#obj = instance_place(x+16, y, water)
			#if (instance_exists(obj)):
			#
				#if (obj.sprite_index == s_water_top or obj.sprite_index == s_lava_top):
				#
					#if (type == "Lava"): sprite_index = s_lava_top
					#else: sprite_index = s_water_top
				#
			#
		#*/


	global.temp3 = global.start
