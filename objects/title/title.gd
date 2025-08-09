extends GMObject


func _ready():
	object_setup()


func _physics_process(_delta):
	object_tick()


func _process(delta):
	object_process(delta)

#--- Object functions
var darkness
var need_dark
var state
@onready var draw_text: Node2D = $DrawText


func _input(event):
	if gml.keyboard_check_pressed(KEY_F2):
		key_f2_pressed()
	
	if gml.keyboard_check_pressed(KEY_F3):
		key_f3_pressed()

func create():
	global.lake = false
	global.cemetary = false

	global.keep_score = true
	darkness = 0
	need_dark = true
	state = 0
	global.scores_start = 0
	fade_out = false

	global.custom_level = false
	global.test_level = ""
	global.prev_custom_level = ""

	gml.view_xview = 320

	global.new_money = false
	global.new_kills = false
	global.new_saves = false
	global.new_time = false

	t_money = gml.highscore_value(1) - 9000000
	t_time = gml.highscore_value(2) - 8000000
	t_kills = gml.highscore_value(3) - 7000000
	t_saves = gml.highscore_value(4) - 6000000

	# Tunnel Man
	if (global.tunnel1 == 0 or (global.tunnel1 > 0 and global.tunnel2 == 0)):

		gml.instance_create(352, 96, Objects.ladder_orange)
		gml.instance_create(352, 96+16, Objects.ladder_top)
		gml.instance_create(352, 96+32, Objects.ladder_orange)
		gml.instance_create(352, 96+48, Objects.ladder_orange)
		gml.instance_create(352, 96+64, Objects.ladder_orange)
		gml.instance_create(352, 96+80, Objects.ladder_orange)
		
		if (global.tunnel2 == 0):
		
			gml.instance_create(128, 112, Objects.level9_sign)
			gml.instance_create(144, 128, Objects.x_shortcut9)
			if (global.tunnel1 == 0):
			
				gml.instance_create(192, 112, Objects.level13_sign)
				gml.instance_create(208, 128, Objects.x_shortcut13)
			
		 

	else:

		gml.instance_create(320, 96, Objects.brick)
		gml.instance_create(336, 96, Objects.brick)


	if (t_money >= 200000 && t_time > 0 && t_time <= 600 && t_kills >= 120 && t_saves >= 8):

		gml.instance_create(32, 112, Objects.multi_trophy)
		gml.instance_create(32, 128, Objects.x_change2)

	else:

		gml.instance_create(32+8, 128+8, Objects.tunnel_man)


	if (global.title_start == 0):

		darkness = 1
		alarm_0_countdown.start(50)
		Screen.can_pause = false
		#gml.instance_create(280, -32, "p_dummy4")
		#gml.instance_create(280, 32, "flare")

	elif (global.title_start == 1): # start at highscore door

		var player = gml.instance_create(432+8, 184, Objects.player1)
		player.facing = 19
		gml.instance_create(320+280, 188, Objects.flare)
		Screen.can_pause = true
		Audio.play_music(global.mus_title, true)
		if (global.first_time): gml.instance_create(384, 144, Objects.hint_hand)

	elif (global.title_start == 2): # start at rope

		var player = gml.instance_create(320+280, 184, Objects.player1)
		player.facing = 18
		gml.instance_create(320+280, 188, Objects.flare)
		Screen.can_pause = true
		Audio.play_music(global.mus_title, true)
		if (global.first_time): gml.instance_create(384, 144, Objects.hint_hand)

	elif (global.title_start == 3): # start at tutorial door

		var player = gml.instance_create(336+8, 184, Objects.player1)
		player.facing = 19
		gml.instance_create(320+280, 188, Objects.flare)
		Screen.can_pause = true
		Audio.play_music(global.mus_title, true)
		if (global.first_time): gml.instance_create(384, 144, Objects.hint_hand)


	if (global.first_time):

		gml.instance_create(320, 160, Objects.brick)
		gml.instance_create(336, 160, Objects.brick)
		gml.instance_create(336, 176, Objects.brick)

func step():
	if (gml.keyboard_check_pressed(KEY_ENTER) or
		gml.keyboard_check_pressed(KEY_ESCAPE) or
		ControlScripts.check_attack_pressed() or
		ControlScripts.check_start_pressed()):

		#if (gml.instance_exists("screen")):
		if true: #--- the screen object is an autoload, so there is never a time it won't exist
		
			if (not Screen.can_pause):
			
				if (Gamepad.attack_pressed): Gamepad.attack_pressed = false
				if (Gamepad.start_pressed): Gamepad.start_pressed = false
				global.title_start = 2
				gml.room_restart()
			
		
		else:
		
			if (Gamepad.attack_pressed): Gamepad.attack_pressed = false
			if (Gamepad.start_pressed): Gamepad.start_pressed = false
			global.title_start = 2
			gml.room_restart()
		


	if (gml.instance_exists("player1")):
		var player1 = gml.get_instance("player1") #---[FLAG] may have to change for multiplayer
		if (player1.position.x <= 320 and gml.view("xview") > 0):
		
			gml.view_xview -= 8
		
		if (player1.position.x > 320 and gml.view("xview") < 320):
		
			gml.view_xview += 8


	if (fade_out):

		if (darkness < 1): darkness += 0.1
		else:
		
			gml.room_goto("credits1")

func draw():
	if (gml.instance_exists("flare") and need_dark):
		var flare = gml.get_instance("flare")
		var dist = 160 - flare.position.y
		if (dist < 0): dist = 0
		darkness = dist / 160
		if (darkness == 0): need_dark = false


	#draw_set_alpha(1) ---[FLAG] probably not needed

	#/*
	#draw_set_font(global.my_font_small)
	#draw_set_color(c_yellow)
	#draw_text(320+96, 96, "V1.1 (C)2009")
	#*/

	if (gml.instance_exists("player1")):

		var player = gml.instance_nearest(0, 0, "player1")
		if (player.position.x < 256 and gml.view("xview") <= 1):
		
			gml.draw_set_font(global.my_font_small)
			gml.draw_set_color(gml.c_white)
			var str_len = gml.string_length("WELCOME TO THE SHORTCUT HOUSE!")*8
			var n = 320 - str_len
			n = ceil(n / 2)
			draw_text.draw_text(n, 224, str("WELCOME TO THE SHORTCUT HOUSE!"))


func key_f2_pressed():
	Audio.stop_all_music()
	global.test_level = ""
	gml.room_goto("level_editor")

func key_f3_pressed():
	Audio.stop_all_music()
	global.tofu = true
	global.curr_level = 1
	global.game_start = true
	global.custom_level = false
	global.first_custom_level = ""
	global.test_level = ""
	gml.room_goto("load_level")

func alarm_0():
	state = 1
	alarm_1_countdown.start(100)

func alarm_1():
	state = 2
	alarm_2_countdown.start(70)

func alarm_2():
	state = 3
	gml.instance_create(320+280, -8, Objects.flare)
	Audio.play_sound(global.snd_ignite)
	alarm_3_countdown.start(50)

func alarm_3():
	gml.instance_create(320+280, -32, Objects.p_dummy4)
	Screen.can_pause = true
	Audio.play_sound(global.mus_title) #--- don't see why the "true" here is needed
