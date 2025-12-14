extends GMObject


func _ready():
	object_setup()


#--- Object functions
var baskets: int
@onready var draw_text = $BonusRoomsHUD/DrawText
@onready var start_message = $BonusRoomsHUD/StartMessage


func alarm_0():
	#/*
	#gml.instance_create(n, 128, Objects.basket, self)
	#gml.instance_create(n, 128, Objects.rim, self)
	#gml.instance_create(n, 128, Objects.rim_deflect, self)
	#obj = gml.instance_create(n+8, 128+8, Objects.poof, self)
	#obj.x_vel = -0.5
	#obj.y_vel = -0.5
	#obj = gml.instance_create(n+8, 128+8, Objects.poof, self)
	#obj.x_vel = 0.5
	#obj.y_vel = -0.5
	#obj = gml.instance_create(n+8, 128+8, Objects.poof, self)
	#obj.x_vel = 0.5
	#obj.y_vel = 0.5
	#obj = gml.instance_create(n+8, 128+8, Objects.poof, self)
	#obj.x_vel = -0.5
	#obj.y_vel = 0.5
	#*/

	if (timer == 60): alarm_11_countdown.start(1)


func alarm_1():
	draw_status = 1
	alarm_2_countdown.start(30)


func alarm_10():
	if (timer < 0):
		var game = gml.get_instance("game")
		if (game.draw_status < 3):
	
			game.draw_status = 3
	
	
		Audio.stop_all_music()


func alarm_11():
	timer -= 1
	if (timer == 0):

		global.mini2 = self.baskets
		if (global.mini2 > 99): global.mini2 = 99
		MiscScripts.scr_update_highscores(2)
		timer -= 1
		var game = gml.get_instance("game")
		game.draw_status = 1
		
		var all_bat_targets = gml.get_all_instances("bat_target")
		for bat_target_instance in all_bat_targets:
 
			var obj = gml.instance_create(bat_target_instance.position.x+8, bat_target_instance.position.y, Objects.poof, self)
			obj.x_vel = 0
			obj.y_vel = -1
			obj = gml.instance_create(bat_target_instance.position.x+8, bat_target_instance.position.y, Objects.poof, self)
			obj.x_vel = 0
			obj.y_vel = 1
		
			gml.instance_destroy(bat_target_instance)

		var all_entrances = gml.get_all_instances("entrance") #--- should only be one but grabbing all just in case
		for entrance_instance in all_entrances:
	
			gml.instance_create(entrance_instance.position.x, entrance_instance.position.y, Objects.x_scores, self)
			gml.instance_destroy(entrance_instance)
	
		alarm_10_countdown.start(30)

	else:
		alarm_11_countdown.start(30)


func alarm_2():
	draw_status = 2
	alarm_3_countdown.start(10)


func alarm_3():
	draw_status = 3
	#/*
	#obj = gml.instance_create(160, 0, Objects.poof, self)
	#obj.x_vel = 0
	#obj.y_vel = -1
	#obj = gml.instance_create(160, 0, Objects.poof, self)
	#obj.x_vel = 0
	#obj.y_vel = 1
	#*/
	gml.instance_create(160, -16, Objects.bat_target, self)
	gml.instance_create(208, -64, Objects.bat_target, self)
	gml.instance_create(256, -128, Objects.bat_target, self)


func alarm_9():
	if (global.music): Audio.start_music()


func create():
	global.plife = 8
	highscore = false
	baskets = 0
	timer = 60
	draw_status = 0
	alarm_0_countdown.start(100)
	alarm_1_countdown.start(30)
	alarm_9_countdown.start(100)
	global.arrows = 100

	# DY:  To prevent the Tunnel Man from tearing up the whole level.
	var all_bricks = gml.get_all_instances("brick")
	for brick_instance in all_bricks:

		if (brick_instance.position.x <= 16 or brick_instance.position.x >= 288 or brick_instance.position.y <= 16 or brick_instance.position.y >= 208):
	
			brick_instance.invincible = true


func draw():
	life = global.plife
	if (life < 0): life = 0
	gml.draw_set_font(global.my_font)
	gml.draw_set_color(gml.c_white)
	gml.draw_sprite("hoops_icon", -1, gml.view("xview")+8, gml.view("yview")+8, self)
	draw_text.draw_text(gml.view("xview")+24, gml.view("yview")+8, str(baskets), "baskets")
	gml.draw_sprite("timer_icon", -1, gml.view("xview")+64, gml.view("yview")+8, self)
	if (timer >= 0): draw_text.draw_text(gml.view("xview")+64+16, gml.view("yview")+8, str(timer), "timer")
	else: draw_text.draw_text(gml.view("xview")+64+16, gml.view("yview")+8, "0", "zero")
	if (draw_status < 3):

		gml.draw_set_font(global.my_font_small)
		gml.draw_set_color(gml.c_yellow)
		var str_len = gml.string_length("ARCHERY CHALLENGE BEGINS IN 3...")*8
		var n = 320 - str_len
		n = ceil(n / 2)
		start_message.draw_text(n, 216, "ARCHERY CHALLENGE BEGINS IN " + str(3-draw_status) + "...", "archery_challenge_message")
