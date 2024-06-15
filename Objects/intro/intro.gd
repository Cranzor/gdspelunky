extends Node2D

@export var object_size: Vector2
@export var depth: int

var fade_in
var fade_out
var fade_level

var draw_status
var str1
var str2
var str3

@onready var str1_label = $TextBackground/Str1
@onready var str2_label = $TextBackground/Str2
@onready var str3_label = $TextBackground/Str3

@onready var alarm8_timer = $Alarms/Alarm8
@onready var alarm9_timer = $Alarms/Alarm9
@onready var alarm10_timer = $Alarms/Alarm10
@onready var alarm11_timer = $Alarms/Alarm11

var alarm_8_active = false
var alarm_9_active = false
var alarm_10_active = false
var alarm_11_active = false

var physics_frame_rate = 30

@onready var text_background = $TextBackground

func initial_setup():
	#--- set size
	object_size = Vector2(0, 0)

	#--- set depth
	depth = 0
	z_index = depth

func _ready():
	initial_setup()

	fade_in = false
	fade_out = false
	fade_level = 1
	# gml.instance_create(-32, 184, "p_dummy3")

	draw_status = 0
	
	if alarm11_timer.is_stopped():
		alarm11_timer.start(20/physics_frame_rate)

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

func _physics_process(delta):
	if (gml.keyboard_check_pressed(KEY_ENTER) or
		gml.keyboard_check_pressed(KEY_ESCAPE) or
		ControlScripts.check_attack_pressed() or
		ControlScripts.check_start_pressed()):

		if (not gml.instance_exists("p_dummy3")): fade_in = true
		else:
		
			fade_in = false
			fade_out = true
		


	if (fade_in):

		draw_status = -1
		if (fade_level > 0): fade_level -= 0.1
		else:
		
			fade_in = false
			#if (not gml.instance_exists("p_dummy3")): gml.instance_create(-32, 184, "p_dummy3") --- UNCOMMENT THIS
		

	elif (fade_out):

		if (fade_level < 1): fade_level += 0.1
		else:
		
			global.game_start = false
			get_tree().change_scene("res://title.tscn")
	#----------
	
	draw()
	print(fade_level)

func draw():
	var str_len
	var n
	
	text_background.color = gml.c_black
	text_background.color = Color(0, 0, 0, fade_level)
	text_background.position = Vector2(gml.view("xview"), gml.view("yview"))
	text_background.position = Vector2(0, 0)
	#draw_set_alpha(1) --- doesn't seem to be needed
	
	if (draw_status > 0):

		#draw_set_font(global.my_font_small)
		#draw_set_color(c_white)
		str_len = gml.string_length(str1)*8
		n = 320 - str_len
		n = ceil(n / 2)
		#gml.draw_text(n, 116-16, str1, "small", gml.c_white)
		str1_label.visible = true
		str1_label.position = Vector2(n, 116-16)
		str1_label.text = str1

	if (draw_status > 1):

		#draw_set_font(global.my_font_small)
		#draw_set_color(c_white)
		str_len = gml.string_length(str2)*8
		n = 320 - str_len
		n = ceil(n / 2)
		#gml.draw_text(n, 116, str2, "small", gml.c_white)
		str2_label.visible = true
		str2_label.position = Vector2(n, 116)
		str2_label.text = str2

	if (draw_status > 2):

		#draw_set_font(global.my_font_small)
		#draw_set_color(c_white)
		str_len = gml.string_length(str3)*8
		n = 320 - str_len
		n = ceil(n / 2)
		#gml.draw_text(n, 116+16, str3, "small", gml.c_white)
		str3_label.visible = true
		str3_label.position = Vector2(n, 116+16)
		str3_label.text = str3
	
	if draw_status < 0: #--- adding this we are not drawing per frame
		str1_label.visible = false
		str2_label.visible = false
		str3_label.visible = false
		
func alarm_timeout(time):
	await get_tree().create_timer(time).timeout


func _on_alarm_11_timeout():
	print("started 11")
	if (not fade_in):

		if (draw_status >= 0):
			draw_status = 1
		
		if alarm10_timer.is_stopped():
			alarm10_timer.start(80/physics_frame_rate)

func _on_alarm_10_timeout():
	print("started 10")
	if (not fade_in):

		if (draw_status >= 0):
			draw_status = 2
		
		if alarm10_timer.is_stopped():
			alarm9_timer.start(80/physics_frame_rate)

func _on_alarm_9_timeout():
	print("started 9")
	if (not fade_in):

		if (draw_status >= 0):
			draw_status = 3
			
		if alarm8_timer.is_stopped():
			alarm8_timer.start(80/physics_frame_rate)

func _on_alarm_8_timeout():
	print("started 8")
	if (not fade_in):
		draw_status = -1
		fade_in = true
