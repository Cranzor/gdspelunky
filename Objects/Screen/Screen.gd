extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

#func begin_step():
##if (not surface_exists(p_surf)): p_surf = surface_create(screen_w, screen_h) #--- not needed
##if (not surface_exists(screen)): screen = surface_create(screen_w, screen_h)
##if (not surface_exists(dark_surf)): dark_surf = surface_create(screen_w, screen_h)
#
	#if (ControlScripts.check_bomb_pressed()):
#
		#if (paused and global.plife > 0 and InLevel.is_level()):
		#
			#instance_activate_all()
			#paused = false
			#
			#var all_player1s = gml.get_all_instances("player1")
			#for player1_instance in all_player1s:
				#if (player1_instance.facing == 18): player1_instance.x_vel = -3
				#else: player1_instance.x_vel = 3
				#player1_instance.y_vel = -6
				#global.plife = -99
			#
		#
			#if (SS.is_sound_playing(global.mus_title)): SS_Set_sound_vol(global.mus_title, 2000 + 8000 * (global.music_vol/18))
			#if (SS.is_sound_playing(global.mus_cave)): SS_Set_sound_vol(global.mus_cave, 2000 + 8000 * (global.music_vol/18))
			#if (SS.is_sound_playing(global.mus_lush)): SS_Set_sound_vol(global.mus_lush, 2000 + 8000 * (global.music_vol/18))
			#if (SS.is_sound_playing(global.mus_ice)): SS_Set_sound_vol(global.mus_ice, 2000 + 8000 * (global.music_vol/18))
			#if (SS.is_sound_playing(global.mus_temple)): SS_Set_sound_vol(global.mus_temple, 2000 + 8000 * (global.music_vol/18))
			#if (SS.is_sound_playing(global.mus_boss)): SS_Set_sound_vol(global.mus_boss, 2000 + 8000 * (global.music_vol/18))
			#
			#if (not global.has_ankh): Audio.stop_all_music()
		#
#
	#elif (ControlScripts.check_rope_pressed()):
#
		#if (paused):
			#get_root().quit()
#
	#elif (ControlScripts.check_start_pressed()):
#
		#if (not paused and can_pause):
		#
			#if (gml.instance_exists("player1")):
			#
				#if (not player1.dead):
				#
					##surface_set_target(p_surf) #--- not needed
					##screen_redraw()
					#
					#if (global.dark_level): $PauseUI/Background.color = Color(0, 0, 0, 1)
					#else: $PauseUI/Background.color = Color(0, 0, 0, 0.9)
					##draw_set_color(c_black) #--- not needed
					##draw_rectangle(0, 0, screen_w*screen_scale, screen_h*screen_scale, false) --- not needed
					#draw_set_alpha(1)
					#if (SS.is_sound_playing(global.mus_title)): SS_Set_sound_vol(global.mus_title, 0)
					#if (SS.is_sound_playing(global.mus_cave)): SS_Set_sound_vol(global.mus_cave, 0)
					#if (SS.is_sound_playing(global.mus_lush)): SS_Set_sound_vol(global.mus_lush, 0)
					#if (SS.is_sound_playing(global.mus_ice)): SS_Set_sound_vol(global.mus_ice, 0)
					#if (SS.is_sound_playing(global.mus_temple)): SS_Set_sound_vol(global.mus_temple, 0)
					#if (SS.is_sound_playing(global.mus_boss)): SS_Set_sound_vol(global.mus_boss, 0)
					#py = player1.position.y
					#instance_deactivate_all(true)
					#instance_activate_object(gamepad)
					#paused = true
				#
			#
		#
		#else:
		#
			#instance_activate_all()
			#if (SS.is_sound_playing(global.mus_title)): SS_Set_sound_vol(global.mus_title, 2000 + 8000 * (global.music_vol/18))
			#if (SS.is_sound_playing(global.mus_cave)): SS_Set_sound_vol(global.mus_cave, 2000 + 8000 * (global.music_vol/18))
			#if (SS.is_sound_playing(global.mus_lush)): SS_Set_sound_vol(global.mus_lush, 2000 + 8000 * (global.music_vol/18))
			#if (SS.is_sound_playing(global.mus_ice)): SS_Set_sound_vol(global.mus_ice, 2000 + 8000 * (global.music_vol/18))
			#if (SS.is_sound_playing(global.mus_temple)): SS_Set_sound_vol(global.mus_temple, 2000 + 8000 * (global.music_vol/18))
			#if (SS.is_sound_playing(global.mus_boss)): SS_Set_sound_vol(global.mus_boss, 2000 + 8000 * (global.music_vol/18))
			#paused = false
		#
