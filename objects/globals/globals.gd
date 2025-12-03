extends GMObject


func _ready():
	object_setup()


#--- Object functions


func create():
	#DY: gamepad

	var joyid

	joyid = 1

	#if (not joystick_exists(1) and joystick_exists(2)): joyid = 2 #--- shouldn't need this for anything

	#

	global.level_select = 0 #DY: DEBUG

	global.custom_level = false
	global.test_level = ""

	global.first_time = false
	global.used_shortcut = false

	global.dark_level = false
	global.lake = false

	global.music = true
	global.message = ""
	global.message2 = ""
	global.message_timer = 0
	global.darkness_lerp = 0
	global.had_dark_level = false

	global.udjat_blink = false
	global.udjat_counter = 0

	global.clean_solids = false

	# Tunnel Man
	global.tunnel1_max = 100000
	global.tunnel2_max = 200000
	global.tunnel3_max = 300000
	global.tunnel1 = gml.highscore_value(8) - 2000000
	global.tunnel2 = gml.highscore_value(9) - 1000000

	# Minigames
	global.mini1 = 0
	global.mini2 = 0
	global.mini3 = 0
	global.scores_start = 0
	global.is_damsel = false
	global.is_tunnel_man = false

	# Highscores
	global.new_money = false
	global.new_kills = false
	global.new_saves = false
	global.new_time = false

	MiscScripts.scr_clear_globals()

	if (gml.highscore_value(1) <= 9000000 and
		gml.highscore_value(2) <= 8000000 and
		gml.highscore_value(3) <= 7000000 and
		gml.highscore_value(4) <= 6000000 and
		gml.highscore_value(5) <= 5000000 and
		gml.highscore_value(6) <= 4000000 and
		gml.highscore_value(7) <= 3000000 and
		gml.highscore_value(8) <= 2000000 and
		gml.highscore_value(9) <= 1000000):

		MiscScripts.scr_reset_highscores()
		global.first_time = true

	#DY: get_tree().change_scene("res://rooms/level/level.tscn")
