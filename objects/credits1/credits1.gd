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
		
		var all_desert_scrolls = gml.get_all_instances("desert_scroll")
		for desert_scroll_instance in all_desert_scrolls:
			desert_scroll_instance.scroll = true
		
		var all_desert_scroll2s = gml.get_all_instances("desert_scroll2")
		for desert_scroll2_instance in all_desert_scroll2s:
			desert_scroll2_instance.scroll = true
		
		var all_desert_top_scrolls = gml.get_all_instances("desert_top_scroll")
		for desert_top_scroll_instance in all_desert_top_scrolls:
			desert_top_scroll_instance.scroll = true
		
		var all_shrub_scrolls = gml.get_all_instances("shrub_scroll")
		for shrub_scroll_instance in all_shrub_scrolls:
			shrub_scroll_instance.scroll = true
		
		var all_palm_tree_scrolls = gml.get_all_instances("palm_tree_scroll")
		for palm_tree_scroll_instance in all_palm_tree_scrolls:
			palm_tree_scroll_instance.scroll = true
			
		alarm_1_countdown.start(16)


func alarm_11():
	draw_status = 0


func alarm_2():
	draw_status = 1
	alarm_11_countdown.start(140)
	alarm_3_countdown.start(180)


func alarm_3():
	draw_status = 2
	alarm_11_countdown.start(140)
	alarm_4_countdown.start(180)


func alarm_4():
	draw_status = 3
	alarm_11_countdown.start(140)
	alarm_5_countdown.start(180)


func alarm_5():
	draw_status = 4
	alarm_11_countdown.start(140)
	alarm_6_countdown.start(180)


func alarm_6():
	draw_status = 5
	alarm_11_countdown.start(240)
	alarm_7_countdown.start(280)


func alarm_7():
	draw_status = 6
	alarm_11_countdown.start(240)
	alarm_8_countdown.start(280)


func alarm_8():
	scrolling = false
	
	var all_desert_scrolls = gml.get_all_instances("desert_scroll")
	for desert_scroll_instance in all_desert_scrolls:
		desert_scroll_instance.scroll = false
		
	var all_desert_scroll2s = gml.get_all_instances("desert_scroll2")
	for desert_scroll2_instance in all_desert_scroll2s:
		desert_scroll2_instance.scroll = false
	
	var all_desert_top_scrolls = gml.get_all_instances("desert_top_scroll")
	for desert_top_scroll_instance in all_desert_top_scrolls:
		desert_top_scroll_instance.scroll = false
	
	var all_palm_tree_scrolls = gml.get_all_instances("palm_tree_scroll")
	for palm_tree_scroll_instance in all_palm_tree_scrolls:
		palm_tree_scroll_instance.scroll = false

	var all_shrub_scrolls = gml.get_all_instances("shrub_scroll")
	for shrub_scroll_instance in all_shrub_scrolls:
		shrub_scroll_instance.scroll = false
	
	var camel = gml.get_instance("camel")
	camel.status = 2


func create():
	fade_in = true
	fade_out = false
	fade_level = 1

	gml.instance_create(-120, 112, Objects.intro_bg)
	# DY:  alarm_0_countdown.start(20)

	draw_status = 0
	scroll_start = false
	scrolling = false
	Screen.can_pause = false

	Audio.stop_all_music()


