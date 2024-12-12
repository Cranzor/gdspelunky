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
var paste = preload("res://test_scenes/paste.tscn")
var spring_shoes
var spike_shoes
var machete
var bomb_box = preload("res://test_scenes/bomb_box.tscn")
var bow
var compass
var para_pickup
var rope_pile

var bomb_bag = preload("res://test_scenes/bomb_bag.tscn")

var rock = preload("res://test_scenes/jar.tscn")
var jar = preload("res://test_scenes/jar.tscn")
var solid
var giant_spider
var web = preload("res://test_scenes/lamp.tscn")
var locked_chest
var crate = preload("res://test_scenes/lamp.tscn")
var damsel: bool
var damsel_object = preload("res://test_scenes/lamp.tscn")
var water
var fake_bones = preload("res://test_scenes/bones.tscn")
var bones = preload("res://test_scenes/bones.tscn")
var skull = preload("res://test_scenes/skull.tscn")
var gold_bar = preload("res://test_scenes/jar.tscn")
var gold_bars = preload('res://test_scenes/jar.tscn')
var emerald_big = preload("res://test_scenes/lamp.tscn")
var sapphire_big = preload("res://test_scenes/lamp.tscn")

var idol: bool
var dark
var s_dark
var temple
var s_temple
var lush
var s_lush
var s_brick


@onready var block = preload("res://test_scenes/block.tscn")
@onready var brick = preload("res://test_scenes/brick.tscn")
@onready var ladder_orange = preload("res://test_scenes/ladder.tscn")
@onready var ladder_top = preload("res://test_scenes/ladder_top.tscn")
@onready var spikes = preload("res://test_scenes/spikes.tscn")
@onready var push_block = preload("res://test_scenes/test_block.tscn")
@onready var entrance = preload("res://test_scenes/entrance.tscn")
@onready var exit = preload("res://test_scenes/exit.tscn")
@onready var altar_left = preload("res://test_scenes/altar_left.tscn")
@onready var altar_right = preload("res://test_scenes/altar_right.tscn")
@onready var sac_altar_left = preload("res://test_scenes/sac_altar_left.tscn")
@onready var sac_altar_right = preload("res://test_scenes/sac_altar_right.tscn")
@onready var bg_kali_body = 'bg_kali_body'
@onready var kali_head = preload("res://KaliHead.tscn")
@onready var chest = preload("res://test_scenes/chest.tscn")
@onready var gold_idol = preload("res://test_scenes/gold_idol.tscn")
@onready var giant_tiki_head = preload("res://test_scenes/giant_tiki_head.tscn")
@onready var bg_tiki = 'bg_tiki'
@onready var bg_tiki_arms = 'bg_tiki_arms'
@onready var bg_dice_sign = 'bg_dice_sign'
@onready var s_ice_block = preload("res://test_scenes/ice_block.tscn")#sprite
@onready var bg_wanted = 'bg_wanted'
@onready var brickSmooth = preload("res://test_scenes/brick_smooth.tscn")
@onready var lamp_red = preload("res://test_scenes/lamp_red.tscn")
@onready var lamp = preload("res://test_scenes/lamp.tscn")
@onready var shopkeeper = preload("res://test_scenes/shopkeeper.tscn")
@onready var sign = preload("res://test_scenes/sign.tscn")
@onready var s_sign_general = preload("res://test_scenes/sign.tscn")
@onready var s_sign_bomb = preload("res://test_scenes/sign.tscn")
@onready var s_sign_weapon = preload("res://test_scenes/sign.tscn")
@onready var s_sign_clothing = preload("res://test_scenes/sign.tscn")
@onready var s_sign_rare = preload("res://test_scenes/sign.tscn")
@onready var s_sign_craps = preload("res://test_scenes/sign.tscn")
@onready var s_sign_kissing = preload("res://test_scenes/sign.tscn")
@onready var dice = preload("res://test_scenes/dice.tscn")
@onready var snake = preload("res://test_scenes/snake.tscn")
@onready var ruby_big = preload("res://test_scenes/ruby_big.tscn")
@onready var mattock = preload("res://test_scenes/mattock.tscn")

var s_water_top
var s_lava_top
var s_cave_up
var s_cave_up2
var s_brick_down
var s_lush_up
var s_lush_up2
var s_lush_down
var s_dark_up
var s_dark_up2
var s_dark_down
var s_ice_up
var s_ice_up2
var s_ice_down
var s_ice_udl
var s_ice_ul
var s_ice_dl
var s_ice_left
var s_ice_udr
var s_ice_ur
var s_ice_dr
var s_ice_right
var s_ice_ulr
var s_ice_dlr
var s_ice_lr
var s_g_temple_up
var s_g_temple_up6
var s_g_temple_up5
var s_g_temple_up7
var s_g_temple_up3
var s_g_temple_up8
var s_g_temple_up4
var s_g_temple_up2
var s_g_temple_down
var s_temple_up
var s_temple_up6
var s_temple_up5
var s_temple_up7
var s_temple_up3
var s_temple_up8
var s_temple_up4
var s_temple_up2
var s_temple_down
var s_water_bottom_tall2
var s_water_bottom_tall1
var s_water_bottom
var s_water_bottom2
var s_water_bottom3
var s_water_bottom4
var s_vine_source
var s_vine_bottom
var s_tree_top_dead
var s_tree_top
var s_tree_branch_dead_l
var s_tree_branch_left
var s_grave_ash

var giant_spider_hang = preload("res://test_scenes/bat.tscn")
var scarab
var bat = preload("res://test_scenes/bat.tscn")
var spider_hang = preload("res://test_scenes/spider_hang.tscn")
var caveman = preload("res://test_scenes/snake.tscn")
var key
var arrow_trap_left_lit
var arrow_trap_left = preload("res://test_scenes/lamp.tscn")
var arrow_trap_right_lit
var arrow_trap_right = preload("res://test_scenes/lamp.tscn")
var grave
var ash_grave
var gold_nugget
var tiki_torch
var spear_trap_bottom
var spear_trap_lit
var spear_trap_top
var zombie
var vampire
var man_trap
var fire_frog
var frog
var x_market
var monkey
var dead_fish
var piranha
var ufo
var spring_trap
var gold_door
var tomb_lord
var hawkman
var smash_trap_lit
var smash_trap
var flare_crate
	
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

