extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions
var sun_gold
var moon_gold
var stars_gold
var trophy
@onready var draw_text: Node2D = $DrawText


func create():
	Screen.can_pause = true

	global.curr_level = 1

	shake_toggle = false
	global.dark_level = false
	global.snake_pit = false
	global.message_timer = 0
	global.mini1 = 0
	global.mini2 = 0
	global.mini3 = 0
	global.has_jordans = false
	global.arrows = 0

	sun_gold = 200000
	moon_gold = 600000
	stars_gold = 120

	t_money = gml.highscore_value(1) - 9000000
	t_time = gml.highscore_value(2) - 8000000
	t_kills = gml.highscore_value(3) - 7000000
	t_saves = gml.highscore_value(4)-6000000

	# DY:  debug
	#/*
	#t_money = 200000
	#t_time = 1
	#t_kills = 200
	#t_saves = 8
	#*/

	if (t_money >= 50000):

		trophy = gml.instance_create(32, 32, Objects.trophy, self)
		if (t_money >= 200000):
	
			trophy.sprite_index = "gold_trophy"
			gml.instance_create(32, 48, Objects.x_sun, self)
	
		elif (t_money >= 100000):
	
			trophy.sprite_index = "silver_trophy"
	
		else:
	
			trophy.sprite_index = "bronze_trophy"
	


	if (t_time > 0 and t_time < 960):

		trophy = gml.instance_create(64, 64, Objects.trophy, self)
		if (t_time <= 960):
	
			trophy.sprite_index = "bronze_trophy"
	
		if (t_time <= 720):
	
			trophy.sprite_index = "silver_trophy"
	
		if (t_time <= 600):
	
			trophy.sprite_index = "gold_trophy"
			gml.instance_create(64, 80, Objects.x_moon, self)
	


	if (t_kills >= 80):

		trophy = gml.instance_create(32, 96, Objects.trophy, self)
		if (t_kills >= 120):
	
			trophy.sprite_index = "gold_trophy"
			gml.instance_create(32, 112, Objects.x_stars, self)
	
		elif (t_kills >= 100):
	
			trophy.sprite_index = "silver_trophy"
	
		else:
	
			trophy.sprite_index = "bronze_trophy"
	


	if (t_saves >= 4):

		trophy = gml.instance_create(64, 128, Objects.trophy, self)
		if (t_saves >= 8):
	
			trophy.sprite_index = "gold_trophy"
			gml.instance_create(64, 144, Objects.x_change, self)
	
		elif (t_saves >= 6):
	
			trophy.sprite_index = "silver_trophy"
	
		else:
	
			trophy.sprite_index = "bronze_trophy"
	

	var player1 = gml.get_instance("player1") #---[FLAG] may have to change this for multiplayer
	if (global.scores_start == 1):

		player1.position.x = 32+8
		player1.position.y = 48+8

	elif (global.scores_start == 2):

		player1.position.x = 64+8
		player1.position.y = 80+8

	elif (global.scores_start == 3):

		player1.position.x = 32+8
		player1.position.y = 112+8


	if (global.new_money): gml.instance_create(272, 48, Objects.new, self)
	if (global.new_kills): gml.instance_create(272, 64, Objects.new, self)
	if (global.new_saves): gml.instance_create(272, 80, Objects.new, self)
	if (global.new_time): gml.instance_create(272, 96, Objects.new, self)


