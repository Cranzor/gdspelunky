extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions
var kills
@onready var draw_text: Node2D = $BonusRoomsHUD/DrawText


func alarm_0():
	var player1 = gml.get_instance("player1") #---[FLAG] may need to change this for multiplayer
	if (not player1.dead):

		var n = gml.rand(0,3)
		gml.instance_create(32 + n*80, 0, Objects.shopkeeper2)
		if (kills >= 40):
	
			alarm_0_countdown.start(100)
	
		elif (kills >= 30):
	
			alarm_0_countdown.start(125)
	
		elif (kills >= 20):
	
			alarm_0_countdown.start(150)
	
		elif (kills >= 10):
	
			alarm_0_countdown.start(175)
	
		else: alarm_0_countdown.start(200)


func alarm_1():
	draw_status = 1
	alarm_2_countdown.start(30)


func alarm_10():
	if (global.music): Audio.start_music()


func alarm_11():
	var player1 = gml.get_instance("player1") #---[FLAG] may have to change this for multiplayer
	if (not player1.dead and gml.rand(1, 100) < kills):

		var n = gml.rand(0,3)
		gml.instance_create(32 + n*80, 0, Objects.spider)


	if (not player1.dead): alarm_11_countdown.start(20)


func alarm_2():
	draw_status = 2
	alarm_3_countdown.start(10)


func alarm_3():
	draw_status = 3


func create():
	global.plife = 8
	highscore = false
	kills = 0
	draw_status = 0
	alarm_0_countdown.start(100)
	alarm_1_countdown.start(30)
	alarm_10_countdown.start(100)
	alarm_11_countdown.start(110)

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
	gml.draw_sprite("heart", -1, gml.view("xview")+8, gml.view("yview")+8, self)
	draw_text.draw_text(gml.view("xview")+24, gml.view("yview")+8, str(life), "life")
	gml.draw_sprite("shopkeeper_icon", -1, gml.view("xview")+64, gml.view("yview")+8, self)
	draw_text.draw_text(gml.view("xview")+64+16, gml.view("yview")+8, str(kills), "kills")
	if (draw_status < 3):

		gml.draw_set_font(global.my_font_small)
		gml.draw_set_color(gml.c_yellow)
		var str_len = gml.string_length("SHOTGUN CHALLENGE BEGINS IN 3...")*8
		var n = 320 - str_len
		n = ceil(n / 2)
		draw_text.draw_text(n, 216, "SHOTGUN CHALLENGE BEGINS IN " + str(3-draw_status) + "...", "shotgun_challenge_message")
