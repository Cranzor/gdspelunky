extends GMObject


func _ready():
	object_setup()


#--- Object functions
@onready var final_score: Node2D = $FinalScoreText
@onready var final_message: Node2D = $FinalMessage
@onready var draw_rectangle: ColorRect = $DrawRectangle


func alarm_0():
	gml.instance_create(144, -32, Objects.p_dummy2, self)
	Audio.play_sound(global.snd_p_fall)

	

func alarm_1():
	draw_status = 2
	alarm_2_countdown.start(50)

	

func alarm_11():
	draw_status = 4
	Audio.play_sound(global.snd_thump)
	global.money += 50000
	money_count += 50000
	alarm_3_countdown.start(50)

	

func alarm_2():
	draw_status = 3

	

func alarm_3():
	draw_status = 5
	alarm_4_countdown.start(10)

	

func alarm_4():
	draw_status = 6
	alarm_5_countdown.start(10)

	

func alarm_5():
	draw_status = 7

	

func create():
	draw_status = 0
	money_count = 0
	fade_out = false
	fade_level = 0

	poop = false

	alarm_0_countdown.start(50)

	var all_menus = gml.get_all_instances("menu")
	for menu_instance in all_menus:

		menu_instance.visible = false


	

func draw():
	if (draw_status > 0):

		gml.draw_set_font(global.my_font)
		gml.draw_set_color(gml.c_yellow)
		final_score.draw_text(64, 32, "YOU MADE IT!")

	if (draw_status > 1):

		gml.draw_set_font(global.my_font_small)
		gml.draw_set_color(gml.c_yellow)
		final_score.draw_text(64, 64, "FINAL SCORE:")

	if (draw_status > 2):

		gml.draw_set_font(global.my_font)
		gml.draw_set_color(gml.c_white)
		final_score.draw_text(64, 72, "$" + str(money_count), "money_count")

	if (draw_status > 4):

		var s = global.time
		s = floor(s / 1000)
		var m = 0
		while (s > 59):
	
			s -= 60
			m += 1
	

		gml.draw_set_font(global.my_font_small)
		gml.draw_set_color(gml.c_yellow)
		final_score.draw_text(64, 96, "TIME: ")
		gml.draw_set_color(gml.c_white)
		if (s < 10): final_score.draw_text(96+24, 96, str(m) + ":0" + str(s), "time_display1")
		else: final_score.draw_text(96+24, 96, str(m) + ":" + str(s), "time_display2")

	if (draw_status > 5):

		gml.draw_set_font(global.my_font_small)
		gml.draw_set_color(gml.c_yellow)
		final_score.draw_text(64, 96+8, "KILLS: ")
		gml.draw_set_color(gml.c_white)
		final_score.draw_text(96+24, 96+8, str(global.kills), "global_kills")

	if (draw_status > 6):

		gml.draw_set_font(global.my_font_small)
		gml.draw_set_color(gml.c_yellow)
		final_score.draw_text(64, 96+16, "SAVES: ")
		gml.draw_set_color(gml.c_white)
		final_score.draw_text(96+24, 96+16, str(global.damsels), "global_damsels")


	if (fade_out):

		gml.draw_set_color(gml.c_black)
		gml.draw_set_alpha(fade_level)
		draw_rectangle.draw_rectangle(0, 0, 320, 240, false)
		gml.draw_set_alpha(1)


	if (draw_status == 8):

		gml.draw_set_font(global.my_font_small)
		gml.draw_set_color(gml.c_white)
		var str_len = gml.string_length("YOU SHALL BE REMEMBERED AS A HERO.")*8
		var n = 320 - str_len
		n = ceil(n / 2)
		final_message.draw_text(n, 116, str("YOU SHALL BE REMEMBERED AS A HERO."))


	

func step():
	if (gml.keyboard_check_pressed(KEY_ENTER) or
		gml.keyboard_check_pressed(KEY_ESCAPE) or
		ControlScripts.check_attack_pressed() or
		ControlScripts.check_start_pressed()):

		if (draw_status == 7):
	
			if (money_count < global.money):
		
				money_count = global.money
		
			else:
		
				fade_out = true
		
	
		elif (draw_status == 8):
	
			if (Gamepad.attack_pressed): Gamepad.attack_pressed = false
			if (Gamepad.start_pressed): Gamepad.start_pressed = false
			gml.room_goto("credits2")
	


	if (draw_status > 2):

		money_diff = global.money - money_count
		if (money_diff > 1000):
			money_count += 1000
		elif (money_diff > 100):
			money_count += 100
		else:
			money_count += money_diff
		
		if (draw_status == 3 and money_diff == 0 and not poop):
	   
			alarm_11_countdown.start(50)
			poop = true
	


	if (fade_out):

		if (fade_level < 1): fade_level += 0.1
		else: draw_status = 8