#
#
	## this draws the surface on the screen
	##surface_reset_target() #--- not needed
	##draw_clear(0) #--- not needed
	#if (paused):
#
		##surface_set_target(p_surf) #--- not needed
		##draw_set_font(global.my_font)
		##draw_set_color(c_white)
		##draw_text(112, 200, "PAUSED") #--- set in the editor
		##draw_set_font(global.my_fontSmall)
		#if (InLevel.is_level()):
		#
			#var n = 128-24
			#if (global.curr_level < 1): $PauseUI/Level.text = "TUTORIAL CAVE"
			#elif (gml.is_room("r_load_level")): $PauseUI/Level.text = "LEVEL: " + global.custom_level_name + " BY " + global.custom_level_author
			#else: $PauseUI/Level.text = "LEVEL " + str(global.curr_level)
			#$PauseUI/Depth.text = "DEPTH: " + str((174.8*(global.curr_level-1)+(py+8)*0.34) + " FEET")
			#$PauseUI/Money.text = "MONEY: " + str(global.money)
			#$PauseUI/Kills.text = "KILLS: " + str(global.kills)
			#s = global.xtime
			#s = floor(s / 1000)
			#m = 0
			#while (s > 59):
			#
				#s -= 60
				#m += 1
			#
			#if (s < 10): str = "0" + str(s)
			#else: str = str(s)
			#s2 = global.time
			#s2 = floor(s2 / 1000)
			#m2 = 0
			#while (s2 > 59):
			#
				#s2 -= 60
				#m2 += 1
			#
			#if (s2 < 10): str2 = "0" + str(s2)
			#else: str2 = str(s2)
			#$PauseUI/Time.text = "TIME:  " + str(m) + ":" + str + " / " + str(m2) + ":" + str2
			#$PauseUI/Saves.text = "SAVES: " + str(global.damsels)
			#if (global.gamepad_on):
				#$PauseUI/ReturnDieQuit.text = "START-RETURN  BOMB-DIE  ROPE-QUIT"
				#$PauseUI/ReturnDieQuit.position = Vector2(24, 216)
			#else:
				#$PauseUI/ReturnDieQuit.text = "ESC-RETURN  F1-DIE  F10-QUIT"
				#$PauseUI/ReturnDieQuit.position = Vector2(40, 216)
		#
		#else:
		#
			#if (global.gamepad_on):
				#$PauseUI/ReturnDieQuit.text = "START-RETURN  ROPE-QUIT"
				#$PauseUI/ReturnDieQuit.position = Vector2(64, 216)
			#else:
				#$PauseUI/ReturnDieQuit.text = "START-RETURN  ROPE-QUIT"
				#$PauseUI/ReturnDieQuit.position = Vector2(80, 216)
		#
		##surface_reset_target() #--- not needed
		##draw_surface_stretched(p_surf,screen_x,screen_y,screen_w*screen_scale,screen_h*screen_scale)
#
	#else:
