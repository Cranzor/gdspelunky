extends GMObject


func _ready():
	object_setup()


#--- Object functions
var draw_loot
var draw_pos_x
var draw_pos_y
var is_loot
var is_kills
var hurryup
var debug_counter
var up_held
var down_held
@onready var draw_text: Node2D = $DrawText


func alarm_0():
	if (draw_loot == 0):

		if (draw_pos_x > 272):
	
			draw_pos_x = 100
			draw_pos_y += 2
			if (draw_pos_y > 83 + 4): draw_pos_y = 83
	

	elif (draw_pos_x > 232):

		draw_pos_x = 96
		draw_pos_y += 2
		if (draw_pos_y > 91 + 4): draw_pos_y = 91


	sprite = gml.instance_create(draw_pos_x, draw_pos_y, Objects.sprite, self)

	if (draw_loot < 0):

		# DY:  nothing
		pass

	elif (global.gold > 0):

		sprite.sprite_index = "gold_chunk"
		global.gold -= 1
		is_loot = true

	elif (global.emeralds > 0):

		sprite.sprite_index = "emerald"
		global.emeralds -= 1
		is_loot = true

	elif (global.sapphires > 0):

		sprite.sprite_index = "sapphire"
		global.sapphires -= 1
		is_loot = true

	elif (global.rubies > 0):

		sprite.sprite_index = "ruby"
		global.rubies -= 1
		is_loot = true

	elif (global.nuggets > 0):

		sprite.sprite_index = "gold_nugget"
		global.nuggets -= 1
		is_loot = true

	elif (global.goldbar > 0):

		sprite.sprite_index = "gold_bar_draw"
		global.goldbar -= 1
		is_loot = true

	elif (global.goldbars > 0):

		sprite.sprite_index = "gold_bars_draw"
		global.goldbars -= 1
		is_loot = true

	elif (global.bigemeralds > 0):

		sprite.sprite_index = "emerald_big"
		global.bigemeralds -= 1
		is_loot = true

	elif (global.bigsapphires > 0):

		sprite.sprite_index = "sapphire_big"
		global.bigsapphires -= 1
		is_loot = true

	elif (global.bigrubies > 0):

		sprite.sprite_index = "ruby_big"
		global.bigrubies -= 1
		is_loot = true

	elif (global.diamonds > 0):

		sprite.sprite_index = "diamond"
		global.diamonds -= 1
		is_loot = true

	elif (global.xdamsels > 0):

		if (global.is_damsel): sprite.sprite_index = "stand_left"
		else: sprite.sprite_index = "damsel_left"
		global.xdamsels -= 1
		is_loot = true

	elif (global.scarabs > 0):

		sprite.sprite_index = "scarab_disp"
		global.scarabs -= 1
		is_loot = true

	elif (global.idols > 0):

		sprite.sprite_index = "gold_idol_ico"
		global.idols -= 1
		is_loot = true

	elif (global.skulls > 0):

		sprite.sprite_index = "crystal_skull_ico"
		global.skulls -= 1
		is_loot = true

	else:

		if (draw_loot == 0):
	
			draw_pos_x = 96
			draw_pos_y = 91
			sprite.position.x = 96
			sprite.position.y = 91
			draw_loot = 1
	
	
		if (global.bats > 0):
	
			sprite.sprite_index = "bat_left"
			global.bats -= 1
			is_kills = true
	
		elif (global.snakes > 0):
	
			sprite.sprite_index = "snake_left"
			global.snakes -= 1
			is_kills = true
	
		elif (global.spiders > 0):
	
			sprite.sprite_index = "spider"
			global.spiders -= 1
			is_kills = true
	
		elif (global.deadfish > 0):
	
			sprite.sprite_index = "dead_fish_left_ico"
			global.deadfish -= 1
			is_kills = true
	
		elif (global.piranhas > 0):
	
			sprite.sprite_index = "piranha_left_ico"
			global.piranhas -= 1
			is_kills = true
	
		elif (global.skeletons > 0):
	
			sprite.sprite_index = "skeleton_left"
			global.skeletons -= 1
			is_kills = true
	
		elif (global.zombies > 0):
	
			sprite.sprite_index = "zombie_left"
			global.zombies -= 1
			is_kills = true
	
		elif (global.vampires > 0):
	
			sprite.sprite_index = "vampire_left"
			global.vampires -= 1
			is_kills = true
	
		elif (global.frogs > 0):
	
			sprite.sprite_index = "frog_left"
			global.frogs -= 1
			is_kills = true
	
		elif (global.firefrogs > 0):
	
			sprite.sprite_index = "fire_frog_left"
			global.firefrogs -= 1
			is_kills = true
	
		elif (global.monkeys > 0):
	
			sprite.sprite_index = "monkey_left"
			global.monkeys -= 1
			is_kills = true
	
		elif (global.mantraps > 0):
	
			sprite.sprite_index = "man_trap_left"
			global.mantraps -= 1
			is_kills = true
	
		elif (global.yetis > 0):
	
			sprite.sprite_index = "yeti_left"
			global.yetis -= 1
			is_kills = true
	
		elif (global.ufos > 0):
	
			sprite.sprite_index = "ufo"
			global.ufos -= 1
			is_kills = true
	
		elif (global.aliens > 0):
	
			sprite.sprite_index = "alien"
			global.aliens -= 1
			is_kills = true
	
		elif (global.alienbosses > 0):
	
			sprite.sprite_index = "alien_boss_disp"
			global.alienbosses -= 1
			is_kills = true
	
		elif (global.cavemen > 0):
	
			sprite.sprite_index = "caveman_left"
			global.cavemen -= 1
			is_kills = true
	
		elif (global.hawkmen > 0):
	
			sprite.sprite_index = "hawk_left"
			global.hawkmen -= 1
			is_kills = true
	
		elif (global.giantspiders > 0):
	
			sprite.sprite_index = "giant_spider_disp"
			global.giantspiders -= 1
			is_kills = true
	
		elif (global.megamouths > 0):
	
			sprite.sprite_index = "mega_mouth"
			global.megamouths -= 1
			is_kills = true
	
		elif (global.yetikings > 0):
	
			sprite.sprite_index = "yeti_king_disp"
			global.yetikings -= 1
			is_kills = true
	
		elif (global.tomblords > 0):
	
			sprite.sprite_index = "tomb_lord_disp"
			global.tomblords -= 1
			is_kills = true
	
		elif (global.damsels_killed > 0):
	
			if (global.is_damsel): sprite.sprite_index = "stand_left_ico"
			else: sprite.sprite_index = "damsel_left_ico"
			global.damsels_killed -= 1
			is_kills = true
	
		elif (global.shopkeepers > 0):
	
			sprite.sprite_index = "shop_left_ico"
			global.shopkeepers -= 1
			is_kills = true
	
		else:
	
			draw_loot = 2
			gml.instance_destroy(sprite)
	


	if (draw_loot < 0):

		# DY:  nothing
		pass

	elif (draw_loot == 0):
		draw_pos_x += 4
	else:
		draw_pos_x += 8

	if (draw_loot == 2):

		# DY:  nothing
		pass

	elif (hurryup): alarm_0_countdown.start(1)
	else: alarm_0_countdown.start(3)


