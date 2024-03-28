extends Node

var jetpack
var cape_pickup
var shotgun
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
var giant_spider
var web
var locked_chest
var crate
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

var idol: bool
var dark
var s_dark
var temple
var s_temple
var lush
var s_lush
var s_brick

@onready var block = preload("res://Test Scenes/test_block.tscn")
@onready var brick = preload("res://Test Scenes/brick.tscn")
@onready var ladder_orange = preload("res://Test Scenes/ladder.tscn")
@onready var ladder_top = preload("res://Test Scenes/ladder_top.tscn")
@onready var spikes = preload("res://Test Scenes/spikes.tscn")
@onready var push_block = preload("res://Test Scenes/test_block.tscn")
@onready var entrance = preload("res://Test Scenes/entrance.tscn")
@onready var exit = preload("res://Test Scenes/exit.tscn")
@onready var altar_left = preload("res://Test Scenes/altar_left.tscn")
@onready var altar_right = preload("res://Test Scenes/altar_right.tscn")
@onready var sac_altar_left = preload("res://Test Scenes/sac_altar_left.tscn")
@onready var sac_altar_right = preload("res://Test Scenes/sac_altar_right.tscn")
@onready var bg_kali_body = 'bg_kali_body'
@onready var kali_head = preload("res://KaliHead.tscn")
@onready var chest = preload("res://Test Scenes/chest.tscn")
@onready var gold_idol = preload("res://Test Scenes/gold_idol.tscn")
@onready var giant_tiki_head = preload("res://Test Scenes/giant_tiki_head.tscn")
@onready var bg_tiki = 'bg_tiki'
@onready var bg_tiki_arms = 'bg_tiki_arms'
@onready var bg_dice_sign = 'bg_dice_sign'
@onready var s_ice_block = preload("res://Test Scenes/ice_block.tscn")#sprite
@onready var bg_wanted = 'bg_wanted'
@onready var brickSmooth = preload("res://Test Scenes/brick_smooth.tscn")
@onready var lamp_red = preload("res://Test Scenes/lamp_red.tscn")
@onready var lamp = preload("res://Test Scenes/lamp.tscn")
@onready var shopkeeper = preload("res://Test Scenes/shopkeeper.tscn")
@onready var sign = preload("res://Test Scenes/sign.tscn")
@onready var s_sign_general = preload("res://Test Scenes/sign.tscn")
@onready var s_sign_bomb = preload("res://Test Scenes/sign.tscn")
@onready var s_sign_weapon = preload("res://Test Scenes/sign.tscn")
@onready var s_sign_clothing = preload("res://Test Scenes/sign.tscn")
@onready var s_sign_rare = preload("res://Test Scenes/sign.tscn")
@onready var s_sign_craps = preload("res://Test Scenes/sign.tscn")
@onready var s_sign_kissing = preload("res://Test Scenes/sign.tscn")
@onready var dice = preload("res://Test Scenes/dice.tscn")
@onready var snake = preload("res://Test Scenes/snake.tscn")
@onready var ruby_big = preload("res://Test Scenes/ruby_big.tscn")
@onready var mattock = preload("res://Test Scenes/mattock.tscn")

