extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


func alarm_0():
	gml.instance_create(320, 144, Objects.camel)

	

func alarm_1():
	if (scrolling):

		if (gml.rand(1,8) == 1): gml.instance_create(-16, 176, Objects.shrub_scroll)
		elif (gml.rand(1,12) == 1): gml.instance_create(-32, 176-112, Objects.palm_tree_scroll)

		gml.instance_create(-16, 176, Objects.desert_top_scroll)
		gml.instance_create(-16, 192, Objects.desert_scroll2)
		gml.instance_create(-16, 208, Objects.desert_scroll)
		gml.instance_create(-16, 224, Objects.desert_scroll)
		with desert_scroll  scroll = true
		with desert_scroll2  scroll = true
		with desert_top_scroll  scroll = true
		with shrub_scroll  scroll = true
		with palm_tree_scroll  scroll = true
		alarm_1_countdown.start(16)


	

func alarm_11():
	draw_status = 0

	

func alarm_2():
	draw_status = 1
	alarm_11(140)
	alarm_3_countdown.start(180)

	

func alarm_3():
	draw_status = 2
	alarm_11(140)
	alarm_4_countdown.start(180)

	

func alarm_4():
	draw_status = 3
	alarm_11(140)
	alarm_5_countdown.start(180)

	

func alarm_5():
	draw_status = 4
	alarm_11(140)
	alarm_6_countdown.start(180)

	

func alarm_6():
	draw_status = 5
	alarm_11(240)
	alarm_7_countdown.start(280)

	

func alarm_7():
	draw_status = 6
	alarm_11(240)
	alarm_8_countdown.start(280)

	

func alarm_8():
	scrolling = false
	with desert_scroll  scroll = false
	with desert_scroll2  scroll = false
	with desert_top_scroll  scroll = false
	with palm_tree_scroll  scroll = false
	with shrub_scroll  scroll = false
	camel.status = 2

	

func create():
	fade_in = true
	fade_out = false
	fade_level = 1

	gml.instance_create(-120, 112, Objects.intrbg)
	# DY:  alarm_0_countdown.start(20)

	draw_status = 0
	scroll_start = false
	scrolling = false
	screen.can_pause = false

	Audio.stop_all_music()


	

func draw():
	if (draw_status == 1):

		gml.draw_set_font(global.my_font)
		gml.draw_set_color(gml.c_yellow)
		gml.draw_text(16, 16, "SPELUNKY")

	elif (draw_status == 2):

		gml.draw_set_font(global.my_font_small)
		gml.draw_set_color(gml.c_yellow)
		gml.draw_text(16, 16, "A GAME BY")
		# DY:  gml.draw_set_font(global.my_font_small)
		gml.draw_set_color(gml.c_white)
		gml.draw_text(64, 32, "DEREK YU")

	elif (draw_status == 3):

		gml.draw_set_font(global.my_font_small)
		gml.draw_set_color(gml.c_yellow)
		gml.draw_text(16, 16, "PLATFORM ENGINE")
		gml.draw_set_color(gml.c_white)
		gml.draw_text(16, 24, "MARTIN PIECYK")
		gml.draw_set_color(gml.c_yellow)
		gml.draw_text(16, 40, "SOUND EFFECTS MADE USING")
		gml.draw_set_color(gml.c_white)
		gml.draw_text(16, 48, "DR PETTER'S SFXR")
		gml.draw_set_color(gml.c_yellow)
		gml.draw_text(16, 64, "SCREEN SCALING CODE")
		gml.draw_set_color(gml.c_white)
		gml.draw_text(16, 72, "CHEVYRAY")

	elif (draw_status == 4):

		gml.draw_set_font(global.my_font_small)
		gml.draw_set_color(gml.c_yellow)
		gml.draw_text(16, 16, "MUSIC BY")
		gml.draw_set_color(gml.c_white)
		gml.draw_text(32, 32, "GEORGE BUZINKAI")
		gml.draw_text(32, 48, "JONATHAN PERRY")

	elif (draw_status == 5):

		gml.draw_set_font(global.my_font_small)
		gml.draw_set_color(gml.c_yellow)
		gml.draw_text(16, 16, "BETA TESTING BY")
		gml.draw_set_color(gml.c_white)
		gml.draw_text(16, 24, "ANNABELLE K.")
		gml.draw_text(16, 32, "BENZIDO")
		gml.draw_text(16, 40, "CHUTUP")
		gml.draw_text(16, 48, "CORPUS")
		gml.draw_text(16, 56, "GENERALVALTER")
		gml.draw_text(16, 64, "GUERT")
		gml.draw_text(16, 72, "GRAHAM GORING")
		gml.draw_text(16, 80, "HAOWAN")
		gml.draw_text(16, 88, "HIDEOUS")
		gml.draw_text(16, 96, "INANE")
		# DY: 
		gml.draw_text(128, 24, "INCREPARE")
		gml.draw_text(128, 32, "KAO")
		gml.draw_text(128, 40, "MARK JOHNS")
		gml.draw_text(128, 48, "MELLY")
		gml.draw_text(128, 56, "PAUL ERES")
		gml.draw_text(128, 64, "SUPER JOE")
		gml.draw_text(128, 72, "TANTAN")
		gml.draw_text(128, 80, "TEAM QUIGGAN")
		gml.draw_text(128, 88, "TERRY")
		gml.draw_text(128, 96, "XION")
		gml.draw_text(128, 104, "ZAPHOS")

	elif (draw_status == 6):

		gml.draw_set_font(global.my_font_small)
		gml.draw_set_color(gml.c_yellow)
		gml.draw_text(16, 16, "THANKS FOR PLAYING!")
		# DY:  gml.draw_set_font(global.my_font_small)
		gml.draw_set_color(gml.c_white)
		gml.draw_text(32, 32, "SEE YOU NEXT ADVENTURE!")


	if (fade_in or fade_out):

		gml.draw_set_color(gml.c_black)
		gml.draw_set_alpha(fade_level)
		draw_rectangle(0, 0, 320, 240, false)
		gml.draw_set_alpha(1)


	

func step():
	if (keyboard_check_pressed(KEY_ENTER) or
		keyboard_check_pressed(KEY_ESCAPE) or
		check_attack()):

		if (gml.instance_exists("camel")):
	
			if (fade_in):
		
				fade_level = 0
		
			else:
		
				fade_out = true
		
	



	if (gml.instance_exists("camel")):

		if (camel.position.x <= 160 and not scroll_start):
	
			with desert_scroll
		
				scroll = true
		
			alarm_1_countdown.start(1)
			alarm_2_countdown.start(20)
			scroll_start = true
			scrolling = true
	


	if (fade_in):

		if (fade_level > 0): fade_level -= 0.1
		else:
	
			fade_in = false
			alarm_0_countdown.start(20)
	

	elif (fade_out):

		if (fade_level < 1): fade_level += 0.1
		else:
	
			game_end()