func alarm_1():
	draw_loot += 1

	if (draw_loot < 0):

		if (hurryup): alarm_1_countdown.start(1)
		else: alarm_1_countdown.start(30)


func create():
	debug_counter = 0

	global.message = ""
	global.message2 = ""

	draw_pos_x = 100
	draw_pos_y = 83
	draw_loot = -2
	money_count = 0
	hurryup = false

	is_loot = false
	is_kills = false

	if (global.has_cape):

		gml.instance_create(0, 0, Objects.cape, self)


	if (global.curr_level-1 < 1):

		MiscScripts.scr_clear_globals()
		global.first_time = false


	if (global.kali_punish >= 2):
		var p_dummy = gml.get_instance("p_dummy")
		gml.instance_create(p_dummy.position.x, p_dummy.position.y+2, Objects.ball2, self)
		var obj = gml.instance_create(p_dummy.position.x, p_dummy.position.y, Objects.chain2, self)
		obj.link_val = 1
		obj = gml.instance_create(p_dummy.position.x, p_dummy.position.y, Objects.chain2, self)
		obj.link_val = 2
		obj = gml.instance_create(p_dummy.position.x, p_dummy.position.y, Objects.chain2, self)
		obj.link_val = 3
		obj = gml.instance_create(p_dummy.position.x, p_dummy.position.y, Objects.chain2, self)
		obj.link_val = 4


	alarm_0_countdown.start(10)
	alarm_1_countdown.start(30)

	if (global.xdamsels > 0):

		gml.instance_create(176+8, 176+8, Objects.damsel_kiss, self)


	if (global.tunnel1 > 0 and global.tunnel2 > 0 and InLevel.is_room("transition1x")):

		if (global.tunnel1 > global.tunnel1_max): global.tunnel1 -= 1
		else: gml.instance_create(96+8, 176+8, Objects.tunnel_man, self)

	elif (global.tunnel1 == 0 and global.tunnel2 > 0 and InLevel.is_room("transition2x")):

		if (global.tunnel2 > global.tunnel2_max): global.tunnel2 -= 1
		else: gml.instance_create(96+8, 176+8, Objects.tunnel_man, self)

	elif (global.tunnel1 > 0 and global.tunnel2 == 0 and InLevel.is_room("transition3x")):

		if (global.tunnel1 > global.tunnel3_max): global.tunnel1 -= 1
		else: gml.instance_create(96+8, 176+8, Objects.tunnel_man, self)


	up_held = 0
	down_held = 0

	Audio.stop_all_music()