func scr_treasure_gen(bones_chance, instance): #will pass in x and y as well since there is no position for this to have an x and y
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

	var x = instance.postiion.x
	var y = instance.position.y
	
	# argument0: bones
	randomize()
	# alcove
	if (gml.distance_to_object('entrance', instance) < 32): return 0 #seems simple to send these as strings and then have the function turn that into the appropriate group to search for
	if (gml.distance_to_object('exit', instance) < 32): return 0 #passing x and y as well since there is no other way to check
	if (gml.distance_to_object('gold_idol', instance) < 64): return 0 # --- changing these to just the object itself since there should only be one per level anyway. that way x and y can be gotten in the function

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
		gml.collision_point(x, y-32, 'solid', 0, 0) and
		(gml.collision_point(x-16, y-16, 'solid', 0, 0) or gml.collision_point(x+16, y-16, 'solid', 0, 0) or gml.collision_point(x-16, y-16, 'block', 0, 0) or gml.collision_point(x+16, y-16, 'block', 0, 0))):

		var n = 60
		if (gml.distance_to_object('giant_spider', instance) < 100 ): n = 5 #adjusting the < 100 part since it was inside the argument. kinda weird
		
		if (global.level_type != 2 and randi_range(1,n) == 1): gml.instance_create(x, y-16, web)
		elif (global.gen_udjat_eye and not global.locked_chest):
		
			if (randi_range(1,global.locked_chest_chance) == 1):
			
				gml.instance_create(x+8, y-8, locked_chest)
				global.Locked_chest = true
			
			else: global.locked_chestChance -= 1
		
		elif (randi_range(1,10) == 1):
		
			gml.instance_create(x+8, y-8, crate)
		
		elif (randi_range(1,15) == 1):
		
			gml.instance_create(x+8, y-8, chest)
		
		elif (not damsel and randi_range(1,8) == 1 and not gml.collision_point(x+8, y-8, 'water', 0, 0)):
		
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
		(gml.collision_point(x-16, y-16, 'solid', 0, 0) and gml.collision_point(x+16, y-16, 'solid', 0, 0))):

		var n = 60
		if (gml.distance_to_object('giant_spider', instance) < 100): n = 10
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
	elif (not gml.collision_point(x, y-16, 'solid', 0, 0) and
		not gml.collision_point(x, y-8, 'chest', 0, 0) and
		not gml.collision_point(x, y-8, 'spikes', 0, 0) and
		not gml.collision_point(x, y-8, 'entrance', 0, 0) and
		not gml.collision_point(x, y-8, 'exit', 0, 0)):

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
	var _nstart_x = -1
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
		idol = true #--- This and damsel are both part of oGame. Should change
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
	var _s_x1 = 0
	var _s_x2 = 0
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
	var _level_gen = false #---actually is oGame.level_gen. Seems to do nothing [FLAG] double check this

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
				
					obj = gml.instance_create(i*16, j*16, dark)
					obj.invincible = true
					obj.sprite_index = s_dark
				
			
			elif (global.level_type == 4):
			
				if (i*16 == 0 or
					i*16 == 656 or
					j*16 == 0):
				
					obj = gml.instance_create(i*16, j*16, temple)
					obj.invincible = true
					if (not global.city_of_gold): obj.sprite_index = s_temple
				
			
			elif (global.lake):
			
				if (i*16 == 0 or
					i*16 == 656 or
					j*16 == 0 or
					j*16 >= 656):
				
					obj = gml.instance_create(i*16, j*16, lush)
					obj.sprite_index = s_lush
					obj.invincible = true
				
			
			elif (i*16 == 0 or
				i*16 == 656 or
				j*16 == 0 or
				j*16 >= 528):
			
				if (global.level_type == 0):
					obj = gml.instance_create(i*16, j*16, brick)
					obj.sprite_index = s_brick
				elif (global.level_type == 1):
					obj = gml.instance_create(i*16, j*16, lush)
					obj.sprite_index = s_lush
				else:
					obj = gml.instance_create(i*16, j*16, temple)
					if (not global.city_of_gold): obj.sprite_index = s_temple
				#obj.invincible = true ------------------------------------------- [FLAG] un-comment this later
			
		


	if (global.level_type == 2):

		for i in range(0, 42):
		
			gml.instance_create(i*16, 40*16, dark)
			#gml.instance_create(i*16, 35*16, spikes)
		


	if (global.level_type == 3):

		gml.background_index("bg_temple")


	global.temp1 = global.game_start
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
	if (not global.had_dark_level and not global.no_dark_level and global.curr_level != 0 and global.curr_level != 1 and global.level_type != 2 and global.curr_level != 16 and randi_range(1,global.prob_dark_level) == 1):

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
	global.temp2 = global.game_start
	if (not InLevel.is_room("r_tutorial") and not InLevel.is_room("r_load_level")): scr_entity_gen()

	if (gml.instance_exists(entrance) and not global.custom_level):
		var entrance_instance = gml.get_instance('entrance')
		var player1 #------------------------update this with getting player1 node
		player1.x = entrance_instance.position.x+8
		player1.y = entrance_instance.position.y+8


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

		for repetition in range(20):
		
			# bg = instance_create(16*randi_range(1,42), 16*randi_range(1,33), cave_bg)
			if (global.level_type == 1 and randi_range(1,3) < 3):
				gml.tile_add('bg_extras_lush', 32*randi_range(0,1), 0, 32, 32, 16*randi_range(1,42), 16*randi_range(1,33), 10002)
			elif (global.level_type == 2 and randi_range(1,3) < 3):
				gml.tile_add('bg_extras_ice', 32*randi_range(0,1), 0, 32, 32, 16*randi_range(1,42), 16*randi_range(1,33), 10002)
			elif (global.level_type == 3 and randi_range(1,3) < 3):
				gml.tile_add('bg_extras_temple', 32*randi_range(0,1), 0, 32, 32, 16*randi_range(1,42), 16*randi_range(1,33), 10002)
			else:
				gml.tile_add('bg_extras', 32*randi_range(0,1), 0, 32, 32, 16*randi_range(1,42), 16*randi_range(1,33), 10002)
		


	_level_gen = true

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

		if (gml.collision_point(treasure.position.x, treasure.position.y, 'solid', 0, 0)):
			var obj
			obj = gml.instance_place(treasure.position.x, treasure.position.y, 'solid', treasure)
			if (obj.invincible): gml.instance_destroy(treasure)
		


	var all_water = gml.get_all_instances("water")
	for water in all_water:

		if (water.sprite_index == s_water_top or water.sprite_index == s_lava_top):
		
			scr_check_water_top(water.x, water.y, water)
		
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


	global.temp3 = global.game_start

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
	
	

	var room_path = global.room_path[[scr_get_room_x(x), scr_get_room_y(y)]]
	var room_path_above = -1
	var shop_type = "General"
	var n
	var altar
	var damsel
	
	if (scr_get_room_y(y) != 0): room_path_above = global.room_path[[scr_get_room_x(x), scr_get_room_y(y-128)]]

	if (scr_get_room_x(x) == global.start_room_x and scr_get_room_y(y) == global.start_room_y): # start room
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
		

	elif (scr_get_room_x(x) == global.end_room_x and scr_get_room_y(y) == global.end_room_y): # end room
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
		
		elif (idol or scr_get_room_y(y) == 3):
		
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
			if (tile == "1" and not gml.collision_point(xpos, ypos, 'solid', 0, 0)): #arguments were originally (xpos, ypos, solid, 0, 0). almost every other time seems to use 0 or -1 instead of "solid" --- changed it back because not sure why I changed it in the first place
			
				if (randi_range(1,10) == 1): gml.instance_create(xpos, ypos, block)
				else:
				
					gml.instance_create(xpos, ypos, brick)
				
			
			elif (tile == "2" and randi_range(1,2) == 1 and not gml.collision_point(xpos, ypos, 'solid', 0, 0)):
			
				if (randi_range(1,10) == 1): gml.instance_create(xpos, ypos, block)
				else:
				
					gml.instance_create(xpos, ypos, brick)
				
			
			elif (tile == "L"): gml.instance_create(xpos, ypos, ladder_orange)
			elif (tile == "P"): gml.instance_create(xpos, ypos, ladder_top)
			elif (tile == "7" and randi_range(1,3) == 1): gml.instance_create(xpos, ypos, spikes)
			elif (tile == "4" and randi_range(1,4) == 1): gml.instance_create(xpos, ypos, push_block)
			elif (tile == "9"):
			
				var block_instance = gml.instance_create(xpos, ypos+16, brick)
				if (scr_get_room_x(x) == global.start_room_x and scr_get_room_y(y) == global.start_room_y):
					gml.instance_create(xpos, ypos, entrance)

				else:
				
					gml.instance_create(xpos, ypos, exit)
					global.exit_x = xpos
					global.exit_y = ypos
					#block_instance.invincible = true --------------------------------------------------- [FLAG] change this back
				
			
			elif (tile == "A"):
			
				gml.instance_create(xpos, ypos, altar_left)
				gml.instance_create(xpos+16, ypos, altar_right)
			
			elif (tile == "x"):
			
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
				scr_generate_item(xpos+8, ypos+8, 1)
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
				
			
			elif (tile == "." and not gml.collision_point(xpos, ypos, 'solid', 0, 0)):
			
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
			
				scr_shop_items_gen(xpos, ypos, shop_type)
			
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
				#obj.cost = 0 ----------------------------------------------------------- [FLAG] change later
				#obj.for_sale = false --------------------------------------------------- [FLAG] change later


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
	#
	# scr_entity_gen()
	#
	# Generates enemies, traps, and treasure.
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

	# Note: depth of trees, statues is 9005

	global.locked_chest = false
	global.key = false
	global.locked_chest_chance = 8

	if (global.level_type == 0):

		global.giant_spider = false
		global.gen_giant_spider = false
		if (randi_range(1,6) == 1): global.gen_giant_spider = true
		var all_solids = gml.get_all_instances("solid")
		for solid_instance in all_solids:
		
			if (not InLevel.is_in_shop(solid_instance.position.x, solid_instance.position.y) and solid_instance.position.y > 16):
			
				if (solid_instance.type != "Altar"):
				
					scr_treasure_gen(0, solid_instance) #setting bones_chance to 0 since I'm not sure what default value is in GML when not passing an argument
				
			
				# enemies
				if (scr_get_room_x(solid_instance.position.x) != global.start_room_x or scr_get_room_y(solid_instance.position.y-16) != global.start_room_y):
				
					if (solid_instance.position.y < gml.room_height - 64 and 
						not gml.collision_point(solid_instance.position.x, solid_instance.position.y+16, 'solid', 0, 0) and not gml.collision_point(solid_instance.position.x, solid_instance.position.y+32, 'solid', 0, 0) and
						not gml.collision_point(solid_instance.position.x, solid_instance.position.y+16, 'water', 0, 0) and not gml.collision_point(solid_instance.position.x, solid_instance.position.y+32, 'water', 0, 0) and
						not gml.collision_point(solid_instance.position.x, solid_instance.position.y+16, 'enemy', 0, 0)):
					
						if (global.gen_giant_spider and
							not global.giant_spider and
							not gml.collision_point(solid_instance.position.x+16, solid_instance.position.y+16, 'solid', 0, 0) and
							not gml.collision_point(solid_instance.position.x+16, solid_instance.position.y+32, 'solid', 0, 0) and
							randi_range(1,40) == 1):
						
							gml.instance_create(solid_instance.position.x, solid_instance.position.y+16, giant_spider_hang)
							global.giant_spider = true
						
						elif (global.dark_level and randi_range(1,60) == 1): gml.instance_create(solid_instance.position.x, solid_instance.position.y+16, lamp)
						elif (global.dark_level and randi_range(1,40) == 1): gml.instance_create(solid_instance.position.x, solid_instance.position.y+16, scarab)
						elif (randi_range(1,60) == 1): gml.instance_create(solid_instance.position.x, solid_instance.position.y+16, bat)
						elif (randi_range(1,80) == 1): gml.instance_create(solid_instance.position.x, solid_instance.position.y+16, spider_hang)
					
				
					if (not gml.collision_point(solid_instance.position.x, solid_instance.position.y-16, 'solid', 0, 0)):
					
						if (randi_range(1,60) == 1): gml.instance_create(solid_instance.position.x, solid_instance.position.y-16, snake)
						elif (randi_range(1,800) == 1): gml.instance_create(solid_instance.position.x, solid_instance.position.y-16, caveman)
					
				
			
		
		
		# force generate chest
		if (global.gen_udjat_eye and not global.locked_chest):
		
			var all_exits = gml.get_all_instances("exit")
			for exit_instance in all_exits:
			
				if (not gml.collision_point(exit_instance.position.x-8, exit_instance.position.y, 'solid', 0, 0) and
					not gml.collision_point(exit_instance.position.x-8, exit_instance.position.y+15, 'treasure', 0, 0) and
					not gml.collision_point(exit_instance.position.x-8, exit_instance.position.y+8, 'chest', 0, 0) and
					not gml.collision_point(exit_instance.position.x-8, exit_instance.position.y+8, 'spikes', 0, 0)):
				
					gml.instance_create(exit_instance.position.x-8, exit_instance.position.y+8, locked_chest)
					global.Locked_chest = true
					break
				
				elif (not gml.collision_point(exit_instance.position.x+8, exit_instance.position.y, 'solid', 0, 0) and
						 not gml.collision_point(exit_instance.position.x+8, exit_instance.position.y+15, 'treasure', 0, 0) and
						 not gml.collision_point(exit_instance.position.x+8, exit_instance.position.y+8, 'chest', 0, 0) and
						 not gml.collision_point(exit_instance.position.x+8, exit_instance.position.y+8, 'spikes', 0, 0)):
				
					gml.instance_create(exit_instance.position.x+16+8, exit_instance.position.y+8, locked_chest)
					global.locked_chest = true
					break
				
				else:
				
					gml.instance_create(exit_instance.position.x+8, exit_instance.position.y+8, locked_chest)
					global.Locked_chest = true
					break
				
			
		
		
		# generate key if locked chest has been generated
		if (gml.instance_exists('locked_chest')):
		
			var n = 1
			while (n < 8 and global.key == false):
			
				var all_treasure = gml.get_all_instances("treasure")
				for treasure_instance in all_treasure:
				
					if (randi_range(1,8) <= 1 and not gml.collision_point(treasure_instance.position.x, treasure_instance.position.y, 'solid', 0, 0) and global.key == false):
					
						if (treasure_instance.type == "Gold Bars"): gml.instance_create(treasure_instance.position.x, treasure_instance.position.y+4, key)
						else: gml.instance_create(treasure_instance.position.x, treasure_instance.position.y, key)
						global.key = true
						gml.instance_destroy(treasure_instance)
						break
					
				
				n += 1
			
			if (not global.key):
			
				var all_treasure = gml.get_all_instances("treasure")
				for treasure_instance in all_treasure:
				
					if (not gml.collision_point(treasure_instance.position.x, treasure_instance.position.y, "solid", 0, 0)):
					
						if (treasure_instance.type == "Gold Bars"): gml.instance_create(treasure_instance.position.x, treasure_instance.position.y+4, key)
						else: gml.instance_create(treasure_instance.position.x, treasure_instance.position.y, key)
						global.key = true
						gml.instance_destroy(treasure_instance)
						break
					
				
			
		
		
		if (global.key): global.made_udjat_eye = true
		
		var all_blocks = gml.get_all_instances("block")
		for block_instance in all_blocks:
		
			if (not InLevel.is_in_shop(block_instance.position.x, block_instance.position.y)):
				var entrance_instance = gml.get_instance('entrance') # --- Helper function
				var n = gml.point_distance(block_instance.position.x, block_instance.position.y, entrance_instance.position.x, entrance_instance.position.y)
				if (not InLevel.is_in_shop(block_instance.position.x, block_instance.position.y) and
					randi_range(1,4) == 1 and not
					(block_instance.position.y == entrance_instance.position.y and n < 144) and
					n > 48):
				
					if (gml.collision_point(block_instance.position.x+16, block_instance.position.y, "solid", 0, 0) and not
						gml.collision_rectangle(block_instance.position.x-32, block_instance.position.y, block_instance.position.x-1, block_instance.position.y+15, "solid", 0, 0)): #--- originally written as collision_point,
								#but probably meant to be collision_rectangle? Assuming this always gives 'false' originally since it's not a valid construction for this function
					
						if (global.dark_level): gml.instance_create(block_instance.position.x, block_instance.position.y, arrow_trap_left_lit)
						else: gml.instance_create(block_instance.position.x, block_instance.position.y, arrow_trap_left)
						gml.instance_destroy(block_instance)
					
					elif (gml.collision_point(block_instance.position.x-16, block_instance.position.y, "solid", 0, 0) and not
						gml.collision_rectangle(block_instance.position.x+16, block_instance.position.y, block_instance.position.x+48, block_instance.position.y+15, "solid", 0, 0)): #--- same as above
					
						if (global.dark_level): gml.instance_create(block_instance.position.x, block_instance.position.y, arrow_trap_right_lit)
						else: gml.instance_create(block_instance.position.x, block_instance.position.y, arrow_trap_right)
						gml.instance_destroy(block_instance)
					
				
			
		

	elif (global.level_type == 1):

		global.ash_grave = false
		if (global.cemetary):
		
			var all_lushes = gml.get_all_instances("lush")
			for lush_instance in all_lushes:
			
				# generate graves
				if (not gml.collision_point(lush_instance.position.x, lush_instance.position.y-16, "solid", 0, 0) and
					not gml.collision_point(lush_instance.position.x, lush_instance.position.y-16, "entrance", 0, 0) and
					not gml.collision_point(lush_instance.position.x, lush_instance.position.y-16, "exit", 0, 0) and
					randi_range(1,20) == 1 and
					lush_instance.position.x != 160 and lush_instance.position.x != 176 and lush_instance.position.x != 320 and lush_instance.position.x != 336 and lush_instance.position.x != 480 and lush_instance.position.x != 496):
				
					var obj = gml.instance_create(lush_instance.position.x, lush_instance.position.y-16, grave)
					if (not global.ash_grave and randi_range(1,40) == 1):
					
						obj.lush_instance.sprite_index = s_grave_ash
						obj = gml.instance_create(lush_instance.position.x+8, lush_instance.position.y+8, shotgun)
						obj.cost = 0
						obj.for_sale = false
						ash_grave = true                
					
					elif (not gml.collision_point(lush_instance.position.x+8, lush_instance.position.y+8, "treasure", 0, 0)):
					
						if (randi_range(1,2) == 1): gml.instance_create(lush_instance.position.x+8, lush_instance.position.y+8, gold_nugget)
						elif (randi_range(1,4) == 1): gml.instance_create(lush_instance.position.x+8, lush_instance.position.y+8, sapphire_big)
						elif (randi_range(1,6) == 1): gml.instance_create(lush_instance.position.x+8, lush_instance.position.y+8, emerald_big)
						elif (randi_range(1,8) == 1): gml.instance_create(lush_instance.position.x+8, lush_instance.position.y+8, ruby_big)
					
				
			
		

		var all_solids = gml.get_all_instances("solid")
		for solid_instance in all_solids:
		
			# bg
			if (randi_range(1,100) == 1 and not gml.collision_point(solid_instance.position.x, solid_instance.position.y-16, "solid", 0, 0)): gml.tile_add("bg_trees", 0, 0, 16, 48, solid_instance.position.x, solid_instance.position.y-32, 9005)
			
			if (not InLevel.is_in_shop(solid_instance.position.x, solid_instance.position.y)):
				
				var entrance_instance = gml.get_instance('entrance') #--- Helper function
			
				if (solid_instance.position.y > 32 and gml.collision_point(solid_instance.position.x, solid_instance.position.y-16, "solid", 0, 0) and global.gen_market_entrance and not global.made_market_entrance):
				
					var obj = gml.instance_place(solid_instance.position.x, solid_instance.position.y-16, 'solid', solid_instance)
					if (obj.solid_instance.type != "Tree" and solid_instance.type != "Altar" and not obj.invincible and randi_range(1,global.market_chance) <= 1):
					
						gml.instance_create(solid_instance.position.x, solid_instance.position.y-16, x_market)
						solid_instance.invincible = true
						global.made_market_entrance = true
					
					else: global.market_chance -= 1

				elif (solid_instance.type != "Tree" and solid_instance.type != "Altar" and solid_instance.position.y != 0 and
						 not gml.collision_rectangle(solid_instance.position.x, solid_instance.position.y-32, solid_instance.position.x+15, solid_instance.position.y-1, "solid", false, true) and #--- this and below seem to be same issue as above with wrong function being called. changed to collision_rectangle
						 not gml.collision_rectangle(solid_instance.position.x, solid_instance.position.y-16, solid_instance.position.x+15, solid_instance.position.y-1, "enemy", 0, 0) and
						 (not gml.collision_point(solid_instance.position.x-16, solid_instance.position.y, "solid", 0, 0) or not gml.collision_point(solid_instance.position.x+16, solid_instance.position.y, "solid", 0, 0)) and
						 gml.collision_point(solid_instance.position.x, solid_instance.position.y+16, "solid", 0, 0) and
						 not gml.collision_point(solid_instance.position.x, solid_instance.position.y, "x_market", 0, 0) and
						 not InLevel.is_in_shop(solid_instance.position.x, solid_instance.position.y) and
						 gml.point_distance(solid_instance.position.x, solid_instance.position.y, entrance_instance.position.x, entrance_instance.position.y) > 64):
				
					if (global.dark_level and not gml.collision_point(solid_instance.position.x, solid_instance.position.y-32, "water", 0, 0) and randi_range(1,20) == 1):
					
						gml.instance_create(solid_instance.position.x, solid_instance.position.y-32, tiki_torch)
					
					elif (randi_range(1,12) == 1 and
							 solid_instance.position.x != 160 and solid_instance.position.x != 176 and solid_instance.position.x != 320 and solid_instance.position.x != 336 and solid_instance.position.x != 480 and solid_instance.position.x != 496):
					
						if (gml.collision_point(solid_instance.position.x, solid_instance.position.y-16, "solid", 0, 0)):
						
							var sol = gml.instance_nearest(solid_instance.position.x, solid_instance.position.y-16, solid)
							var all_sols = gml.get_all_instances("sol")
							for sol_instance in all_sols:
								sol_instance.clean_death = true
								sol_instance.gml.instance_destroy() 
						
						gml.instance_create(solid_instance.position.x, solid_instance.position.y, spear_trap_bottom)
						if (global.dark_level): gml.instance_create(solid_instance.position.x, solid_instance.position.y-16, spear_trap_lit)
						else: gml.instance_create(solid_instance.position.x, solid_instance.position.y-16, spear_trap_top)
						solid_instance.clean_death = true
						gml.instance_destroy(solid_instance)
					
				
				
				if (solid_instance.type != "Altar"):
				
					if (global.cemetary): scr_treasure_gen(10, solid_instance)
					else: scr_treasure_gen(0, solid_instance)
				
			
				# enemies
				if (scr_get_room_x(solid_instance.position.x) != global.start_room_x or scr_get_room_y(solid_instance.position.y-16) != global.start_room_y):
					var n
					if (solid_instance.position.y < gml.room_height - 64 and 
						not gml.collision_point(solid_instance.position.x, solid_instance.position.y+16, "solid", 0, 0) and not gml.collision_point(solid_instance.position.x, solid_instance.position.y+32, "solid", 0, 0) and
						not gml.collision_point(solid_instance.position.x, solid_instance.position.y+16, "water", 0, 0) and not gml.collision_point(solid_instance.position.x, solid_instance.position.y+32, "water", 0, 0)):
						
						if (global.cemetary): n = 60
						else: n = 80
						
						if (global.dark_level and randi_range(1,40) == 1): gml.instance_create(solid_instance.position.x, solid_instance.position.y+16, scarab)
						elif (randi_range(1,n) == 1): gml.instance_create(solid_instance.position.x, solid_instance.position.y+16, bat)
						# elif (randi_range(1,40) == 1): gml.instance_create(solid_instance.position.x, solid_instance.position.y+16, spider_hang)
					
					
					if (solid_instance.position.y > 16 and not gml.collision_point(solid_instance.position.x, solid_instance.position.y-16, "solid", 0, 0) and
						not gml.collision_point(solid_instance.position.x, solid_instance.position.y, "enemy", 0, 0) and
						not gml.collision_point(solid_instance.position.x, solid_instance.position.y, "spikes", 0, 0)):
					
						if (global.cemetary):
						
							if (randi_range(1,25) == 1): gml.instance_create(solid_instance.position.x, solid_instance.position.y-16, zombie)
							elif (randi_range(1,160) == 1): gml.instance_create(solid_instance.position.x, solid_instance.position.y-16, vampire)
						
						elif (not gml.collision_point(solid_instance.position.x, solid_instance.position.y-16, "water", 0, 0)):
						
							if (global.black_market and (fmod(solid_instance.position.y, 128) == 0)): n = 0 # to prevent mantraps from spawning near shopkeepers in black market 
							else: n = 1
							if (randi_range(1,60) == n): gml.instance_create(solid_instance.position.x, solid_instance.position.y-16, man_trap)
							elif (randi_range(1,60) == 1): gml.instance_create(solid_instance.position.x, solid_instance.position.y-16, caveman)
							elif (randi_range(1,120) == 1): gml.instance_create(solid_instance.position.x, solid_instance.position.y-16, fire_frog)
							elif (randi_range(1,30) == 1): gml.instance_create(solid_instance.position.x, solid_instance.position.y-16, frog)
						
						elif (randi_range(1,120) == 1): gml.instance_create(solid_instance.position.x, solid_instance.position.y-16, fire_frog)
						elif (randi_range(1,30) == 1): gml.instance_create(solid_instance.position.x, solid_instance.position.y-16, frog)
					
				
				
				# rock
			
		

		# force market entrance
		if (global.gen_market_entrance and not global.made_market_entrance):
		
			all_solids = gml.get_all_instances("solid")
			for solid_instance in all_solids:
			
				if (solid_instance.position.y > 32 and gml.collision_point(solid_instance.position.x, solid_instance.position.y-16, "solid", 0, 0)):
				
					var obj = gml.instance_place(solid_instance.position.x, solid_instance.position.y-16, 'solid', solid_instance)
					if (obj.solid_instance.type != "Tree" and solid_instance.type != "Altar" and not obj.invincible):
					
						gml.instance_create(solid_instance.position.x, solid_instance.position.y-16, x_market)
						solid_instance.invincible = true
						global.made_market_entrance = true
					
				
			
		
		
		var all_vines = gml.get_all_instances("vine")
		for vine_instance in all_vines:
		
			if (randi_range(1,15) == 1): gml.instance_create(vine_instance.position.x, vine_instance.position.y, monkey)
		
		
		var all_water = gml.get_all_instances("water")
		for water_instance in all_water:
		
			if (not gml.collision_point(water_instance.position.x, water_instance.position.y, "solid", 0, 0)):
			
				if (randi_range(1,30) == 1):
				
					if (global.cemetary): gml.instance_create(water_instance.position.x+4, water_instance.position.y+4, dead_fish)
					else: gml.instance_create(water_instance.position.x+4, water_instance.position.y+4, piranha)
				
			
		

	elif (global.level_type == 2):

		var all_solids = gml.get_all_instances("solid")
		for solid_instance in all_solids:
		
			if (not InLevel.is_in_shop(solid_instance.position.x, solid_instance.position.y)):
				
				var entrance_instance = gml.get_instance('entrance') # --- Helper function
				
				# enemies
				var n = 30
				if (global.yeti_lair): n = 90
				
				if (scr_get_room_x(solid_instance.position.x) != global.start_room_x or scr_get_room_y(solid_instance.position.y-16) != global.start_room_y):
				
					if (solid_instance.position.y < gml.room_height - 64 and 
						not gml.collision_point(solid_instance.position.x, solid_instance.position.y+16, "solid", 0, 0) and not gml.collision_point(solid_instance.position.x, solid_instance.position.y+32, "solid", 0, 0) and
						not gml.collision_point(solid_instance.position.x, solid_instance.position.y+16, "water", 0, 0) and not gml.collision_point(solid_instance.position.x, solid_instance.position.y+32, "water", 0, 0)):
					
						if (global.dark_level and randi_range(1,40) == 1): gml.instance_create(solid_instance.position.x, solid_instance.position.y+16, scarab)
					
					elif (solid_instance.position.y > 16 and solid_instance.position.y < 592 and not gml.collision_point(solid_instance.position.x, solid_instance.position.y-16, "solid", 0, 0) and not InLevel.is_in_shop(solid_instance.position.x, solid_instance.position.y)):
					
						if (randi_range(1,n) == 1): gml.instance_create(solid_instance.position.x, solid_instance.position.y-16, ufo)
					
				
				
				if (solid_instance.position.y > 16 and solid_instance.position.y < 592 and
					not gml.collision_point(solid_instance.position.x, solid_instance.position.y-16, "solid", 0, 0) and
					not gml.collision_point(solid_instance.position.x+8, solid_instance.position.y-8, "enemy", 0, 0) and
					not gml.collision_point(solid_instance.position.x+8, solid_instance.position.y-1, "spikes", 0, 0) and
					gml.point_distance(solid_instance.position.x, solid_instance.position.y, entrance_instance.position.x, entrance_instance.position.y) > 64 and
					not InLevel.is_in_shop(solid_instance.position.x, solid_instance.position.y)):
				
					if (randi_range(1,10) == 1 and solid_instance.sprite_index == s_dark and not gml.collision_rectangle(solid_instance.position.x, solid_instance.position.y-64, solid_instance.position.x+15, solid_instance.position.y-1, "solid", 0, 0) and gml.distance_to_object('exit', solid_instance) > 64): gml.instance_create(solid_instance.position.x, solid_instance.position.y-16, spring_trap) #--- same collision_rectangle issue
					elif (randi_range(1,20) == 1 and gml.point_distance(solid_instance.position.x, solid_instance.position.y, entrance_instance.position.x, entrance_instance.position.y) > 64): gml.instance_create(solid_instance.position.x, solid_instance.position.y-16, solid_instance.position.yeti)
				
				
				if (solid_instance.type != "Altar"):
					
					scr_treasure_gen(0, solid_instance)
			
			
		

	elif (global.level_type == 3):

		global.Tomb_lord = false
		global.genTomb_lord = false
		if (global.curr_level == 13): global.genTomb_lord = true
		elif (randi_range(1,4) == 1): global.genTomb_lord = true
		
		global.gen_gold_entrance = false
		if (global.curr_level == 14): global.gen_gold_entrance = true
		global.made_gold_entrance = false

		var all_solids = gml.get_all_instances("solid")
		for solid_instance in all_solids:
		   
			# bg
			if (randi_range(1,100) == 1 and not gml.collision_point(solid_instance.position.x, solid_instance.position.y-16, "solid", 0, 0)): gml.tile_add("bg_statues", 0, 0, 16, 48, solid_instance.position.x, solid_instance.position.y-32, 9005)
		
			if (not InLevel.is_in_shop(solid_instance.position.x, solid_instance.position.y)):
			
				var entrance_instance = gml.get_instance('entrance') #--- Helper function
			
				# traps
				if (solid_instance.position.y > 32 and not gml.collision_point(solid_instance.position.x, solid_instance.position.y-16, "solid", 0, 0) and global.gen_gold_entrance and not global.made_gold_entrance):
				
					if (randi_range(1,global.gold_chance) == 1):
					
						gml.instance_create(solid_instance.position.x, solid_instance.position.y-16, gold_door)
						solid_instance.invincible = true
						global.made_gold_entrance = true
					
					else: global.gold_chance -= 1
				
				elif (solid_instance.type != "Tree" and solid_instance.type != "Altar" and solid_instance.position.y != 0 and
						 not gml.collision_point(solid_instance.position.x, solid_instance.position.y-16, "solid", 0, 0) and
						 not gml.collision_point(solid_instance.position.x, solid_instance.position.y-16, "lava", 0, 0) and
						 not gml.collision_rectangle(solid_instance.position.x, solid_instance.position.y-16, solid_instance.position.x+15, solid_instance.position.y-1, "enemy", 0, 0) and #--- collision_rectangle issue again
						 not gml.collision_point(solid_instance.position.x, solid_instance.position.y-32, "solid", 0, 0) and
						 (not gml.collision_point(solid_instance.position.x-16, solid_instance.position.y, "solid", 0, 0) or not gml.collision_point(solid_instance.position.x+16, solid_instance.position.y, "solid", 0, 0)) and
						 gml.collision_point(solid_instance.position.x, solid_instance.position.y+16, "solid", 0, 0) and
						 not InLevel.is_in_shop(solid_instance.position.x, solid_instance.position.y) and
						 solid_instance.position.x != 160 and solid_instance.position.x != 176 and solid_instance.position.x != 320 and solid_instance.position.x != 336 and solid_instance.position.x != 480 and solid_instance.position.x != 496):
				
					if (randi_range(1,12) == 1 and gml.point_distance(solid_instance.position.x, solid_instance.position.y, entrance_instance.position.x, entrance_instance.position.y) > 64):
					
						# to keep the spear trap from plugging solid_instance.up lava passage
						if (gml.collision_point(solid_instance.position.x-16, solid_instance.position.y-32, "solid", 0, 0) and gml.collision_point(solid_instance.position.x+16, solid_instance.position.y-32, "solid", 0, 0) and
							not gml.collision_point(solid_instance.position.x, solid_instance.position.y-32, "solid", 0, 0)):
								
							pass
							# do nothing
						
						else:
						
							if (gml.collision_point(solid_instance.position.x, solid_instance.position.y-16, "solid", 0, 0)):
							
								var sol = gml.instance_nearest(solid_instance.position.x, solid_instance.position.y-16, solid)
								sol.clean_death = true
								sol.gml.instance_destroy() 
							
							gml.instance_create(solid_instance.position.x, solid_instance.position.y, spear_trap_bottom)
							if (global.dark_level): gml.instance_create(solid_instance.position.x, solid_instance.position.y-16, spear_trap_lit)
							else: gml.instance_create(solid_instance.position.x, solid_instance.position.y-16, spear_trap_top)
							solid_instance.clean_death = true
							gml.instance_destroy(solid_instance)
						
					
				
			
				# enemies
				if (solid_instance.position.y < gml.room_height - 64 and 
						not gml.collision_point(solid_instance.position.x, solid_instance.position.y+16, "solid", 0, 0) and not gml.collision_point(solid_instance.position.x, solid_instance.position.y+32, "solid", 0, 0) and
						not gml.collision_point(solid_instance.position.x, solid_instance.position.y+16, "water", 0, 0) and not gml.collision_point(solid_instance.position.x, solid_instance.position.y+32, "water", 0, 0)):
				
					if (global.dark_level and randi_range(1,40) == 1): gml.instance_create(solid_instance.position.x, solid_instance.position.y+16, scarab)
				

				if (scr_get_room_x(solid_instance.position.x) != global.start_room_x or scr_get_room_y(solid_instance.position.y-16) != global.start_room_y and
					not gml.collision_point(solid_instance.position.x, solid_instance.position.y-16, "enemy", 0, 0)):
						 
					if (solid_instance.position.y > 16 and not gml.collision_point(solid_instance.position.x, solid_instance.position.y-16, "solid", 0, 0)):
					
						if (global.genTomb_lord and
							not global.Tomb_lord and
							not gml.collision_rectangle(solid_instance.position.x, solid_instance.position.y-32, solid_instance.position.x+32, solid_instance.position.y-1, "solid", 0, 0) and #collision_rectangle issue again
							randi_range(1,40) == 1):
						
							gml.instance_create(solid_instance.position.x, solid_instance.position.y-32, tomb_lord)
							global.Tomb_lord = true
						
						elif (randi_range(1,40) == 1): gml.instance_create(solid_instance.position.x, solid_instance.position.y-16, caveman)
						elif (randi_range(1,40) == 1): gml.instance_create(solid_instance.position.x, solid_instance.position.y-16, hawkman)
						elif (randi_range(1,60) == 1):
						
							if (global.dark_level): gml.instance_create(solid_instance.position.x, solid_instance.position.y-16, smash_trap_lit)
							else: gml.instance_create(solid_instance.position.x, solid_instance.position.y-16, smash_trap)
						
					
				
				
				if (solid_instance.type != "Altar"):
					   
					scr_treasure_gen(0, solid_instance)
			
			
		
		
		# force generate gold door
		if (global.gen_gold_entrance and not global.made_gold_entrance):
		
			all_solids = gml.get_all_instances("solid")
			for solid_instance in all_solids:
			
				if (solid_instance.position.y > 32 and not gml.collision_point(solid_instance.position.x, solid_instance.position.y-16, "solid", 0, 0)):
				
					gml.instance_create(solid_instance.position.x, solid_instance.position.y-16, gold_door)
					solid_instance.invincible = true
					global.made_gold_entrance = true
					break
				
			
		
		
		var all_blocks = gml.get_all_instances("block")
		for block_instance in all_blocks:
		   
			block_instance.clean_death = true
			if (not InLevel.is_in_shop(block_instance.position.x, block_instance.position.y)):
				var entrance_instance = gml.get_instance('entrance') #--- Helper function
				var n = gml.point_distance(block_instance.position.x, block_instance.position.y, entrance_instance.position.x, entrance_instance.position.y)
				if (not InLevel.is_in_shop(block_instance.position.x, block_instance.position.y) and
					randi_range(1,3) == 1 and not
					(block_instance.position.y == entrance_instance.position.y and n < 144) and
					n > 48):
				
					if (gml.collision_point(block_instance.position.x+16, block_instance.position.y, "solid", 0, 0) and not
						gml.collision_rectangle(block_instance.position.x-32, block_instance.position.y, block_instance.position.x-1, block_instance.position.y+15, "solid", 0, 0)): #--- collision_rectangle issue again
					
						if (global.dark_level): gml.instance_create(block_instance.position.x, block_instance.position.y, arrow_trap_left_lit)
						else: gml.instance_create(block_instance.position.x, block_instance.position.y, arrow_trap_left)
						gml.instance_destroy(block_instance)
					
					elif (gml.collision_point(block_instance.position.x-16, block_instance.position.y, "solid", 0, 0) and not
						gml.collision_rectangle(block_instance.position.x+16, block_instance.position.y, block_instance.position.x+48, block_instance.position.y+15, "solid", 0, 0)): #--- collision_rectangle issue again
					
						if (global.dark_level): gml.instance_create(block_instance.position.x, block_instance.position.y, arrow_trap_right_lit)
						else: gml.instance_create(block_instance.position.x, block_instance.position.y, arrow_trap_right)
						gml.instance_destroy(block_instance)
					
				
			
		


	# add box of flares to dark level
	if (global.dark_level):

		var all_entrances = gml.get_all_instances("entrance")
		for entrance_instance in all_entrances:
		
			if (not gml.collision_point(entrance_instance.position.x-16, entrance_instance.position.y, "solid", 0, 0)):
			
				gml.instance_create(entrance_instance.position.x-16+8, entrance_instance.position.y+8, flare_crate)
			
			elif (not gml.collision_point(entrance_instance.position.x+16, entrance_instance.position.y, "solid", 0, 0)):
			
				gml.instance_create(entrance_instance.position.x+16+8, entrance_instance.position.y+8, flare_crate)
			
			else:
			
				gml.instance_create(entrance_instance.position.x+8, entrance_instance.position.y+8, flare_crate)
			
		


	global.clean_solids = false