func draw():
	var player1 = gml.get_instance("player1") #---[FLAG] may have to change this for multiplayer
	if (player1.position.y < 156):

		gml.draw_set_font(global.my_font_small)
		gml.draw_set_color(gml.c_yellow)
		draw_text.draw_text(128+16, 32, "SECRET CHALLENGES")
		gml.draw_set_color(gml.c_white)
		var t_mini1 = floor(gml.highscore_value(10) / 10000)
		var t_mini2 = floor((gml.highscore_value(10)-(t_mini1*10000)) / 100)
		var t_mini3 = floor(gml.highscore_value(10)-(t_mini1*10000)-(t_mini2*100))
		draw_text.draw_text(128, 48, "SUN:   " + str(t_mini1), "sun")
		draw_text.draw_text(128, 64, "MOON:  " + str(t_mini2), "moon")
		draw_text.draw_text(128, 80, "STARS: " + str(t_mini3), "stars")

		if (player1.position.y < 48+16):

			gml.draw_set_color(gml.c_yellow)
			draw_text.draw_text(168, 96, "SUN ROOM")
			gml.draw_set_color(gml.c_white)
			if (t_money >= sun_gold):
		
				if (false): # DY:  (global.is_tunnel_man)
			
					draw_text.draw_text(128, 112, "NO MATTOCKS ALLOWED!")
					draw_text.draw_text(128, 128, "THIS MEANS YOU!")
					draw_text.draw_text(128, 144, "", "empty1")
					draw_text.draw_text(128, 160, "", "empty2")
			
				else:
			
					draw_text.draw_text(128, 112, "KEEP YOURSELF AND")
					draw_text.draw_text(128, 128, "THE DAMSEL ALIVE")
					draw_text.draw_text(128, 144, "FOR AS LONG AS")
					draw_text.draw_text(128, 160, "POSSIBLE!")
			
		
			else:
		
				draw_text.draw_text(128, 112, "LOCKED.")
		

		elif (player1.position.y < 80+16):

			gml.draw_set_color(gml.c_yellow)
			draw_text.draw_text(168, 96, "MOON ROOM")
			gml.draw_set_color(gml.c_white)
			if (t_time > 0 and t_time <= moon_gold):
		
				if (false): # DY:  (global.is_tunnel_man)
			
					draw_text.draw_text(128, 112, "NO MATTOCKS ALLOWED!")
					draw_text.draw_text(128, 128, "THIS MEANS YOU!")
					draw_text.draw_text(128, 144, "", "empty1")
					draw_text.draw_text(128, 160, "", "empty2")
			
				else:
			
					draw_text.draw_text(128, 112, "SHOOT THE MOVING")
					draw_text.draw_text(128, 128, "TARGETS WITH YOUR")
					draw_text.draw_text(128, 144, "BOW AND ARROWS!")
			
		
			else:
		
				draw_text.draw_text(128, 112, "LOCKED.")
		

		elif (player1.position.y < 112+16):

			gml.draw_set_color(gml.c_yellow)
			draw_text.draw_text(168, 96, "STARS ROOM")
			gml.draw_set_color(gml.c_white)
			if (t_kills >= stars_gold):
		
				if (false): # DY:  (global.is_tunnel_man)
			
					draw_text.draw_text(128, 112, "NO MATTOCKS ALLOWED!")
					draw_text.draw_text(128, 128, "THIS MEANS YOU!")
					draw_text.draw_text(128, 144, "", "empty1")
					draw_text.draw_text(128, 160, "", "empty2")
			
				else:
			
					draw_text.draw_text(128, 112, "KILL AS MANY ANGRY")
					draw_text.draw_text(128, 128, "SHOPKEEPS AS YOU CAN")
					draw_text.draw_text(128, 144, "BEFORE THEY GET YOU!")
			
		
			else:
		
				draw_text.draw_text(128, 112, "LOCKED.")
		

		elif (player1.position.y < 160):

			gml.draw_set_color(gml.c_yellow)
			draw_text.draw_text(160, 96, "CHANGING ROOM")
			gml.draw_set_color(gml.c_white)
			if (t_saves >= 8):
		
				draw_text.draw_text(128, 112, "LADY IN RED...")
		
			else:
		
				draw_text.draw_text(128, 112, "LOCKED.")
		
			var all_new = gml.get_all_instances("new")
			for new_instance in all_new:
		
				new_instance.visible = false
	



	else:

		var all_new = gml.get_all_instances("new")
		for new_instance in all_new:

			new_instance.visible = true

		gml.draw_set_font(global.my_font_small)
		gml.draw_set_color(gml.c_yellow)
		draw_text.draw_text(160, 32, "TOP DEFILERS")
		gml.draw_set_color(gml.c_white)
		draw_text.draw_text(128, 48, "MONEY:  " + str(gml.highscore_value(1)-9000000), "money_score")
		draw_text.draw_text(128, 64, "KILLS:  " + str(gml.highscore_value(3)-7000000), "kills_score")
		draw_text.draw_text(128, 80, "SAVES:  " + str(gml.highscore_value(4)-6000000), "saves_score")
		# DY:  only display time if won:
		if (gml.highscore_value(6)-4000000 > 0):

			var s = gml.highscore_value(2)-8000000
			# DY:  s = floor(s / 1000)
			var m = 0
			while (s > 59):
		
				s -= 60
				m += 1
		
		
			gml.draw_set_color(gml.c_white)
			draw_text.draw_text(128, 96, "TIME: ", "time")
			if (s < 10): draw_text.draw_text(128+64, 96, str(m) + ":0" + str(s), "time_display1")
			else: draw_text.draw_text(128+64, 96, str(m) + ":" + str(s), "time_display2")

		gml.draw_set_color(gml.c_yellow)
		draw_text.draw_text(168, 112, "STATISTICS")
		gml.draw_set_color(gml.c_white)
		draw_text.draw_text(128, 128, "PLAYS:  " + str(gml.highscore_value(5)-5000000), "plays")
		draw_text.draw_text(128, 144, "DEATHS: " + str(gml.highscore_value(7)-3000000), "deaths")
		draw_text.draw_text(128, 160, "WINS:   " + str(gml.highscore_value(6)-4000000), "wins")

		var block = gml.instance_nearest(160, 240, "push_block")
		var button_highscore = gml.get_instance("button_highscore") #---[FLAG] make sure there is only one
		if (not button_highscore.pushed and block.position.x > 160):

			gml.draw_set_font(global.my_font_small)
			gml.draw_set_color(gml.c_yellow)
			var str_len = gml.string_length("THIS WILL CLEAR EVERYTHING!")*8
			var n = 320 - str_len
			n = ceil(n / 2)
			draw_text.draw_text(n, 216, str("THIS WILL CLEAR EVERYTHING!"))


func key_q_pressed():
	#/*highscore_clear()
	#highscore_add("MONEY", 9000000)
	#highscore_add("TIME", 8000000)
	#highscore_add("KILLS", 7000000)
	#highscore_add("SAVES", 6000000)
	#highscore_add("PLAYS", 5000000)
	#highscore_add("WINS", 4000000)
	#highscore_add("DEATHS", 3000000)*/
	pass


func step():
	# DY:  shake the screen
	if (global.shake > 0):

		# DY: gml.view("xview") = gml.view("xview") + gml.rand(0,3) - gml.rand(0,3)
		# DY: gml.view("yview") = gml.view("yview") + gml.rand(0,3) - gml.rand(0,3)
		# DY: if (gml.view("yview") > 16): gml.view("yview") = 16 - gml.rand(0,8)
		# DY: if (gml.view("yview") < 0): gml.view("yview") = 0 + gml.rand(0,8)
		if (shake_toggle): gml.view_yview = gml.view("yview") + gml.rand(1,8)
		else: gml.view_yview = 0
		shake_toggle = not shake_toggle
		global.shake -= 1

	else:

		gml.view_yview = 0
		gml.view_yview = 0