func draw():
	if (draw_status == 1):

		gml.draw_set_font(global.my_font)
		gml.draw_set_color(gml.c_yellow)
		gml.draw_text(16, 16, "SPELUNKY", "spelunky", self)

	elif (draw_status == 2):

		gml.draw_set_font(global.my_font_small)
		gml.draw_set_color(gml.c_yellow)
		gml.draw_text(16, 16, "A GAME BY", "a_game_by", self)
		# DY:  gml.draw_set_font(global.my_font_small)
		gml.draw_set_color(gml.c_white)
		gml.draw_text(64, 32, "DEREK YU", "derek_yu", self)

	elif (draw_status == 3):

		gml.draw_set_font(global.my_font_small)
		gml.draw_set_color(gml.c_yellow)
		gml.draw_text(16, 16, "PLATFORM ENGINE", "platform_engine", self)
		gml.draw_set_color(gml.c_white)
		gml.draw_text(16, 24, "MARTIN PIECYK", "martin_piecyk", self)
		gml.draw_set_color(gml.c_yellow)
		gml.draw_text(16, 40, "SOUND EFFECTS MADE USING", "sound_effects", "self")
		gml.draw_set_color(gml.c_white)
		gml.draw_text(16, 48, "DR PETTER'S SFXR", "dr_petter_sfxr", self)
		gml.draw_set_color(gml.c_yellow)
		gml.draw_text(16, 64, "SCREEN SCALING CODE", "screen_scaling", self)
		gml.draw_set_color(gml.c_white)
		gml.draw_text(16, 72, "CHEVYRAY", "chevyray", self)

	elif (draw_status == 4):

		gml.draw_set_font(global.my_font_small)
		gml.draw_set_color(gml.c_yellow)
		gml.draw_text(16, 16, "MUSIC BY", "music_by", self)
		gml.draw_set_color(gml.c_white)
		gml.draw_text(32, 32, "GEORGE BUZINKAI", "george_buzinkai", self)
		gml.draw_text(32, 48, "JONATHAN PERRY", "jonathan_perry", self)

	elif (draw_status == 5):

		gml.draw_set_font(global.my_font_small)
		gml.draw_set_color(gml.c_yellow)
		gml.draw_text(16, 16, "BETA TESTING BY", "beta_testing_by", self)
		gml.draw_set_color(gml.c_white)
		gml.draw_text(16, 24, "ANNABELLE K.", "annabelle_k", self)
		gml.draw_text(16, 32, "BENZIDO", "benzido", self)
		gml.draw_text(16, 40, "CHUTUP", "chutup", self)
		gml.draw_text(16, 48, "CORPUS", "corpus", self)
		gml.draw_text(16, 56, "GENERALVALTER", "generalvalter", self)
		gml.draw_text(16, 64, "GUERT", "guert", self)
		gml.draw_text(16, 72, "GRAHAM GORING", "graham_goring", self)
		gml.draw_text(16, 80, "HAOWAN", "haowan", self)
		gml.draw_text(16, 88, "HIDEOUS", "hideous", self)
		gml.draw_text(16, 96, "INANE", "inane", self)
		# DY: 
		gml.draw_text(128, 24, "INCREPARE", "increpare", self)
		gml.draw_text(128, 32, "KAO", "kao", self)
		gml.draw_text(128, 40, "MARK JOHNS", "mark_johns", self)
		gml.draw_text(128, 48, "MELLY", "melly", self)
		gml.draw_text(128, 56, "PAUL ERES", "paul_eres", self)
		gml.draw_text(128, 64, "SUPER JOE", "super_joe", self)
		gml.draw_text(128, 72, "TANTAN", "tantan", self)
		gml.draw_text(128, 80, "TEAM QUIGGAN", "team_quiggan", self)
		gml.draw_text(128, 88, "TERRY", "terry", self)
		gml.draw_text(128, 96, "XION", "xion", self)
		gml.draw_text(128, 104, "ZAPHOS", "zaphos", self)

	elif (draw_status == 6):

		gml.draw_set_font(global.my_font_small)
		gml.draw_set_color(gml.c_yellow)
		gml.draw_text(16, 16, "THANKS FOR PLAYING!", "thanks_for_playing", self)
		# DY:  gml.draw_set_font(global.my_font_small)
		gml.draw_set_color(gml.c_white)
		gml.draw_text(32, 32, "SEE YOU NEXT ADVENTURE!", "next_adventure", self)


	if (fade_in or fade_out):

		gml.draw_set_color(gml.c_black)
		gml.draw_set_alpha(fade_level)
		gml.draw_rectangle(0, 0, 320, 240, false)
		gml.draw_set_alpha(1)


func step():
	if (gml.keyboard_check_pressed(KEY_ENTER) or
		gml.keyboard_check_pressed(KEY_ESCAPE) or
		ControlScripts.check_attack()):

		if (gml.instance_exists("camel")):
	
			if (fade_in):
		
				fade_level = 0
		
			else:
		
				fade_out = true
		
	



	if (gml.instance_exists("camel")):
		var camel = gml.get_instance("camel")
		if (camel.position.x <= 160 and not scroll_start):
	
			var all_desert_scrolls = gml.get_all_instances("desert_scroll")
			for desert_scroll_instance in all_desert_scrolls:
				desert_scroll_instance.scroll = true
		
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
	
			gml.game_end()
