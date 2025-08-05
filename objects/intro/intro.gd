extends DrawnSprite #---changing this to DrawnSprite


func _ready():
	object_setup()


func _physics_process(_delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions

var str1
var str2
var str3

var skip_button_just_pressed: bool = false
@onready var draw_text: Node = $DrawText
@onready var draw_rectangle: ColorRect = $DrawRectangle


func _input(event):
	if (gml.keyboard_check_pressed(KEY_ENTER) or
		gml.keyboard_check_pressed(KEY_ESCAPE) or
		ControlScripts.check_attack_pressed() or
		ControlScripts.check_start_pressed()):
			skip_button_just_pressed = true
			print("pressed")

func reset_inputs():
	skip_button_just_pressed = false

func create():
	fade_in = false
	fade_out = false
	fade_level = 1
	#gml.instance_create(-32, 184, p_dummy3)

	draw_status = 0
	
	alarm_11_countdown.start(20)

	var str = ""
	var n = randi_range(1,8)
	match (n):

		1:  str1 = "AS THE MOON BURNED BRIGHT ABOVE,"
		2:  str1 = "WITH THE DESERT STRETCHING BEHIND ME,"
		3:  str1 = "AFTER I DOUBLE-CHECKED MY MAP,"
		4:  str1 = "MY LIPS CRACKED AND COVERED IN SAND,"
		5:  str1 = "WITH FATE GUIDING MY EVERY MOVE,"
		6:  str1 = "PUTTING THE FADED PHOTO IN MY POCKET,"
		7:  str1 = "AS I RECALLED MY FATHER'S LAST WORDS,"
		8:  str1 = "MY MEMORY SLIPPING AWAY FROM ME,"

	n = randi_range(1,8)
	match (n):

		1:  str2 = "I STRODE VALIANTLY TOWARD MY DESTINY,"
		2:  str2 = "I SQUEEZED THE WHIP AT MY SIDE,"
		3:  str2 = "I DRAINED THE REST OF MY CANTEEN,"
		4:  str2 = "I SPOTTED THE CAVE'S ENTRANCE,"
		5:  str2 = "I FURROWED MY BROW,"
		6:  str2 = "I PAID MY BEDOUIN GUIDE,"
		7:  str2 = "I DISMOUNTED MY CAMEL,"
		8:  str2 = "I SQUINTED INTO THE DARKNESS,"

	n = randi_range(1,8)
	match (n):

		1:  str3 = "AND THOUGHT OF HER ONE LAST TIME."
		2:  str3 = "AND HELD MY HAT AGAINST THE WIND."
		3:  str3 = "AND A COLD CHILL TOOK HOLD OF ME."
		4:  str3 = "AND WONDERED HOW LONG I'D BE BELOW."
		5:  str3 = "AND VOWED TO RETURN VICTORIOUS."
		6:  str3 = "AND SWORE I HEARD VOICES UP AHEAD."
		7:  str3 = "AND FELT THE GODS SMILING UPON ME."
		8:  str3 = "AND THAT'S WHEN IT ALL STARTED."

func step():
	#if (gml.keyboard_check_pressed(KEY_ENTER) or
		#gml.keyboard_check_pressed(KEY_ESCAPE) or
		#ControlScripts.check_attack_pressed() or
		#ControlScripts.check_start_pressed()):
	if skip_button_just_pressed:

		if (not gml.instance_exists("p_dummy3")): fade_in = true
		else:
		
			fade_in = false
			fade_out = true
		


	if (fade_in):

		draw_status = -1
		if (fade_level > 0): fade_level -= 0.1
		else:
		
			fade_in = false
			if (not gml.instance_exists("p_dummy3")): gml.instance_create(-32, 184, Objects.p_dummy3)
		

	elif (fade_out):

		if (fade_level < 1): fade_level += 0.1
		else:
		
			global.game_start = false
			gml.room_goto("title")
			
	#----------
	
	reset_inputs()

func draw():
	var str_len
	var n
	
	gml.draw_set_color(gml.c_black)
	gml.draw_set_alpha(fade_level)
	draw_rectangle.draw_rectangle(gml.view_xview, gml.view_yview, gml.view_xview + 320, gml.view_yview + 240, false)
	gml.draw_set_alpha(1)
	
	if (draw_status > 0):

		gml.draw_set_font(global.my_font_small)
		gml.draw_set_color(gml.c_white)
		str_len = gml.string_length(str1)*8
		n = 320 - str_len
		n = ceil(n / 2)
		draw_text.draw_text(n, 116-16, str1)

	if (draw_status > 1):

		gml.draw_set_font(global.my_font_small)
		gml.draw_set_color(gml.c_white)
		str_len = gml.string_length(str2)*8
		n = 320 - str_len
		n = ceil(n / 2)
		draw_text.draw_text(n, 116, str2)

	if (draw_status > 2):

		gml.draw_set_font(global.my_font_small)
		gml.draw_set_color(gml.c_white)
		str_len = gml.string_length(str3)*8
		n = 320 - str_len
		n = ceil(n / 2)
		draw_text.draw_text(n, 116+16, str3)


func alarm_11():
	if (not fade_in):

		if (draw_status >= 0):
			draw_status = 1
		
		alarm_10_countdown.start(80)


func alarm_10():
	if (not fade_in):

		if (draw_status >= 0):
			draw_status = 2
		
		alarm_9_countdown.start(80)


func alarm_9():
	if (not fade_in):

		if (draw_status >= 0):
			draw_status = 3
			
		alarm_8_countdown.start(80)


func alarm_8():
	if (not fade_in):
		draw_status = -1
		fade_in = true