var s_water_top
var s_lava_top
	
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
			var obj #---adding this here
			if (not InLevel.is_level()):
			
				i = 999
				j = 999
			
			elif (global.level_type == 2):
			
				if (i*16 == 0 or
					i*16 == 656 or
					j*16 == 0):
				
					obj = LevelGeneration.instance_create(i*16, j*16, dark)
					obj.invincible = true
					obj.sprite_index = s_dark
				
			
			elif (global.level_type == 4):
			
				if (i*16 == 0 or
					i*16 == 656 or
					j*16 == 0):
				
					obj = LevelGeneration.instance_create(i*16, j*16, temple)
					obj.invincible = true
					if (not global.city_of_gold): obj.sprite_index = s_temple
				
			
			elif (global.lake):
			
				if (i*16 == 0 or
					i*16 == 656 or
					j*16 == 0 or
					j*16 >= 656):
				
					obj = LevelGeneration.instance_create(i*16, j*16, lush)
					obj.sprite_index = s_lush
					obj.invincible = true
				
			
			elif (i*16 == 0 or
				i*16 == 656 or
				j*16 == 0 or
				j*16 >= 528):
			
				if (global.level_type == 0):
					obj = LevelGeneration.instance_create(i*16, j*16, brick)
					obj.sprite_index = s_brick
				elif (global.level_type == 1):
					obj = LevelGeneration.instance_create(i*16, j*16, lush)
					obj.sprite_index = s_lush
				else:
					obj = LevelGeneration.instance_create(i*16, j*16, temple)
					if (not global.city_of_gold): obj.sprite_index = s_temple
				obj.invincible = true
			
		


	if (global.level_type == 2):

		for i in range(0, 42):
		
			LevelGeneration.instance_create(i*16, 40*16, dark)
			#LevelGeneration.instance_create(i*16, 35*16, spikes)
		


	if (global.level_type == 3):

		gml.background_index("bg_temple")


	global.temp1 = global.start
	scr_level_gen()

	global.cemetary = false
	if (global.level_type == 1 and randi_range(1,global.prob_cemetary) == 1): global.cemetary = true

	var all_rooms = gml.get_all_instances("room")
	for room in all_rooms:

		if (global.level_type == 0): scr_room_gen(room.position.x, room.position.y)
		elif (global.level_type == 1):
		
			if (global.black_market): scr_room_gen_market()
			else: scr_room_gen2()
		
		elif (global.level_type == 2):
		
			if (global.yeti_lair): scr_room_gen_yeti()
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
	if (not InLevel.is_room("r_tutorial") and not InLevel.is_room("r_load_level")): scr_entity_gen()

	if (gml.instance_exists(entrance) and not global.custom_level):
		var player1 #------------------------update this with getting player1 node
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

		if (not InLevel.is_room("r_load_level")):
			var alarm #---------------------fix this later
			var all_player1s = gml.get_all_instances("player1")
			for player1 in all_player1s:  alarm[0] = 10 
		


	if (global.level_type == 4): scr_setup_walls(864)
	elif (global.lake): scr_setup_walls(656)
	else: scr_setup_walls(528)

	# add background details
	if (global.graphics_high):

		for repetition in range(1, 20):
		
			# bg = instance_create(16*randi_range(1,42), 16*randi_range(1,33), cave_bg)
			if (global.level_type == 1 and randi_range(1,3) < 3):
				gml.tile_add('bg_extras_lush', 32*randi_range(0,1), 0, 32, 32, 16*randi_range(1,42), 16*randi_range(1,33), 10002)
			elif (global.level_type == 2 and randi_range(1,3) < 3):
				gml.tile_add('bg_extras_ice', 32*randi_range(0,1), 0, 32, 32, 16*randi_range(1,42), 16*randi_range(1,33), 10002)
			elif (global.level_type == 3 and randi_range(1,3) < 3):
				gml.tile_add('bg_extras_temple', 32*randi_range(0,1), 0, 32, 32, 16*randi_range(1,42), 16*randi_range(1,33), 10002)
			else:
				gml.tile_add('bg_extras', 32*randi_range(0,1), 0, 32, 32, 16*randi_range(1,42), 16*randi_range(1,33), 10002)
		


	level_gen = true

	# generate angry shopkeeper at exit if murderer or thief
	if (global.murderer or global.thief_level > 0):
		var obj #------- adding this here
		var all_exits = gml.get_all_instances("exit")
		for exit in all_exits:
		
			if (exit.type == "Exit"):
			
				obj = gml.instance_create(exit.position.x, exit.position.y, shopkeeper)
				obj.status = 4
			
		
		# global.thief_level -= 1


	var all_treasure = gml.get_all_instances("treasure")
	for treasure in all_treasure:

		if (gml.collision_point(treasure.position.x, treasure.position.y, solid, 0, 0)):
			var obj
			obj = gml.instance_place(treasure.position.x, treasure.position.y, solid)
			if (obj.invincible): gml.instance_destroy()
		


	var all_water = gml.get_all_instances("water")
	for water in all_water:

		if (water.sprite_index == s_water_top or water.sprite_index == s_lava_top):
		
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

