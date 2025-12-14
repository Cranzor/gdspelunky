extends Node2D

@onready var draw_text: Node2D = $DrawText

func draw_game_over_screen() -> void: #--- moved from game object draw function
	if (gml.instance_exists("player1")):
		
		var game = gml.get_instance("game")
		var player1 = gml.get_instance("player1")
		var str
		var str_len
		var n
		
		if (player1.dead or InLevel.is_room("moon")):
			
			if (InLevel.is_level()):
			
				if (game.draw_status > 0):
				
					gml.draw_set_font(global.my_font)
					gml.draw_set_color(gml.c_yellow)
					draw_text.draw_text(88, 32+16, "GAME OVER")
				
				if (game.draw_status > 1):
				
					gml.draw_set_font(global.my_font_small)
					gml.draw_set_color(gml.c_yellow)
					draw_text.draw_text(88, 64+16, "FINAL SCORE:")
				
				if (game.draw_status > 2):
				
					gml.draw_set_font(global.my_font)
					gml.draw_set_color(gml.c_white)
					draw_text.draw_text(88, 72+16, "$" + str(game.money_count), "money_count")
					
					gml.draw_set_font(global.my_font_small)
					gml.draw_set_color(gml.c_yellow)
					if (global.custom_level):
					
						if (global.test_level != ""):
							if (global.gamepad_on): str = "PRESS " + MiscScripts.scr_get_joy(global.joy_attack_val) + " TO EDIT LEVEL."
							else: str = "PRESS " + MiscScripts.scr_get_key(global.key_attack_val) + " TO EDIT LEVEL."
						
						else:
						
							if (global.gamepad_on): str = "PRESS " + MiscScripts.scr_get_joy(global.joy_attack_val) + " TO LOAD ANOTHER LEVEL."
							else: str = "PRESS " + MiscScripts.scr_get_key(global.key_attack_val) + " TO LOAD ANOTHER LEVEL."
						
						str_len = gml.string_length(str)*8
						n = 320 - str_len
						n = ceil(n / 2)
						draw_text.draw_text(n, 120, str)
					
					else:
					
						if (global.gamepad_on): str = "PRESS " + MiscScripts.scr_get_joy(global.joy_attack_val) + " FOR HIGH SCORES."
						else: str = "PRESS " + MiscScripts.scr_get_key(global.key_attack_val) + " FOR HIGH SCORES."
						str_len = gml.string_length(str)*8
						n = 320 - str_len
						n = ceil(n / 2)
						draw_text.draw_text(n, 120, str)
			
			
			elif (InLevel.is_room("sun")):
				var sun_room = gml.get_instance("sun_room")
			
				if (game.draw_status > 0):
				
					gml.draw_set_font(global.my_font)
					gml.draw_set_color(gml.c_yellow)
					draw_text.draw_text(88, 32+16, "FINISHED!")
				
				if (game.draw_status > 1):
				
					gml.draw_set_font(global.my_font_small)
					gml.draw_set_color(gml.c_yellow)
					if (sun_room.highscore): str = "YOU SET A NEW RECORD!"
					else: str = "BETTER LUCK NEXT TIME..."
					str_len = gml.string_length(str)*8
					n = 320 - str_len
					n = ceil(n / 2)
					draw_text.draw_text(n, 64+16, str)
					
			
			elif (InLevel.is_room("moon")):
				var moon_room = gml.get_instance("moon_room")
			
				if (moon_room.timer < 0):
				
					if (game.draw_status > 0):
					
						gml.draw_set_font(global.my_font)
						gml.draw_set_color(gml.c_yellow)
						draw_text.draw_text(88, 32+16, "FINISHED!")
					
					if (game.draw_status > 1):
					
						gml.draw_set_font(global.my_font_small)
						gml.draw_set_color(gml.c_yellow)
						if (moon_room.highscore): str = "YOU SET A NEW RECORD!"
						else: str = "BETTER LUCK NEXT TIME..."
						str_len = gml.string_length(str)*8
						n = 320 - str_len
						n = ceil(n / 2)
						draw_text.draw_text(n, 64+16, str)
					
				
			
			elif (InLevel.is_room("stars")):
				var stars_room = gml.get_instance("stars_room")
			
				if (game.draw_status > 0):
				
					gml.draw_set_font(global.my_font)
					gml.draw_set_color(gml.c_yellow)
					draw_text.draw_text(88, 32+16, "FINISHED!")
				
				if (game.draw_status > 1):
				
					gml.draw_set_font(global.my_font_small)
					gml.draw_set_color(gml.c_yellow)
					if (stars_room.highscore): str = "YOU SET A NEW RECORD!"
					else: str = "BETTER LUCK NEXT TIME..."
					str_len = gml.string_length(str)*8
					n = 320 - str_len
					n = ceil(n / 2)
					draw_text.draw_text(n, 64+16, str)