func draw():
	gml.draw_set_font(global.my_font_small)
	gml.draw_set_color(gml.c_white)
	var str_len
	var n
	if (gml.instance_exists("tunnel_man")):

		var person = gml.instance_nearest(176, 176, "tunnel_man")
		if (person.talk == 1):
	
			str_len = gml.string_length("HEY THERE! I'M THE TUNNEL MAN!")*8
			n = 320 - str_len
			n = ceil(n / 2)
			draw_text.draw_text(n, 208, "HEY THERE! I'M THE TUNNEL MAN!")
			str_len = gml.string_length("I DIG SHORTCUTS.")*8
			n = 320 - str_len
			n = ceil(n / 2)
			draw_text.draw_text(n, 216, "I DIG SHORTCUTS.")
	
		elif (person.talk == 2):
	
			str_len = gml.string_length("CAN YOU LEND ME A LITTLE MONEY?")*8
			n = 320 - str_len
			n = ceil(n / 2)
			draw_text.draw_text(n, 208, "CAN YOU LEND ME A LITTLE MONEY?")
			if (InLevel.is_room("transition1x") or InLevel.is_room("transition3x")): str_len = gml.string_length("I NEED $" + str(global.tunnel1) + " FOR A NEW SHORTCUT.")*8
			else: str_len = gml.string_length("I NEED $" + str(global.tunnel2) + " FOR A NEW SHORTCUT.")*8
			n = 320 - str_len
			n = ceil(n / 2)
			if (InLevel.is_room("transition1x") or InLevel.is_room("transition3x")): draw_text.draw_text(n, 216, "I NEED $" + str(global.tunnel1) + " FOR A NEW SHORTCUT.", "need_money")
			else: draw_text.draw_text(n, 216, "I NEED $" + str(global.tunnel2) + " FOR A NEW SHORTCUT.", "need_money2")
			gml.draw_set_color(gml.c_yellow)
			var tunnel_man = gml.get_instance("tunnel_man")
			draw_text.draw_text(n, 224, "DONATE: " + str(tunnel_man.donate), "donate")
			gml.draw_set_color(gml.c_white)
	
		elif (person.talk == 3):
	
			str_len = gml.string_length("THANKS! YOU WON'T REGRET IT!")*8
			n = 320 - str_len
			n = ceil(n / 2)
			draw_text.draw_text(n, 216, "THANKS! YOU WON'T REGRET IT!")
	
		elif (person.talk == 4):
	
			str_len = gml.string_length("I'LL NEVER GET THIS SHORTCUT BUILT!")*8
			n = 320 - str_len
			n = ceil(n / 2)
			draw_text.draw_text(n, 216, "I'LL NEVER GET THIS SHORTCUT BUILT!")
	
		elif (person.talk == 5):
	
			str_len = gml.string_length("ONE SHORTCUT, COMING UP!")*8
			n = 320 - str_len
			n = ceil(n / 2)
			draw_text.draw_text(n, 216, "ONE SHORTCUT, COMING UP!")
	

	elif (gml.instance_exists("damsel_kiss")):

		var person = gml.instance_nearest(176, 176, "damsel_kiss")
		if (person.kissed):
	
			str_len = gml.string_length("MY HERO!")*8
			n = 320 - str_len
			n = ceil(n / 2)
			draw_text.draw_text(n, 216, "MY HERO!")
	

	#/* debug
	#else:
#
		#draw_text.draw_text(8, 208, str(debug_counter))
		#if (global.gen_black_market): draw_text.draw_text(8, 216, "MARKET : " + str(draw_loot) + " :$ " + str(money_count) + " :$ " + str(global.xmoney) + " :A " + str(alarm[0]) + " :A " + str(alarm[1]))