#
		#if (gml.is_room("r_title")):
		#
			##surface_set_target(screen) #---not needed
			##draw_set_alpha(title.darkness) --- [FLAG] check darkness variable of Title object
			##draw_set_color(c_black)
			#if (title.darkness > 0):
				#$TitleScreen/Background.visible = true
			#else:
				#$TitleScreen/Background.visible = false
				#
			#if (title.state == 1):
			#
				##draw_set_font(global.my_font_small) #--- not needed
				##draw_set_color(c_white)
				#$TitleScreen/DerekYuPresents.text = "DEREK YU PRESENTS"
			#
			##draw_set_alpha(1) --- should not be needed for anything
			##draw_set_blend_mode_ext(bm_src_color,bm_one)
			##draw_set_color(c_black)
			##draw_rectangle(0, 0, screen_w,screen_h, 0)
			##draw_set_blend_%e(bm_normal)
			##surface_reset_target()
		#
		#elif (InLevel.is_level() and gml.instance_exists("player1")):
			##get nearest instance
			#if (global.dark_level and not player1.dead):
			#
				##surface_set_target(dark_surf) #--- not needed
				##draw_set_color(c_black)
				##draw_rectangle(0, 0, screen_w, screen_h, false)
				##draw_set_color(make_color_rgb(255-255*level.darkness,255-255*level.darkness,255)) #--- [FLAG] used this code for RGB calculation
				#
				#if (gml.instance_exists("lamp_red")):
					#
					#var all_player1s = gml.get_all_instances("player1")
					#for player1_instance in all_player1s:
					#
						#dist_to_lamp = gml.distance_tobject(lamp_red)
						#if (dist_to_lamp <= 96):
						#
							##draw_set_color(make_color_rgb(255-dist_to_lamp,120-(96-dist_to_lamp),120-(96-dist_to_lamp))) #--- [FLAG] used this code for RGB calculation
							#pass
					#
				#
				#if (gml.instance_exists("lamp_red_item")):
				#
					#var all_player1s = gml.get_all_instances("player1")
					#for player1_instance in all_player1s:
					#
						#dist_to_lamp = gml.distance_tobject(lamp_red_item)
						#if (dist_to_lamp <= 96):
						#
							##draw_set_color(make_color_rgb(255-dist_to_lamp,120-(96-dist_to_lamp),120-(96-dist_to_lamp)))  #--- [FLAG] used this code for RGB calculation
							#pass
						#
					#
				#
				#draw_circle(player1.position.x-view_xview[0], player1.position.y-view_yview[0], 96-64*level.darkness, false)
				#with flare
				#
					#draw_circle(position.x-view_xview[0], position.y-view_yview[0], 96, false)
				#
				#with flare_crate
				#
					#draw_circle(position.x-view_xview[0], position.y-view_yview[0], 96, false)
				#
				#with lamp
				#
					#draw_circle((position.x+8)-view_xview[0], (position.y+8)-view_yview[0], 96, false)
				#
				#with lamp_item
				#
					#draw_circle(position.x-view_xview[0], (position.y-4)-view_yview[0], 96, false)
				#
				#with arrow_trap_left_lit
				#
					#draw_circle((position.x+8)-view_xview[0], (position.y+8)-view_yview[0], 32, false)
				#
				#with arrow_trap_right_lit
				#
					#draw_circle((position.x+8)-view_xview[0], (position.y+8)-view_yview[0], 32, false)
				#
				#with tiki_torch
				#
					#draw_circle((position.x+8)-view_xview[0], (position.y+8)-view_yview[0], 32, false)
				#
				#with fire_frog
				#
					#draw_circle((position.x+8)-view_xview[0], (position.y+8)-view_yview[0], 32, false)
				#
				#with spear_trap_lit
				#
					#draw_circle((position.x+8)-view_xview[0], (position.y+8)-view_yview[0], 32, false)
				#
				#with smash_trap_lit
				#
					#draw_circle((position.x+8)-view_xview[0], (position.y+8)-view_yview[0], 32, false)
				#
				#with explosion
				#
					#draw_circle(position.x-view_xview[0], position.y-view_yview[0], 96, false)
				#
				#with lava
				#
					#draw_circle((position.x+8)-view_xview[0], (position.y+8)-view_yview[0], 32, false)
				#
				#with scarab
				#
					#draw_circle((position.x+8)-view_xview[0], (position.y+8)-view_yview[0], 16, false)
				#
				#with ghost
				#
					#draw_circle((position.x+16)-view_xview[0], (position.y+16)-view_yview[0], 64, false)
				#
				#surface_set_target(screen)
				#draw_set_blend_%e_ext(bm_dest_color, bm_zero)
				#draw_set_alpha(1)
				#draw_surface(dark_surf, 0, 0)
				#draw_set_blend_%e(bm_normal)
			#
			#surface_set_target(screen)
			#scr_draw_hud()
			#if (global.message_timer > 0):
			#
				#draw_set_font(global.my_fontSmall)
				#draw_set_color(c_white)
				#str_len = string_length(global.message)*8
				#n = 320 - str_len
				#n = ceil(n / 2)
				#draw_text(n, 216, str\(global.message))
#
				#if (not gml.is_room("r_tutorial")): draw_set_color(c_yellow)
				#str_len = string_length(global.message2)*8
				#n = 320 - str_len
				#n = ceil(n / 2)
				#draw_text(n, 224, str\(global.message2))
		#
				#global.message_timer -= 1
			#
			#draw_set_blend_%e_ext(bm_src_color,bm_one)
			#draw_set_color(c_black)
			#draw_rectangle(0, 0, screen_w,screen_h, 0)
			#draw_set_blend_%e(bm_normal)
			#surface_reset_target()
		#
		#draw_set_blend_%e_ext(bm_one, bm_zero) # According to Chevy_ray, this should fix the black box glitch
		#draw_surface_stretched(screen,screen_x,screen_y,screen_w*screen_scale,screen_h*screen_scale)
		#draw_set_blend_%e(bm_normal) # According to Chevy_ray, this should fix the black box glitch
#
	#screen_refresh()
