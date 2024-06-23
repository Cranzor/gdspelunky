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
		#If not, please obtain a new copy of Spelunky from <http:#spelunkyworld.com/>
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

func scr_create_blood(x, y, num):
	pass

func scr_update_highscores(type):
	pass

func scr_reset_highscores():
	pass

func scr_get_joy(key):
	pass
	
func scr_get_key(key):
	pass

func scr_init(): #--- add the rest of this script later
	global.graphics_high = true

func scr_draw_hud():
	pass