#
	#*/

	gml.draw_set_color(gml.c_yellow)
	if (global.custom_level): draw_text.draw_text(32, 48, global.custom_level_name + " COMPLETED!", "completed")
	elif (global.curr_level-1 < 1): draw_text.draw_text(32, 48, "TUTORIAL CAVE COMPLETED!")
	else: draw_text.draw_text(32, 48, "LEVEL " + str(global.curr_level-1) + " COMPLETED!", "level_completed")
	gml.draw_set_color(gml.c_white)
	draw_text.draw_text(32, 64, "TIME  = ")
	draw_text.draw_text(32, 80, "LOOT  = ")
	draw_text.draw_text(32, 96, "KILLS = ")
	draw_text.draw_text(32, 112, "MONEY = ")

	if (draw_loot >= 1 and not is_loot):

		draw_text.draw_text(96, 80, "NONE", "none")


	if (draw_loot > -2):

		var s = global.xtime
		s = floor(s / 1000)
		var m = 0
		while (s > 59):
	
			s -= 60
			m += 1
	
	
		# DY:  don't create a dark level if player is attempting a speed run:
		if (s <= 20): global.no_dark_level = true
		else: global.no_dark_level = false
	
		var s2 = global.time
		s2 = floor(s2 / 1000)
		var m2 = 0
		while (s2 > 59):
	
			s2 -= 60
			m2 += 1
	
	
		if (s < 10 and s2 < 10): draw_text.draw_text(96, 64, str(m) + ":0" + str(s) + " / " + str(m2) + ":0" + str(s2), "time_display")
		elif (s < 10): draw_text.draw_text(96, 64, str(m) + ":0" + str(s) + " / " + str(m2) + ":" + str(s2), "time_display2")
		elif (s2 < 10): draw_text.draw_text(96, 64, str(m) + ":" + str(s) + " / " + str(m2) + ":0" + str(s2), "time_display3")
		else: draw_text.draw_text(96, 64, str(m) + ":" + str(s) + " / " + str(m2) + ":" + str(s2), "time_display4")


	if (draw_loot == 2):

		if (not is_kills):
	
			draw_text.draw_text(96, 96, "NONE", "none2")
	
		draw_text.draw_text(96, 112, "$" + str(money_count) + " / $" + str(global.money), "money_count")


func step():
	if ControlScripts.check_attack_pressed() or ControlScripts.check_start_pressed():

		var n = 0

		if (gml.instance_exists("tunnel_man")):
	
			var person = gml.instance_nearest(100, 100, "tunnel_man")
			if (person.talk < 3): n = 1
	

		if (draw_loot == 2 and money_count == global.xmoney and n == 0):
	
			if (Gamepad.attack_pressed): Gamepad.attack_pressed = false
			if (Gamepad.start_pressed): Gamepad.start_pressed = false
			if (alarm_0_countdown.frames_to_count_down > 1): alarm_0_countdown.start(1)
			if (alarm_1_countdown.frames_to_count_down > 1): alarm_1_countdown.start(1)
			global.game_start = true
			global.lake = false
			if (global.custom_level): gml.room_goto("load_level")
			elif (global.curr_level >= 5 and global.curr_level <= 8 and not global.gen_black_market):
		
				if (gml.rand(1,global.prob_lake) == 1):
					global.lake = true
					gml.room_goto("level3")
				else: gml.room_goto("level")
		
			elif (global.curr_level >= 9 and global.curr_level <= 12): gml.room_goto("level2")
			elif (global.curr_level == 16): gml.room_goto("olmec")
			else: gml.room_goto("level")
	
		else:
	
			hurryup = true
	


	if (ControlScripts.check_up_pressed()):

		if (gml.instance_exists("tunnel_man")):
	
			var person = gml.instance_nearest(100, 100, "tunnel_man")
			person.donate += 100
			if (InLevel.is_room("transition1x") or InLevel.is_room("transition3x")):
		
				if (global.money > global.tunnel1):
			
					if (person.donate > global.tunnel1): person.donate = global.tunnel1
			
				elif (person.donate > global.money): person.donate = global.money
		
			else:
		
				if (global.money > global.tunnel2):
			
					if (person.donate > global.tunnel2): person.donate = global.tunnel2
			
				elif (person.donate > global.money): person.donate = global.money
		
	

	elif (ControlScripts.check_down_pressed()):

		if (gml.instance_exists("tunnel_man")):
	
			var person = gml.instance_nearest(100, 100, "tunnel_man")
			person.donate -= 100
			if (person.donate < 0): person.donate = 0
	


	if (draw_loot == 2):

		if (money_count < global.xmoney):
	
			if (hurryup): money_count = global.xmoney
			else:
		
				money_diff = global.xmoney - money_count
				if (money_diff > 100):
					money_count += 100
				else:
					money_count += money_diff
		
	


	debug_counter += 1
