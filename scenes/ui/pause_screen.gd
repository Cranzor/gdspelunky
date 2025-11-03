extends Node2D
#--- code moved from screen object script

var paused: bool = false
var player1: GMObject
@onready var draw_text: Node2D = $DrawText
@onready var draw_rectangle: ColorRect = $DrawRectangle


func draw_pause_screen_text() -> void:
	player1 = get_tree().get_first_node_in_group("player1")
	
	var py: float = player1.position.y
	
	gml.draw_set_font(global.my_font)
	gml.draw_set_color(gml.c_white)
	
	draw_text.draw_text(112, 200, "PAUSED")
	
	gml.draw_set_font(global.my_font_small)
	
	if (InLevel.is_level()):
		var n = 128-24
		if (global.curr_level < 1): draw_text.draw_text(40, n-24, "TUTORIAL CAVE")
		elif (InLevel.is_room("load_level")): draw_text.draw_text(40, n-24, "LEVEL: " + global.custom_level_name + " BY " + global.custom_level_author, "level_name")
		else: draw_text.draw_text(40, n-24, "LEVEL " + str(global.curr_level), "level_number")
		draw_text.draw_text(40, n-16, "DEPTH: " + str(174.8*(global.curr_level-1)+(py+8)*0.34) + " FEET", "depth")
		draw_text.draw_text(40, n, "MONEY: " + str(global.money), "money")
		draw_text.draw_text(40, n+8, "KILLS: " + str(global.kills), "kills")
		var s = global.xtime
		s = floor(s / 1000)
		var m = 0
		while (s > 59):
		
			s -= 60
			m += 1
		
		var str
		if (s < 10): str = "0" + str(s)
		else: str = str(s)
		var s2 = global.time
		s2 = floor(s2 / 1000)
		var m2 = 0
		while (s2 > 59):
		
			s2 -= 60
			m2 += 1
		
		var str2
		if (s2 < 10): str2 = "0" + str(s2)
		else: str2 = str(s2)
		draw_text.draw_text(40, n+16, "TIME:  " + str(m) + ":" + str + " / " + str(m2) + ":" + str2, "time")
		draw_text.draw_text(40, n+24, "SAVES: " + str(global.damsels), "saves")
		if (global.gamepad_on): draw_text.draw_text(24, 216, "START-RETURN  BOMB-DIE  ROPE-QUIT")
		else: draw_text.draw_text(40, 216, "ESC-RETURN  F1-DIE  F10-QUIT")
	
	else:
	
		if (global.gamepad_on): draw_text.draw_text(64, 216, "START-RETURN  ROPE-QUIT")
		else: draw_text.draw_text(80, 216, "ESC-RETURN  F10-QUIT")


func draw_pause_screen_rect():
	if (gml.instance_exists("player1")):
		var player1 = gml.get_instance("player1") #---[FLAG] may need to change this for multiplayer
		if (not player1.dead):
			if (global.dark_level): gml.draw_set_alpha(1)
			else: gml.draw_set_alpha(0.9)
			gml.draw_set_color(gml.c_black)
			draw_rectangle.draw_rectangle(0, 0, 320, 240, false) #--- changed screen variables to pixel counts
