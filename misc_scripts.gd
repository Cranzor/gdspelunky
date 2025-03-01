extends Node

func scr_clear_globals():
	 ##
	## scr_clear_globals()
	##
	## Clear global variables.  Called once at start of run.
	## See: player1:Animation End
	##
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

	global.title_start = 0
	global.ghost_exists = false

	global.game_start = false
	global.entity_gen = false

	global.draw_hud = false

	global.collect = 0
	global.collect_counter = 0

	global.shake = 0
	global.shake_toggle = false
	global.yview_prev = 0
	global.xview = 0
	global.yview = 0

	global.check_water = false
	global.water_counter = 0

	global.pickup_item = ""

	global.craps_point = 0

	global.blood_level = 0

	global.no_dark_level = true

	# probabilities
	global.prob_dark_level = 12 # 12
	global.prob_snake_pit = 8   # 8
	global.prob_cemetary = 10  # 10
	global.prob_lake = 10      # 10
	global.prob_yeti_lair = 6   # 6
	global.prob_alien = 10     # 10
	global.prob_sac_pit = 8     # 8

	# player
	global.thief_level = 0
	global.murderer = false
	global.favor = 0
	global.kali_gift = 0
	global.kali_punish = 0

	global.made_udjat_eye = false
	global.gen_udjat_eye = false
	global.made_market_entrance = false
	global.gen_market_entrance = false
	global.market_chance = 160
	global.market_entrance = false
	global.made_black_market = false
	global.gen_black_market = false
	global.made_moai = false
	global.made_gold_entrance = false
	global.gen_gold_entrance = false
	global.gold_chance = 160
	global.gold_entrance = false
	global.city_of_gold = false

	global.has_udjat_eye = false
	global.has_ankh = false
	global.has_crown = false
	global.has_kapala = false
	global.has_sticky_bombs = false
	global.has_spectacles = false
	global.has_compass = false
	global.has_parachute = false
	global.has_spring_shoes = false
	global.has_spike_shoes = false
	global.has_jordans = false
	global.has_ninja_suit = false
	global.has_cape = false
	global.has_jetpack = false
	global.has_gloves = false
	global.has_mitt = false
	global.exit_x = 0
	global.exit_y = 0

	if (global.is_tunnel_man):

		global.plife = 2
		global.bombs = 0
		global.rope = 0

	else:

		global.plife = 4
		global.bombs = 4
		global.rope = 4

	global.flares = 3 # not used any more
	global.arrows = 0

	global.money = 0
	global.time = 0
	global.kills = 0
	global.damsels = 0

	global.gold = 0
	global.goldbar = 0
	global.goldbars = 0
	global.nuggets = 0
	global.rubies = 0
	global.bigrubies = 0
	global.sapphires = 0
	global.bigsapphires = 0
	global.emeralds = 0
	global.bigemeralds = 0
	global.diamonds = 0
	global.scarabs = 0
	global.idols = 0
	global.skulls = 0
	global.xdamsels = 0
	global.xmoney = 0
	global.xtime = 0

	global.bats = 0
	global.snakes = 0
	global.spiders = 0
	global.skeletons = 0
	global.frogs = 0
	global.firefrogs = 0
	global.piranhas = 0
	global.mantraps = 0
	global.yetis = 0
	global.aliens = 0
	global.ufos = 0
	global.cavemen = 0
	global.hawkmen = 0
	global.monkeys = 0
	global.zombies = 0
	global.vampires = 0
	global.deadfish = 0
	global.alienbosses = 0
	global.giantspiders = 0
	global.yetikings = 0
	global.megamouths = 0
	global.tomblords = 0
	global.shopkeepers = 0
	global.damsels_killed = 0

	# cave
	global.curr_level = 1
	global.level_type = 0

func scr_create_flame(x, y, num):
	pass

func scr_create_blood(x, y, num, object):
	# DY: 
	# DY:  MiscScripts.scr_create_blood(position.x, position.y, num)
	# DY: 
	# DY:  Create blood.
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

	if (object.bloodless): return 0

	for repetition in num:

		if (gml.instance_number("detritus") < 16):
		
			gml.instance_create(x, y, Objects.blood)
		



func scr_update_highscores(type):
	pass

func scr_reset_highscores():
	pass

func scr_get_joy(key):
	var returned_key = GlobalInput.get_gamepad_button_from_action(key)
	return returned_key
	
func scr_get_key(key):
	var returned_key = GlobalInput.get_keyboard_key_from_action(key)
	return returned_key

func scr_init(): #--- add the rest of this script later
	global.graphics_high = true
	global.music_vol = 15 #--- adding this temporarily