func scr_room_gen(x, y):
	#
	# scr_room_gen1()
	#
	# Room generation for Area 1, the Mines.
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

	randomize()
	var str_temp = "00000000000000000000000000000000000000000000000000000000000000000000000000000000"
	
	

	var room_path = global.room_path[[LevelGeneration.scr_get_room_x(x), LevelGeneration.scr_get_room_y(y)]]
	var room_path_above = -1
	var shop_type = "General"
	var n
	var altar
	var idol
	var damsel
	
	if (LevelGeneration.scr_get_room_y(y) != 0): room_path_above = global.room_path[[LevelGeneration.scr_get_room_x(x), LevelGeneration.scr_get_room_y(y-128)]]

	if (LevelGeneration.scr_get_room_x(x) == global.start_room_x and LevelGeneration.scr_get_room_y(y) == global.start_room_y): # start room
		if (room_path == 2): n = randi_range(5,8)
		else: n = randi_range(1,4)
		match n:
			1:  str_temp = "60000600000000000000000000000000000000000008000000000000000000000000001111111111"
			2:  str_temp = "11111111112222222222000000000000000000000008000000000000000000000000001111111111"
			3:  str_temp = "00000000000008000000000000000000L000000000P111111000L111111000L00111111111111111"
			4:  str_temp = "0000000000008000000000000000000000000L000111111P000111111L001111100L001111111111"
			# hole
			5:  str_temp = "60000600000000000000000000000000000000000008000000000000000000000000002021111120"
			6:  str_temp = "11111111112222222222000000000000000000000008000000000000000000000000002021111120"
			7:  str_temp = "00000000000008000000000000000000L000000000P111111000L111111000L00011111111101111"
			8:  str_temp = "0000000000008000000000000000000000000L000111111P000111111L001111000L001111011111"
		

	elif (LevelGeneration.scr_get_room_x(x) == global.end_room_x and LevelGeneration.scr_get_room_y(y) == global.end_room_y): # end room
		if (room_path_above == 2): n = randi_range(2,4)
		else: n = randi_range(3,6)
		match n:
		
			1:  str_temp = "00000000006000060000000000000000000000000008000000000000000000000000001111111111"
			2:  str_temp = "00000000000000000000000000000000000000000008000000000000000000000000001111111111"
			3:  str_temp = "00000000000010021110001001111000110111129012000000111111111021111111201111111111"
			4:  str_temp = "00000000000111200100011110010021111011000000002109011111111102111111121111111111"
			# no drop
			5:  str_temp = "60000600000000000000000000000000000000000008000000000000000000000000001111111111"
			6:  str_temp = "11111111112222222222000000000000000000000008000000000000000000000000001111111111"
		

	elif (room_path == 0): # side room
		
		if (global.curr_level > 1 and not altar and randi_range(1,16) == 1):
		
			n = 11
			altar = true
		
		elif (idol or LevelGeneration.scr_get_room_y(y) == 3):
		
			n = randi_range(1,9)
		
		else:
		
			n = randi_range(1,10)
			if (n == 10): idol = true
			# else: n = randi_range(1,9)
		

		match n:
		
			# upper plats
			1:  str_temp = "00000000000010111100000000000000011010000050000000000000000000000000001111111111"
			# high walls
			2:  str_temp = "110000000040L600000011P000000011L000000011L5000000110000000011000000001111111111"
			3:  str_temp = "00000000110060000L040000000P110000000L110050000L11000000001100000000111111111111"
			4:  str_temp = "110000000040L600000011P000000011L000000011L0000000110000000011000000001112222111"
			5:  str_temp = "00000000110060000L040000000P110000000L110000000L11000000001100000000111112222111"
			6:  str_temp = "11111111110221111220002111120000022220000002222000002111120002211112201111111111"
			7:  str_temp = "11111111111112222111112000021111102201111120000211111022011111200002111112222111"
			8:  str_temp = "11111111110000000000110000001111222222111111111111112222221122000000221100000011"
			9:  str_temp = "121111112100L2112L0011P1111P1111L2112L1111L1111L1111L1221L1100L0000L001111221111"
			# idols
			10:  str_temp = "22000000220000B0000000000000000000000000000000000000000000000000I000001111A01111"
			# altars
			11:  str_temp = "220000002200000000000000000000000000000000000000000000x0000002211112201111111111"
		

	elif (room_path == 0 or room_path == 1): # main room

		match randi_range(1,12):
		
		
			# basic rooms
			1:  str_temp = "60000600000000000000000000000000000000000050000000000000000000000000001111111111"
			2:  str_temp = "60000600000000000000000000000000000000005000050000000000000000000000001111111111"
			3:  str_temp = "60000600000000000000000000000000050000000000000000000000000011111111111111111111"
			4:  str_temp = "60000600000000000000000600000000000000000000000000000222220000111111001111111111"
			5:  str_temp = "11111111112222222222000000000000000000000050000000000000000000000000001111111111"
			6:  str_temp = "11111111112111111112022222222000000000000050000000000000000000000000001111111111"
			# low ceiling
			7:  str_temp = "11111111112111111112211111111221111111120111111110022222222000000000001111111111"
			# ladders
			8:
				if (randi_range(1,2) == 1): str_temp = "1111111111000000000L111111111P000000000L5000050000000000000000000000001111111111"
				else: str_temp = "1111111111L000000000P111111111L0000000005000050000000000000000000000001111111111"
			
			9:  str_temp = "000000000000L0000L0000P1111P0000L0000L0000P1111P0000L1111L0000L1111L001111111111"
				# upper plats
			10:  str_temp = "00000000000111111110001111110000000000005000050000000000000000000000001111111111"
			11:  str_temp = "00000000000000000000000000000000000000000021111200021111112021111111121111111111"
				# treasure below
			12:
				if (randi_range(1,2) == 1): str_temp = "2222222222000000000000000000L001111111P001050000L011000000L010000000L01111111111"
				else: str_temp = "222222222200000000000L000000000P111111100L500000100L000000110L000000011111111111"
			
		

	elif (room_path == 3): # main room

		match randi_range(1,8):
		
		
			# basic rooms
			1:  str_temp = "00000000000000000000000000000000000000000050000000000000000000000000001111111111"
			2:  str_temp = "00000000000000000000000000000000000000005000050000000000000000000000001111111111"
			3:  str_temp = "00000000000000000000000000000050000500000000000000000000000011111111111111111111"
			4:  str_temp = "00000000000000000000000600000000000000000000000000000111110000111111001111111111"
			# upper plats
			5:  str_temp = "00000000000111111110001111110000000000005000050000000000000000000000001111111111"
			6:  str_temp = "00000000000000000000000000000000000000000021111200021111112021111111121111111111"
			7:  str_temp = "10000000011112002111111200211100000000000022222000111111111111111111111111111111"
			# treasure below
			8:
				if (randi_range(1,2) == 1): str_temp = "0000000000000000000000000000L001111111P001050000L011000000L010000000L01111111111"
				else: str_temp = "000000000000000000000L000000000P111111100L500000100L000000110L000000011111111111"
			
		

	elif (room_path == 4): # shop

		str_temp = "111111111111111111111111221111111l000211...000W010...00000k0..Kiiii000bbbbbbbbbb"
		n = randi_range(1,7)
		# n = 6
		match n:
		
			1:  shop_type = "General"
			2:  shop_type = "Bomb"
			3:  shop_type = "Weapon"
			4:  shop_type = "Rare"
			5:  shop_type = "Clothing"
			6:
				shop_type = "Craps"
				str_temp = "11111111111111111111111122111111Kl000211..b_q00W010.0+00000k0.q+dd00000bbbbbbbbbb"
			7:
				shop_type = "Kissing"
				str_temp = "111111111111111111111111221111111l000211...000W010...00000k0..K00D0000bbbbbbbbbb"
				damsel = true
		

	elif (room_path == 5): # shop

		str_temp = "111111111111111111111111221111112000l11101W0000...0k00000...000iiii_k..bbbbbbbbbb"
		n = randi_range(1,7)
		# n = 6
		match n:
		
			1:  shop_type = "General"
			2:  shop_type = "Bomb"
			3:  shop_type = "Weapon"
			4:  shop_type = "Rare"
			5:  shop_type = "Clothing"
			6:
				shop_type = "Craps"
				str_temp = "111111111111111111111111221111112000l_k1101W0Q00b..0k00000+0.00000dd+q.bbbbbbbbbb"
			7:
				shop_type = "Kissing"
				str_temp = "111111111111111111111111221111112000l11101W0000...0k00000...0000D00K..bbbbbbbbbb"
				damsel = true
		

	elif (room_path == 8): # snake pit

		match randi_range(1,1):
		
			1:  str_temp = "111000011111s0000s11111200211111s0000s11111200211111s0000s11111200211111s0000s11"
		

	elif (room_path == 9): # snake pit bottom

		match randi_range(1,1):
		
			1:  str_temp = "111000011111s0000s1111100001111100S0001111S0110S11111STTS1111111M111111111111111"
			

	else: # drop

		if (room_path == 7): n = randi_range(4,12)
		elif (room_path_above != 2): n = randi_range(1,12)
		else: n = randi_range(1,8)
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
		

	# Add obstacles

	for i in range(1, 81):
		var j
		j = i
	  
		var str_obs1 = "00000"
		var str_obs2 = "00000"
		var str_obs3 = "00000"
		var tile = gml.string_char_at(str_temp, i)
		
		if (tile == "8"):
		
			match randi_range(1,8):
			
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
			
		
		elif (tile == "5"): # ground
		
			match randi_range(1,16):
			
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
					
				
		elif (tile == "6"): # air
		
			match randi_range(1,10):
			
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
		


	# Generate the tiles
	for j in range(0, 8):

		for i in range(1, 11):
			var obj #declaring this here, as each potential option assigns it either way
			var tile = gml.string_char_at(str_temp, i+j*10)
			var xpos = x + (i-1)*16
			var ypos = y + j*16
			#--------------------------------------------------------------------------------------
			if (tile == "1" and not gml.collision_point(xpos, ypos, 0, 0, 0)): #arguments were originally (xpos, ypos, solid, 0, 0). almost every other time seems to use 0 or -1 instead of "solid"
			
				if (randi_range(1,10) == 1): gml.instance_create(xpos, ypos, block)
				else:
				
					gml.instance_create(xpos, ypos, brick)
				
			
			elif (tile == "2" and randi_range(1,2) == 1 and not gml.collision_point(xpos, ypos, solid, 0, 0)):
			
				if (randi_range(1,10) == 1): gml.instance_create(xpos, ypos, block)
				else:
				
					gml.instance_create(xpos, ypos, brick)
				
			
			elif (tile == "L"): gml.instance_create(xpos, ypos, ladder_orange)
			elif (tile == "P"): gml.instance_create(xpos, ypos, ladder_top)
			elif (tile == "7" and randi_range(1,3) == 1): gml.instance_create(xpos, ypos, spikes)
			elif (tile == "4" and randi_range(1,4) == 1): gml.instance_create(xpos, ypos, push_block)
			elif (tile == "9"):
			
				block = gml.instance_create(xpos, ypos+16, brick)
				if (LevelGeneration.scr_get_room_x(x) == global.start_room_x and LevelGeneration.scr_get_room_y(y) == global.start_room_y):
					gml.instance_create(xpos, ypos, entrance)
				else:
				
					gml.instance_create(xpos, ypos, exit)
					global.exit_x = xpos
					global.exit_y = ypos
					block.invincible = true
				
			
			elif (tile == "A"):
			
				gml.instance_create(xpos, ypos, altar_left)
				gml.instance_create(xpos+16, ypos, altar_right)
			
			elif (tile == "position.x"):
			
				gml.instance_create(xpos, ypos, sac_altar_left)
				gml.instance_create(xpos+16, ypos, sac_altar_right)
				gml.tile_add(bg_kali_body, 0, 0, 64, 64, xpos-16, ypos-48, 10001)
				gml.instance_create(xpos+16, ypos-80+16, kali_head)
			
			elif (tile == "a"):
			
				gml.instance_create(xpos, ypos, chest)
			
			elif (tile == "I"):
			
				gml.instance_create(xpos+16, ypos+12, gold_idol)
			
			elif (tile == "B"):
			
				gml.instance_create(xpos+16, ypos+12, giant_tiki_head)
				gml.tile_add(bg_tiki, 0, 0, 32, 64, xpos, ypos+32, 10001)
				gml.tile_add(bg_tiki_arms, 16*randi_range(0,2), 0, 16, 16, xpos+32, ypos+32, 10001)
				gml.tile_add(bg_tiki_arms, 16*randi_range(0,2), 16, 16, 16, xpos-16, ypos+32, 10001)
			
			elif (tile == "Q"):
			
				if (shop_type == "Craps"):
				
					gml.tile_add(bg_dice_sign, 0, 0, 48, 32, xpos, ypos, 9004)
				
			
			elif (tile == "q"):
			
				n = randi_range(1,6)
				LevelGeneration.scr_generate_item(xpos+8, ypos+8, 1)
				obj.in_dice_house = true
			
			elif (tile == "+"):
			
				obj = gml.instance_create(xpos, ypos, solid)
				obj.sprite_index = s_ice_block
				obj.shop_wall = true
			
			elif (tile == "W"):
			
				if (global.murderer or global.thief_level > 0):
				
					if (global.is_damsel): gml.tile_add(bg_wanted, 32, 0, 32, 32, xpos, ypos, 9004)
					elif (global.is_tunnel_man): gml.tile_add(bg_wanted, 64, 0, 32, 32, xpos, ypos, 9004)
					else: gml.tile_add(bg_wanted, 0, 0, 32, 32, xpos, ypos, 9004)
				
			
			elif (tile == "." and not gml.collision_point(xpos, ypos, solid, 0, 0)):
			
				if (randi_range(1,10) == 1): obj = gml.instance_create(xpos, ypos, block)
				else:
				
					obj = gml.instance_create(xpos, ypos, brick)
				
				obj.shop_wall = true
			
			elif (tile == "b"):
			
				obj = gml.instance_create(xpos, ypos, brickSmooth)
				obj.shop_wall = true
			
			elif (tile == "l"):
			
				if (damsel): gml.instance_create(xpos, ypos, lamp_red)
				else: gml.instance_create(xpos, ypos, lamp)
			
			elif (tile == "K"):
			
				obj = gml.instance_create(xpos, ypos, shopkeeper)
				obj.style = shop_type
			
			elif (tile == "k"):
			
				obj = gml.instance_create(xpos, ypos, sign)
				if (shop_type == "General"): obj.sprite_index = s_sign_general
				elif (shop_type == "Bomb"): obj.sprite_index = s_sign_bomb
				elif (shop_type == "Weapon"): obj.sprite_index = s_sign_weapon
				elif (shop_type == "Clothing"): obj.sprite_index = s_sign_clothing
				elif (shop_type == "Rare"): obj.sprite_index = s_sign_rare
				elif (shop_type == "Craps"): obj.sprite_index = s_sign_craps
				elif (shop_type == "Kissing"): obj.sprite_index = s_sign_kissing
			
			elif (tile == "i"):
			
				LevelGeneration.scr_shop_items_gen(xpos, ypos, shop_type)
			
			elif (tile == "d"):
			
				gml.instance_create(xpos+8, ypos+8, dice)
			
			elif (tile == "D"):
			
				obj = gml.instance_create(xpos+8, ypos+8, damsel)
				obj.for_sale = true
				obj.status = 5
			
			elif (tile == "s"):
			
				if (randi_range(1,10) == 1): gml.instance_create(xpos, ypos, snake)
				elif (randi_range(1,2) == 1): gml.instance_create(xpos, ypos, brick)
			
			elif (tile == "S"):
			
				gml.instance_create(xpos, ypos, snake)
			
			elif (tile == "T"):
			
				gml.instance_create(xpos+8, ypos+8, ruby_big)
			
			elif (tile == "M"):
			
				gml.instance_create(xpos, ypos, brick)
				obj = gml.instance_create(xpos+8, ypos+8, mattock)
				obj.cost = 0
				obj.for_sale = false

func scr_room_gen_market():
	pass

func scr_room_gen2():
	pass

func scr_room_gen_yeti():
	pass

func scr_room_gen3():
	pass

func scr_room_gen4():
	pass

func scr_room_gen5():
	pass

func scr_entity_gen():
	pass

func scr_setup_walls(placement):
	pass

func scr_check_water_top():
	pass
