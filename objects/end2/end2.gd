extends GMObject


func _ready():
	object_setup()


#--- Object functions


func alarm_0():
	var player = gml.instance_create(240, 132, Objects.player_sil, self)
	# DY: player.x_vel = -6
	# DY: player.y_vel = -8
	alarm_1_countdown.start(30)
	

func alarm_1():
	var player = gml.instance_create(240, 132, Objects.treasure_sil, self)
	# DY: player.x_vel = -6
	# DY: player.y_vel = -8


func alarm_2():
	gml.instance_create(224+randi_range(0,48), 144+randi_range(0,8), Objects.volcano_flame, self)
	alarm_2_countdown.start(randi_range(10,20))


func create():
	alarm_0_countdown.start(50)
	alarm_2_countdown.start(10) # DY:


func step():
	if (GlobalInput.check_input("enter") or
		GlobalInput.check_input("escape") or
		ControlScripts.check_attack_pressed() or
		ControlScripts.check_start_pressed()):

		if (Gamepad.attack_pressed): Gamepad.attack_pressed = false
		if (Gamepad.start_pressed): Gamepad.start_pressed = false
		global.game_start = false
		gml.room_goto("end3")