func scr_setup_walls(placement):
	#
	# scr_setup_walls()
	#
	# Adds decorations to walls, changes their sprites depending on placement.
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

	var all_bricks = gml.get_all_instances("brick")
	for brick_instance in all_bricks:

		brick_instance.up = false
		brick_instance.down = false
		brick_instance.left = false
		brick_instance.right = false

		if (brick_instance.position.y == 0 or gml.collision_point(brick_instance.position.x, brick_instance.position.y-16, 'brick', 0, 0) or gml.collision_point(brick_instance.position.x, brick_instance.position.y-16, 'hard_block', 0, 0)):  brick_instance.up = true
		if (brick_instance.position.y >= placement or gml.collision_point(brick_instance.position.x, brick_instance.position.y+16, 'brick', 0, 0) or gml.collision_point(brick_instance.position.x, brick_instance.position.y+16, 'hard_block', 0, 0)):  brick_instance.down = true
		if (gml.collision_point(brick_instance.position.x-16, brick_instance.position.y, 'brick', 0, 0) or gml.collision_point(brick_instance.position.x-16, brick_instance.position.y, 'hard_block', 0, 0)):  brick_instance.left = true
		if (gml.collision_point(brick_instance.position.x+16, brick_instance.position.y, 'brick', 0, 0) or gml.collision_point(brick_instance.position.x+16, brick_instance.position.y, 'hard_block', 0, 0)):  brick_instance.right = true

		if (not brick_instance.up):
		
			brick_instance.sprite_index = "cave_up"
			if (global.graphics_high):
			
				if (randi_range(1,3) < 3): gml.tile_add('bg_cave_top', 0, 0, 16, 16, brick_instance.position.x, brick_instance.position.y-16, 3)
				else: gml.tile_add('bg_cave_top', 16, 0, 16, 16, brick_instance.position.x, brick_instance.position.y-16, 3)
			
			# instance_create(x, y-16, cave_top)
		
		
		if (not brick_instance.down):
		
			if (not brick_instance.up): brick_instance.sprite_index = "cave_up2"
			else: brick_instance.sprite_index = "brick_down"
			#instance_create(x, y+16, cave_bottom)
		
		
		#/*
		#if (not left):
		#
			#instance_create(x-16, y, cave_left)
		#
		#
		#if (not right):
		#
			#instance_create(x+15, y, cave_right)
		#
		#*/
		
		


	var all_lushes = gml.get_all_instances("lush")
	for lush_instance in all_lushes:

		lush_instance.up = false
		lush_instance.down = false
		lush_instance.left = false
		lush_instance.right = false

		if (lush_instance.position.y == 0 or gml.collision_point(lush_instance.position.x, lush_instance.position.y-16, 'lush', 0, 0)):  lush_instance.up = true
		if (lush_instance.position.y >= placement or gml.collision_point(lush_instance.position.x, lush_instance.position.y+16, 'lush', 0, 0)):  lush_instance.down = true
		if (gml.collision_point(lush_instance.position.x-16, lush_instance.position.y, 'lush', 0, 0)):  lush_instance.left = true
		if (gml.collision_point(lush_instance.position.x+16, lush_instance.position.y, 'lush', 0, 0)):  lush_instance.right = true


		if (not lush_instance.up):
		
			lush_instance.sprite_index = s_lush_up
			if (global.graphics_high):
			
				if (randi_range(1,8) == 1): gml.tile_add("bg_cave_top2", 32, 0, 16, 16, lush_instance.position.x, lush_instance.position.y-16, 3)
				elif (randi_range(1,3) < 3): gml.tile_add("bg_cave_top2", 0, 0, 16, 16, lush_instance.position.x, lush_instance.position.y-16, 3)
				else: gml.tile_add("bg_cave_top2", 16, 0, 16, 16, lush_instance.position.x, lush_instance.position.y-16, 3)
			
		
		
		if (not lush_instance.down):
		
			if (not lush_instance.up): lush_instance.sprite_index = s_lush_up2
			else: lush_instance.sprite_index = s_lush_down
			
			if (not gml.collision_point(lush_instance.position.x, lush_instance.position.y+16, 'solid', 0, 0) and global.graphics_high):
			
				if (randi_range(1,12) == 1): gml.tile_add('bg_cave_top2', 48, 0, 16, 16, lush_instance.position.x, lush_instance.position.y+16, 3)
				elif (randi_range(1,12) == 1): gml.tile_add('bg_cave_top2', 64, 0, 16, 16, lush_instance.position.x, lush_instance.position.y+16, 3)
			
			#instance_create(x, y+16, lushBottom)
		
		


	var all_darks = gml.get_all_instances("dark")
	for dark_instance in all_darks:

		dark_instance.up = false
		dark_instance.down = false
		dark_instance.left = false
		dark_instance.right = false

		if (dark_instance.global_position.y == 0 or gml.collision_point(dark_instance.global_position.x, dark_instance.global_position.y-16, 'dark', 0, 0)):  dark_instance.up = true
		if (dark_instance.global_position.y >= placement or gml.collision_point(dark_instance.global_position.x, dark_instance.global_position.y+16, 'dark', 0, 0)):  dark_instance.down = true
		if (gml.collision_point(dark_instance.global_position.x-16, dark_instance.global_position.y, 'dark', 0, 0)):  dark_instance.left = true
		if (gml.collision_point(dark_instance.global_position.x+16, dark_instance.global_position.y, 'dark', 0, 0)):  dark_instance.right = true

		if (not dark_instance.up):
		
			dark_instance.sprite_index = "dark_up"
			if (global.graphics_high):
			
				if (randi_range(1,3) < 3): gml.tile_add("bg_cave_top3", 0, 0, 16, 16, dark_instance.global_position.x, dark_instance.global_position.y-16, 3)
				else: gml.tile_add("bg_cave_top3", 16, 0, 16, 16, dark_instance.global_position.x, dark_instance.global_position.y-16, 3)
			
		

		if (not dark_instance.down):
		
			if (not dark_instance.up): dark_instance.sprite_index = "dark_up2"
			else: dark_instance.sprite_index = "dark_down"
			#instance_create(x, y+16, darkBottom)
		
		
		#/*
		#if (not left):
		#
			#instance_create(x-16, y, darkLeft)
		#
		#
		#if (not right):
		#
			#instance_create(x+15, y, darkRight)
		#
		#*/


	var all_ice = gml.get_all_instances("ice")
	for ice_instance in all_ice:

		ice_instance.up = false
		ice_instance.down = false
		ice_instance.left = false
		ice_instance.right = false

		if (gml.collision_point(ice_instance.position.x, ice_instance.position.y-16, 'ice', 0, 0)):  ice_instance.up = true
		if (gml.collision_point(ice_instance.position.x, ice_instance.position.y+16, 'ice', 0, 0)):  ice_instance.down = true
		if (gml.collision_point(ice_instance.position.x-16, ice_instance.position.y, 'ice', 0, 0)):  ice_instance.left = true
		if (gml.collision_point(ice_instance.position.x+16, ice_instance.position.y, 'ice', 0, 0)):  ice_instance.right = true

		if (not ice_instance.up):
		
			ice_instance.sprite_index = s_ice_up
		
		if (not ice_instance.down):
		
			if (not ice_instance.up): ice_instance.sprite_index = s_ice_up2
			else: ice_instance.sprite_index = s_ice_down
			if (randi_range(1,20) == 1 and not gml.collision_point(ice_instance.position.x, ice_instance.position.y+16, 'solid', 0, 0)): gml.instance_create(ice_instance.position.x, ice_instance.position.y+16, 'ice_bottom')
		
		if (not ice_instance.left):
		
			if (not ice_instance.up and not ice_instance.down): ice_instance.sprite_index = s_ice_udl
			elif (not ice_instance.up): ice_instance.sprite_index = s_ice_ul
			elif (not ice_instance.down): ice_instance.sprite_index = s_ice_dl
			else: ice_instance.sprite_index = s_ice_left
		
		if (not ice_instance.right):
		
			if (not ice_instance.up and not ice_instance.down): ice_instance.sprite_index = s_ice_udr
			elif (not ice_instance.up): ice_instance.sprite_index = s_ice_ur
			elif (not ice_instance.down): ice_instance.sprite_index = s_ice_dr
			else: ice_instance.sprite_index = s_ice_right
		
		if (not ice_instance.up and not ice_instance.left and not ice_instance.right and ice_instance.down): ice_instance.sprite_index = s_ice_ulr
		if (not ice_instance.down and not ice_instance.left and not ice_instance.right and ice_instance.up): ice_instance.sprite_index = s_ice_dlr
		if (ice_instance.up and ice_instance.down and not ice_instance.left and not ice_instance.right): ice_instance.sprite_index = s_ice_lr
		if (not ice_instance.up and not ice_instance.down and not ice_instance.left and not ice_instance.right):
		
			ice_instance.sprite_index = s_ice_block
		


	var all_temples = gml.get_all_instances("temple")
	for temple_instance in all_temples:

		temple_instance.up = false
		temple_instance.down = false
		temple_instance.left = false
		temple_instance.right = false

		if (temple_instance.position.y == 0 or gml.collision_point(temple_instance.position.x, temple_instance.position.y-16, 'temple', 0, 0) or gml.collision_point(temple_instance.position.x, temple_instance.position.y+16, 'temple_fake', 0, 0)):  temple_instance.up = true
		if (temple_instance.position.y >= placement or gml.collision_point(temple_instance.position.x, temple_instance.position.y+16, 'temple', 0, 0) or gml.collision_point(temple_instance.position.x, temple_instance.position.y+16, 'temple_fake', 0, 0)):  temple_instance.down = true
		if (gml.collision_point(temple_instance.position.x-16, temple_instance.position.y, 'temple', 0, 0) or gml.collision_point(temple_instance.position.x-16, temple_instance.position.y, 'temple_fake', 0, 0)):  temple_instance.left = true
		if (gml.collision_point(temple_instance.position.x+16, temple_instance.position.y, 'temple', 0, 0) or gml.collision_point(temple_instance.position.x+16, temple_instance.position.y, 'temple_fake', 0, 0)):  temple_instance.right = true

		if (global.city_of_gold):
		
		
			if (not temple_instance.up):
					
				temple_instance.sprite_index = s_g_temple_up
				if (global.graphics_high):
				
					if (randi_range(1,4) == 1): gml.tile_add('bg_cave_top4', 0, 0, 16, 16, temple_instance.position.x, temple_instance.position.y-16, 3)
					elif (randi_range(1,4) == 1): gml.tile_add('bg_cave_top4', 16, 0, 16, 16, temple_instance.position.x, temple_instance.position.y-16, 3)
				
				if (not temple_instance.left and not temple_instance.right):
				
					if (not temple_instance.down): temple_instance.sprite_index = s_g_temple_up6
					else: temple_instance.sprite_index = s_g_temple_up5
				
				elif (not temple_instance.left):
				   
					if (not temple_instance.down): temple_instance.sprite_index = s_g_temple_up7
					else: temple_instance.sprite_index = s_g_temple_up3
				
				elif (not temple_instance.right):
				   
					if (not temple_instance.down): temple_instance.sprite_index = s_g_temple_up8
					else: temple_instance.sprite_index = s_g_temple_up4
				
				elif (temple_instance.left and temple_instance.right and not temple_instance.down):
				
					temple_instance.sprite_index = s_g_temple_up2
			
		
		elif (not temple_instance.down):
		
			temple_instance.sprite_index = s_g_temple_down
		
		
		
		else:
			if (not temple_instance.up):
			
				temple_instance.sprite_index = s_temple_up
				if (global.graphics_high):
				
					if (randi_range(1,4) == 1): gml.tile_add('bg_cave_top4', 0, 0, 16, 16, temple_instance.position.x, temple_instance.position.y-16, 3)
					elif (randi_range(1,4) == 1): gml.tile_add('bg_cave_top4', 16, 0, 16, 16, temple_instance.position.x, temple_instance.position.y-16, 3)
				
				if (not temple_instance.left and not temple_instance.right):
				
					if (not temple_instance.down): temple_instance.sprite_index = s_temple_up6
					else: temple_instance.sprite_index = s_temple_up5
				
				elif (not temple_instance.left):
				   
					if (not temple_instance.down): temple_instance.sprite_index = s_temple_up7
					else: temple_instance.sprite_index = s_temple_up3
				
				elif (not temple_instance.right):
				   
					if (not temple_instance.down): temple_instance.sprite_index = s_temple_up8
					else: temple_instance.sprite_index = s_temple_up4
				
				elif (temple_instance.left and temple_instance.right and not temple_instance.down):
				
					temple_instance.sprite_index = s_temple_up2
			
		
			elif (not temple_instance.down):
			
				temple_instance.sprite_index = s_temple_down
			


	var all_fake_temples = gml.get_all_instances("temple_fake")
	for temple_fake_instance in all_fake_temples:

		temple_fake_instance.up = false
		temple_fake_instance.down = false
		temple_fake_instance.left = false
		temple_fake_instance.right = false

		if (temple_fake_instance.position.y == 0 or gml.collision_point(temple_fake_instance.position.x, temple_fake_instance.position.y-16, 'temple', 0, 0) or gml.collision_point(temple_fake_instance.position.x, temple_fake_instance.position.y-16, 'temple_fake', 0, 0)):  temple_fake_instance.up = true
		if (gml.collision_point(temple_fake_instance.position.x, temple_fake_instance.position.y+16, 'temple', 0, 0) or gml.collision_point(temple_fake_instance.position.x, temple_fake_instance.position.y+16, 'temple_fake', 0, 0)):  temple_fake_instance.down = true
		if (gml.collision_point(temple_fake_instance.position.x-16, temple_fake_instance.position.y, 'temple', 0, 0) or gml.collision_point(temple_fake_instance.position.x-16, temple_fake_instance.position.y, 'temple_fake', 0, 0)):  temple_fake_instance.left = true
		if (gml.collision_point(temple_fake_instance.position.x+16, temple_fake_instance.position.y, 'temple', 0, 0) or gml.collision_point(temple_fake_instance.position.x+16, temple_fake_instance.position.y, 'temple_fake', 0, 0)):  temple_fake_instance.right = true

		if (global.city_of_gold):
		
		
			if (not temple_fake_instance.up):
			
				temple_fake_instance.sprite_index = s_g_temple_up
				if (global.graphics_high):
				
					if (randi_range(1,4) == 1): gml.tile_add('bg_cave_top4', 0, 0, 16, 16, temple_fake_instance.position.x, temple_fake_instance.position.y-16, 3)
					elif (randi_range(1,4) == 1): gml.tile_add('bg_cave_top4', 16, 0, 16, 16, temple_fake_instance.position.x, temple_fake_instance.position.y-16, 3)
				
				if (not temple_fake_instance.left and not temple_fake_instance.right):
				
					if (not temple_fake_instance.down): temple_fake_instance.sprite_index = s_g_temple_up6
					else: temple_fake_instance.sprite_index = s_g_temple_up5
				
				elif (not temple_fake_instance.left):
				   
					if (not temple_fake_instance.down): temple_fake_instance.sprite_index = s_g_temple_up7
					else: temple_fake_instance.sprite_index = s_g_temple_up3
				
				elif (not temple_fake_instance.right):
				   
					if (not temple_fake_instance.down): temple_fake_instance.sprite_index = s_g_temple_up8
					else: temple_fake_instance.sprite_index = s_g_temple_up4
				
				elif (temple_fake_instance.left and temple_fake_instance.right and not temple_fake_instance.down):
				
					temple_fake_instance.sprite_index = s_g_temple_up2
				
			
			elif (not temple_fake_instance.down):
			
				temple_fake_instance.sprite_index = s_g_temple_down
			
		
		
		else:

			if (not temple_fake_instance.up):
			
				temple_fake_instance.sprite_index = s_temple_up
				if (not temple_fake_instance.left and not temple_fake_instance.right):
				
					if (not temple_fake_instance.down): temple_fake_instance.sprite_index = s_temple_up6
					else: temple_fake_instance.sprite_index = s_temple_up5
				
				elif (not temple_fake_instance.left):
				   
					if (not temple_fake_instance.down): temple_fake_instance.sprite_index = s_temple_up7
					else: temple_fake_instance.sprite_index = s_temple_up3
				
				elif (not temple_fake_instance.right):
				   
					if (not temple_fake_instance.down): temple_fake_instance.sprite_index = s_temple_up8
					else: temple_fake_instance.sprite_index = s_temple_up4
				
				elif (temple_fake_instance.left and temple_fake_instance.right and not temple_fake_instance.down):
				
					temple_fake_instance.sprite_index = s_temple_up2
				
			
			elif (not temple_fake_instance.down):
			
				temple_fake_instance.sprite_index = s_temple_down
		


	var all_water = gml.get_all_instances("water")
	for water_instance in all_water:

		if (water_instance.type == "Water"):
		 
			water_instance.up = false
			water_instance.up_water = false
			water_instance.down = false
			water_instance.left = false
			water_instance.right = false

			if (gml.collision_point(water_instance.position.x, water_instance.position.y-16, 'water', 0, 0)):  water_instance.up_water = true
			if (gml.collision_point(water_instance.position.x, water_instance.position.y-16, 'solid', 0, 0)):  water_instance.up = true
			if (gml.collision_point(water_instance.position.x, water_instance.position.y+16, 'solid', 0, 0) and not gml.collision_point(water_instance.position.x, water_instance.position.y+16, water, 0, 0)):  water_instance.down = true

			if (not water_instance.up and not water_instance.up_water):
			
				water_instance.sprite_index = s_water_top
			
			
			if (water_instance.up_water and gml.collision_point(water_instance.position.x, water_instance.position.y-32, 'water', 0, 0) and water_instance.down and randi_range(1,4) == 1):
			
				water_instance.sprite_index = s_water_bottom_tall2
				var water = gml.instance_place(water_instance.position.x, water_instance.position.y-16, 'water', water_instance) #-------- I imagine instance_place will be with a string for the object
				if (water): water.sprite_index = s_water_bottom_tall1
			
			elif ((water_instance.up or water_instance.up_water) and water_instance.down):
			
				var n = randi_range(1,4)
				match (n):
					1:  water_instance.sprite_index = s_water_bottom
					2:  water_instance.sprite_index = s_water_bottom2
					3:  water_instance.sprite_index = s_water_bottom3
					4:  water_instance.sprite_index = s_water_bottom4
			
		
		


	var all_lava = gml.get_all_instances("lava")
	for lava_instance in all_lava:

		lava_instance.up = false
		lava_instance.up_water = false
		lava_instance.down = false
		lava_instance.left = false
		lava_instance.right = false

		if (gml.collision_point(lava_instance.position.x, lava_instance.position.y-16, 'water', 0, 0)):  lava_instance.up_water = true
		if (gml.collision_point(lava_instance.position.x, lava_instance.position.y-16, 'solid', 0, 0)):  lava_instance.up = true
		if (gml.collision_point(lava_instance.position.x, lava_instance.position.y+16, 'solid', 0, 0)):  lava_instance.down = true

		if (not lava_instance.up and not lava_instance.up_water):
		
			lava_instance.sprite_index = s_lava_top
			if (randi_range(1,4) == 1): lava_instance.spurt = true
		
		
		#/*
		#if (up_water and gml.collision_point(x, y-32, water, 0, 0) and down and randi_range(1,4) == 1):
		#
			#sprite_index = s_water_bottom_tall2
			#water = instance_place(x, y-16, water)
			#if (water): water.sprite_index = s_water_bottom_tall1
		#
		#elif ((up or up_water) and down):
		#
			#n = randi_range(1,4)
			#match (n)
			#
			#1:  sprite_index = s_water_bottom
			#2:  sprite_index = s_water_bottom2
			#3:  sprite_index = s_water_bottom3
			#4:  sprite_index = s_water_bottom4
			#
		#
		#*/


	var all_vines = gml.get_all_instances("vine")
	for vine_instance in all_vines:

		vine_instance.up = false
		vine_instance.down = false
		vine_instance.left = false
		vine_instance.right = false

		if (gml.collision_point(vine_instance.position.x+8, vine_instance.position.y-8, 'ladder', 0, 0)):  vine_instance.up = true
		if (gml.collision_point(vine_instance.position.x+8, vine_instance.position.y+16, 'ladder', 0, 0)):  vine_instance.down = true

		if (not vine_instance.up):
		
			vine_instance.sprite_index = s_vine_source
		
		elif (not vine_instance.down):
		
			vine_instance.sprite_index = s_vine_bottom
		


	var all_blocks = gml.get_all_instances("block")
	for block_instance in all_blocks:

		block_instance.down = false

		if (gml.collision_point(block_instance.position.x, block_instance.position.y+16, 'brick', 0, 0) or gml.collision_point(block_instance.position.x, block_instance.position.y+16, 'temple', 0, 0) or gml.collision_point(block_instance.position.x, block_instance.position.y+16, 'hard_block', 0, 0)):  block_instance.down = true

		# don't want push blocks next to lava until we tighten block_instance.up liquid draining
		if (gml.collision_point(block_instance.position.x-16, block_instance.position.y, 'lava', 0, 0) or gml.collision_point(block_instance.position.x+16, block_instance.position.y, 'lava', 0, 0)): block_instance.down = false
		
		if (block_instance.down and randi_range(1,4) == 1):
		
			gml.instance_create(block_instance.position.x, block_instance.position.y, push_block)
			gml.instance_destroy(block_instance)
		


	var all_trees = gml.get_all_instances("tree")
	for tree_instance in all_trees:

		tree_instance.up = false
		tree_instance.down = false
		tree_instance.left = false
		tree_instance.right = false

		if (gml.collision_point(tree_instance.position.x, tree_instance.position.y-16, 'tree', 0, 0)):  tree_instance.up = true
		if (gml.collision_point(tree_instance.position.x, tree_instance.position.y+16, 'tree', 0, 0)):  tree_instance.down = true
		if (gml.collision_point(tree_instance.position.x-16, tree_instance.position.y, 'tree', 0, 0)):  tree_instance.left = true
		if (gml.collision_point(tree_instance.position.x+16, tree_instance.position.y, 'tree', 0, 0)):  tree_instance.right = true
		
		if (not tree_instance.up):
		
			if (global.cemetary): tree_instance.sprite_index = s_tree_top_dead
			else: tree_instance.sprite_index = s_tree_top
			tree_instance.depth = 1
		


	var all_tree_branches = gml.get_all_instances("tree_branch")
	for tree_branch_instance in all_tree_branches:

		tree_branch_instance.up = false
		tree_branch_instance.down = false
		tree_branch_instance.left = false
		tree_branch_instance.right = false

		if (gml.collision_point(tree_branch_instance.position.x, tree_branch_instance.position.y-16, 'leaves', 0, 0)):  tree_branch_instance.up = true
		if (gml.collision_point(tree_branch_instance.position.x, tree_branch_instance.position.y+16, 'tree_branch', 0, 0)):  tree_branch_instance.down = true
		if (gml.collision_point(tree_branch_instance.position.x-16, tree_branch_instance.position.y, 'tree_branch', 0, 0)):  tree_branch_instance.left = true
		if (gml.collision_point(tree_branch_instance.position.x+16, tree_branch_instance.position.y, 'tree', 0, 0)):  tree_branch_instance.right = true
		
		if (tree_branch_instance.up):
		
			tree_branch_instance.instance_destroy()
		
		if (tree_branch_instance.right):
		
			if (global.cemetary): tree_branch_instance.sprite_index = s_tree_branch_dead_l
			else: tree_branch_instance.sprite_index = s_tree_branch_left
	



func scr_check_water_top(x, y, calling_object):
	#
	# scr_check_water_top()
	#
	# recursive function called in scr_init_level() that checks for the surface of a
	# pool of water or lava and sets the sprite accordingly
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

	var obj = gml.instance_place(x-16, y, 'water', calling_object)
	if (gml.instance_exists(obj)):

		if (obj.sprite_index != s_water_top and obj.sprite_index != s_lava_top):
		
			var all_objects = gml.get_all_instances("obj") #--- This needs to be converted to the string name of the actual object
			for object in all_objects:
			
				if (object.type == "Lava"): object.sprite_index = s_lava_top
				else: object.sprite_index = s_water_top
				scr_check_water_top(object.x, object.y, object)
			
		

	obj = gml.instance_place(x+16, y, 'water', calling_object)
	if (gml.instance_exists(obj)):

		if (obj.sprite_index != s_water_top and obj.sprite_index != s_lava_top):
		
			var all_objects = gml.get_all_instances("obj")
			for object in all_objects:
					
				if (object.type == "Lava"): object.sprite_index = s_lava_top
				else: object.sprite_index = s_water_top
				scr_check_water_top(object.x, object.y, object)
