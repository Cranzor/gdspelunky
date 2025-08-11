extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


func create():
	shake_toggle = false
	var p_dummy = gml.get_instance("p_dummy")
	p_dummy.status = 2

	timer = 0

	if (global.kali_punish >= 2):

		gml.instance_create(p_dummy.position.x, p_dummy.position.y+2, Objects.ball2, self)
		var obj = gml.instance_create(p_dummy.position.x, p_dummy.position.y, Objects.chain2, self)
		obj.link_val = 1
		obj = gml.instance_create(p_dummy.position.x, p_dummy.position.y, Objects.chain2, self)
		obj.link_val = 2
		obj = gml.instance_create(p_dummy.position.x, p_dummy.position.y, Objects.chain2, self)
		obj.link_val = 3
		obj = gml.instance_create(p_dummy.position.x, p_dummy.position.y, Objects.chain2, self)
		obj.link_val = 4


	Audio.stop_all_music()


func room_end():
	global.shake = 0


func step():
	timer += 1
	if (gml.keyboard_check_pressed(KEY_ENTER) or
		gml.keyboard_check_pressed(KEY_ESCAPE) or
		ControlScripts.check_attack_pressed() or
		ControlScripts.check_start_pressed()):

		if (timer > 50):
	
			if (Gamepad.attack_pressed): Gamepad.attack_pressed = false
			if (Gamepad.start_pressed): Gamepad.start_pressed = false
			global.game_start = false
			gml.room_goto("end3")
	


	# DY:  shake the screen
	if (global.shake > 0):

		# DY: gml.view("xview") = gml.view("xview") + gml.rand(0,3) - gml.rand(0,3)
		# DY: gml.view("yview") = gml.view("yview") + gml.rand(0,3) - gml.rand(0,3)
		# DY: if (gml.view("yview") > 16): gml.view("yview") = 16 - gml.rand(0,8)
		# DY: if (gml.view("yview") < 0): gml.view("yview") = 0 + gml.rand(0,8)
		if (shake_toggle): gml.view_yview = gml.view_yview + gml.rand(1,8)
		else: gml.view_yview = 0
		shake_toggle = not shake_toggle
		global.shake -= 1

	else:

		gml.view_yview = 0


	if (gml.view_xview < gml.room_width - 320): gml.view_xview += 1