func scr_draw_hud():
	#
	# scr_draw_hud()
	#
	# Draw the HUD.  This is called in the Draw Event of game.
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
	
	if (global.draw_hud and gml.instance_exists("player1")):

		var life_x = 8
		var bomb_x = 64
		var rope_x = 120
		var money_x = 176
		gml.draw_set_font(global.my_font)
		gml.draw_set_color(gml.c_white)
		gml.draw_sprite("heart", -1, life_x, 8, Screen.sprites_holder)
		var life = global.plife
		if (life < 0): life = 0
		gml.draw_text(life_x+16, 8, str(life), "life", Screen.sprites_holder)
		if (global.has_sticky_bombs): gml.draw_sprite("sticky_bomb_icon", -1, bomb_x, 8, Screen.sprites_holder)
		else: gml.draw_sprite("bomb_icon", -1, bomb_x, 8, Screen.sprites_holder)
		gml.draw_text(bomb_x+16, 8, str(global.bombs), "global_bombs", Screen.sprites_holder)
		gml.draw_sprite("rope_icon", -1, rope_x, 8, Screen.sprites_holder)
		gml.draw_text(rope_x+16, 8, str(global.rope), "global_rope", Screen.sprites_holder)
		gml.draw_sprite("dollar_sign", -1, money_x, 8, Screen.sprites_holder)
		gml.draw_text(money_x+16, 8, str(global.money), "global_money", Screen.sprites_holder)

		if (InLevel.is_room("olmec")):
			global.exit_x = 640
			global.exit_y = 544
		
		if (global.has_compass):
		
			if (global.exit_y > gml.view_yview + 240):
			
				if (global.exit_x < gml.view_xview):
				
					if (global.message_timer > 0): gml.draw_sprite("compass_small_ll", -1, 0, 224, Screen.sprites_holder)
					else: gml.draw_sprite("compass_ll", -1, 0, 224, Screen.sprites_holder)
				
				elif (global.exit_x > gml.view_xview+320-16):
				
					if (global.message_timer > 0): gml.draw_sprite("compass_small_lr", -1, 304, 224, Screen.sprites_holder)
					else: gml.draw_sprite("compass_lr", -1, 304, 224, Screen.sprites_holder)
				
				else:
				
					if (global.message_timer > 0): gml.draw_sprite("compass_small_down", -1, global.exit_x-gml.view_xview, 224, Screen.sprites_holder)
					else: gml.draw_sprite("compass_down", -1, global.exit_x-gml.view_xview, 224, Screen.sprites_holder)
				
			
			elif (global.exit_x < gml.view_xview):
			
				if (global.message_timer > 0): gml.draw_sprite("compass_small_left", -1, 0, global.exit_y-gml.view_yview, Screen.sprites_holder)
				else: gml.draw_sprite("compass_left", -1, 0, global.exit_y-gml.view_yview, Screen.sprites_holder)
			
			elif (global.exit_x > gml.view_xview+320-16):
			
				if (global.message_timer > 0): gml.draw_sprite("compass_small_right", -1, 304, global.exit_y-gml.view_yview, Screen.sprites_holder)
				else: gml.draw_sprite("compass_right", -1, 304, global.exit_y-gml.view_yview, Screen.sprites_holder)
			
		
		
		gml.draw_sprite("hold_item_icon", -1, 8, 24, Screen.sprites_holder)
		var player1 = gml.get_instance("player1") #---[FLAG] may have to change this for multiplayer
		if (player1.pickup_item_type!= ""):
		
			if (player1.pickup_item_type== "rock"): gml.draw_sprite("rock", -1, 8+8, 24+8, Screen.sprites_holder)
			elif (player1.pickup_item_type== "jar"): gml.draw_sprite("jar", -1, 8+8, 24+8, Screen.sprites_holder)
			elif (player1.pickup_item_type== "skull"): gml.draw_sprite("skull", -1, 8+8, 24+8, Screen.sprites_holder)
			elif (player1.pickup_item_type== "fish bone"): gml.draw_sprite("fish_bone", -1, 8+8, 24+8, Screen.sprites_holder)
			elif (player1.pickup_item_type== "arrow"): gml.draw_sprite("arrow_right", -1, 8+8, 24+8, Screen.sprites_holder)
			elif (player1.pickup_item_type== "machete"): gml.draw_sprite("machete_right", -1, 8+8, 24+8, Screen.sprites_holder)
			elif (player1.pickup_item_type== "mattock"): gml.draw_sprite("mattock_right", -1, 8+8, 24+8, Screen.sprites_holder)
			elif (player1.pickup_item_type== "mattock head"): gml.draw_sprite("mattock_head", -1, 8+8, 24+8, Screen.sprites_holder)
			elif (player1.pickup_item_type== "pistol"): gml.draw_sprite("pistol_right", -1, 8+8, 24+8, Screen.sprites_holder)
			elif (player1.pickup_item_type== "web cannon"): gml.draw_sprite("web_cannon_r", -1, 8+8, 24+8, Screen.sprites_holder)
			elif (player1.pickup_item_type== "teleporter"): gml.draw_sprite("teleporter", -1, 8+8, 24+8, Screen.sprites_holder)
			elif (player1.pickup_item_type== "shotgun"): gml.draw_sprite("shotgun_right", -1, 8+8, 24+8, Screen.sprites_holder)
			elif (player1.pickup_item_type== "bow"): gml.draw_sprite("bow_disp", -1, 8+8, 24+8, Screen.sprites_holder)
			elif (player1.pickup_item_type== "sceptre"): gml.draw_sprite("sceptre_right", -1, 8+8, 24+8, Screen.sprites_holder)
			elif (player1.pickup_item_type== "flare"): gml.draw_sprite("flare", -1, 8+8, 24+8, Screen.sprites_holder)
			elif (player1.pickup_item_type== "key"): gml.draw_sprite("key_right", -1, 8+8, 24+8, Screen.sprites_holder)
		
		
		var n = 28
		if (global.has_udjat_eye):
		
			if (global.udjat_blink): gml.draw_sprite("udjat_eye_icon2", -1, n, 24, Screen.sprites_holder)
			else: gml.draw_sprite("udjat_eye_icon", -1, n, 24, Screen.sprites_holder)
			n += 20
		
		if (global.has_ankh):
		
			gml.draw_sprite("ankh_icon", -1, n, 24, Screen.sprites_holder)
			n += 20
		
		if (global.has_crown):
		
			gml.draw_sprite("crown_icon", -1, n, 24, Screen.sprites_holder)
			n += 20
		
		if (global.has_kapala):
		
			if (global.blood_level == 0): gml.draw_sprite("kapala_icon", 0, n, 24, Screen.sprites_holder)
			elif (global.blood_level <= 2): gml.draw_sprite("kapala_icon", 1, n, 24, Screen.sprites_holder)
			elif (global.blood_level <= 4): gml.draw_sprite("kapala_icon", 2, n, 24, Screen.sprites_holder)
			elif (global.blood_level <= 6): gml.draw_sprite("kapala_icon", 3, n, 24, Screen.sprites_holder)
			elif (global.blood_level <= 8): gml.draw_sprite("kapala_icon", 4, n, 24, Screen.sprites_holder)
			n += 20
		
		if (global.has_spectacles):
		
			gml.draw_sprite("spectacles_icon", -1, n, 24, Screen.sprites_holder)
			n += 20
		
		if (global.has_gloves):
		
			gml.draw_sprite("gloves_icon", -1, n, 24, Screen.sprites_holder)
			n += 20
		
		if (global.has_mitt):
		
			gml.draw_sprite("mitt_icon", -1, n, 24, Screen.sprites_holder)
			n += 20
		
		if (global.has_spring_shoes):
		
			gml.draw_sprite("spring_shoes_icon", -1, n, 24, Screen.sprites_holder)
			n += 20
		
		if (global.has_spike_shoes):
		
			gml.draw_sprite("spike_shoes_icon", -1, n, 24, Screen.sprites_holder)
			n += 20
		
		if (global.has_cape):
		
			gml.draw_sprite("cape_icon", -1, n, 24, Screen.sprites_holder)
			n += 20
		
		if (global.has_jetpack):
		
			gml.draw_sprite("jetpack_icon", -1, n, 24, Screen.sprites_holder)
			n += 20
		
		if (global.has_compass):
		
			gml.draw_sprite("compass_icon", -1, n, 24, Screen.sprites_holder)
			n += 20
		
		if (global.has_parachute):
		
			gml.draw_sprite("parachute_icon", -1, n, 24, Screen.sprites_holder)
			n += 20
		
		if (player1.pickup_item_type == "bow"):
		
			var m = global.arrows
			while (m > 0):
			
				gml.draw_sprite("arrow_icon", -1, n, 24, Screen.sprites_holder)
				n += 4
				m -= 1
			
		
		 
		gml.draw_set_font(global.my_font_small)
		gml.draw_set_color(gml.c_yellow)
		if (global.collect > 0): gml.draw_text(money_x, 8+16, "+" + str(global.collect), "global_collect", Screen.sprites_holder)


func scr_check_collisions():
	pass

func scr_get_favor_msg():
	pass
