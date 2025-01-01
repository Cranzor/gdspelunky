extends Node2D

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

#---------------------------------------------
func _process(delta): # reload for testing. currently not working correctly
	if Input.is_action_just_pressed("reroll"):
		get_tree().reload_current_scene()
#--------------------------------------------------


func _ready(): # For testing
	#var bg_kali_body = "bg_kali_body"
	#gml.tile_add(bg_kali_body, 0, 0, 64, 64, 64, 64, 10001)
	
	#LevelGeneration.scr_shop_items_gen(20, 20, "Bomb")
	LevelGeneration.scr_level_gen()
	room_gen()

@onready var block = preload("res://test_scenes/test_block.tscn")
@onready var brick = preload("res://test_scenes/brick.tscn")
@onready var solid
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

func room_gen():
	randomize()
	var str_temp = "00000000000000000000000000000000000000000000000000000000000000000000000000000000"
	
	
	var room_path = global.room_path[[LevelGeneration.scr_get_room_x(position.x), LevelGeneration.scr_get_room_y(position.y)]]
	var room_path_above = -1
	var shop_type = "General"
	var n
	var altar
	var idol
	var damsel
	
	if (LevelGeneration.scr_get_room_y(position.y) != 0): room_path_above = global.room_path[[LevelGeneration.scr_get_room_x(position.x), LevelGeneration.scr_get_room_y(position.y-128)]]

	if (LevelGeneration.scr_get_room_x(position.x) == global.start_room_x and LevelGeneration.scr_get_room_y(position.y) == global.start_room_y): # start room
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
		

	elif (LevelGeneration.scr_get_room_x(position.x) == global.end_room_x and LevelGeneration.scr_get_room_y(position.y) == global.end_room_y): # end room
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
		
		elif (idol or LevelGeneration.scr_get_room_y(position.y) == 3):
		
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
			var xpos = position.x + (i-1)*16
			var ypos = position.y + j*16
			#--------------------------------------------------------------------------------------
			if (tile == "1" and not gml.collision_point(xpos, ypos, "solid", 0, 0)): #arguments were originally (xpos, ypos, solid, 0, 0). almost every other time seems to use 0 or -1 instead of "solid" #---[FLAG] double check this because I don't know why I originally changed this
			
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
				if (LevelGeneration.scr_get_room_x(position.x) == global.start_room_x and LevelGeneration.scr_get_room_y(position.y) == global.start_room_y):
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
