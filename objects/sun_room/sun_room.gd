extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions
var points
@onready var draw_text = $BonusRoomsHUD/DrawText


func alarm_0():
	var player1 = gml.get_instance("player1") #---[FLAG] may have to change this for multiplayer
	if (not player1.dead):

		var i = player1.position.x
		var j = 32
		if (i < 40): i = 40
		if (i > 280): i = 280
		if (not gml.collision_point(i, j, "solid", 0, 0)):
	
			if (points >= 80):
		
				if (gml.instance_exists("ghost")):  pass #DY: /* do nothing */
				elif (player1.position.x > gml.room_width/2): gml.instance_create(-32, 120-16, Objects.ghost)
				else: gml.instance_create(320, 120-16, Objects.ghost)
		
			elif (points >= 50):
		
				var vampire = gml.instance_create(152, 32, Objects.vampire) #--- changing name from "obj" to "vampire" so that the following code works
				vampire.status = 7
			
				var obj = gml.instance_create(vampire.position.x+8, vampire.position.y+8, Objects.poof)
				obj.x_vel = -1
				obj.y_vel = 0
				obj = gml.instance_create(vampire.position.x+8, vampire.position.y+8, Objects.poof)
				obj.x_vel = 1
				obj.y_vel = 0
			
		
			else:
		
				var bomb = gml.instance_create(i, j, Objects.bomb) #--- changing name from "obj" to "bomb" so that the following code works
				bomb.sprite_index = "bomb_armed"
				bomb.armed = true
			
				bomb.alarm_0_countdown.start(80)
				bomb.image_speed = 0.2
				var obj = gml.instance_create(bomb.position.x, bomb.position.y, Objects.poof)
				obj.x_vel = -1
				obj.y_vel = 0
				obj = gml.instance_create(bomb.position.x, bomb.position.y, Objects.poof)
				obj.x_vel = 1
				obj.y_vel = 0
				   
				# DY: obj.safe = true
				bomb.alarm_2_countdown.start(10) #---[FLAG] have to check this because bomb doesn't have alarm_2. this is probably fine in GM even if it doesn't exist
		
			alarm_0_countdown.start(gml.rand(100,200))
	
		else:
			alarm_0_countdown.start(1)


func alarm_1():
	draw_status = 1
	alarm_2_countdown.start(30)


func alarm_10():
	if (global.music): Audio.start_music()


func alarm_11():
	var player1 = gml.get_instance("player1") #---[FLAG] may have to change this for multiplayer
	if (not player1.dead):

		if (points < 99): points += 1
		alarm_11_countdown.start(30)


func alarm_2():
	draw_status = 2
	alarm_3_countdown.start(10)


func alarm_3():
	draw_status = 3


func create():
	global.plife = 8
	highscore = false
	points = 0
	draw_status = 0
	alarm_0_countdown.start(100+gml.rand(100,200))
	alarm_1_countdown.start(30)
	alarm_10_countdown.start(100)
	alarm_11_countdown.start(100)

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
	gml.draw_sprite("damsel_icon", -1, gml.view("xview")+64, gml.view("yview")+8, self)
	draw_text.draw_text(gml.view("xview")+64+16, gml.view("yview")+8, str(points), "points")
	if (draw_status < 3):

		gml.draw_set_font(global.my_font_small)
		gml.draw_set_color("c_yellow")
		var str_len = gml.string_length("DAMSEL CHALLENGE BEGINS IN 3...")*8
		var n = 320 - str_len
		n = ceil(n / 2)
		draw_text.draw_text(n, 216, "DAMSEL CHALLENGE BEGINS IN " + str(3-draw_status) + "...", "damsel_challenge_message")


func step():
	var game = gml.get_instance("game")
	if (game.draw_status == 0):

		if (gml.instance_exists("damsel")):
			var damsel = gml.get_instance("damsel")
			if (damsel.hp < 1):
		
				global.plife = 0
		
	
		else:
	
			global.plife = 0
