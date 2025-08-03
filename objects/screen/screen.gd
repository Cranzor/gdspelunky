extends GMObject
@onready var circles = $BackBufferCopy/Circles
@onready var dark_surf = $BackBufferCopy/DarkSurf


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions

##---Handles title introduction screen, lights in dark levels, message displays, and pause menu

var py
var can_pause
var paused
var enabled


func _input(event):
	if Input.is_key_pressed(KEY_F1): #---[FLAG] fix this
		key_f1_pressed()
	
	if Input.is_key_pressed(KEY_F10):
		key_f10_pressed()


#--- most things in this script are GameMaker specific and therefore not necessary
func create():
	StatTracking.scr_read_stats()
	MiscScripts.scr_init()
	
	#if global.fullscreen:   #--- two if statements here regarding toggling fullscreen
		#action_fullscreen()
		
	py = 0 # player Y coord

	# screen base(view_wview and view_hview)
	#screen_x = 0
	#screen_y = 0
	#screen_w = 320
	#screen_h = 240
	#screen_scale = global.screen_scale

	enabled = true

	# pause
	#p_surf = surface_create(screen_w,screen_h)
	can_pause = true
	paused = false

	# create a surface for the whole screen to be drawn on
	#screen = surface_create(screen_w,screen_h)
	#dark_surf = surface_create(screen_w,screen_h)

	#if (screen):
#
		#surface_set_target("screen")
		#draw_clear(c_black)


	# set up rooms
	#var w,h
	#w = 320 * screen_scale
	#h = 240 * screen_scale
	#room_set_view(r_intro,0,true,0,0,320,240,0,0,w,h,128,0,-1,-1,p_dummy3)
	#room_set_view(r_credits1,0,true,0,0,320,240,0,0,w,h,0,0,0,0,noone)
	#room_set_view(r_credits2,0,true,0,0,320,240,0,0,w,h,0,0,0,0,noone)
	#room_set_view(r_title,0,true,0,0,320,240,0,0,w,h,0,0,0,0,noone)
	#room_set_view(r_highscores,0,true,0,0,320,240,0,0,w,h,0,0,0,0,noone)
	#room_set_view(r_sun,0,true,0,0,320,240,0,0,w,h,0,0,0,0,noone)
	#room_set_view(r_moon,0,true,0,0,320,240,0,0,w,h,0,0,0,0,noone)
	#room_set_view(r_stars,0,true,0,0,320,240,0,0,w,h,0,0,0,0,noone)
	#room_set_view(r_level_editor,0,true,0,0,320,240,0,0,w,h,0,0,-1,-1,noone)
	#room_set_view(r_load_level,0,true,0,0,320,240,0,0,w,h,128,96,-1,-1,player1)
	#room_set_view(r_tutorial,0,true,0,0,320,240,0,0,w,h,128,96,-1,-1,player1)
	#room_set_view(r_level,0,true,0,0,320,240,0,0,w,h,128,96,-1,-1,player1)
	#room_set_view(r_level2,0,true,0,0,320,240,0,0,w,h,128,96,-1,-1,player1)
	#room_set_view(r_level3,0,true,0,0,320,240,0,0,w,h,128,96,-1,-1,player1)
	#room_set_view(r_olmec,0,true,0,0,320,240,0,0,w,h,128,96,-1,-1,player1)
	#room_set_view(r_transition1,0,true,0,0,320,240,0,0,w,h,0,0,0,0,noone)
	#room_set_view(r_transition1x,0,true,0,0,320,240,0,0,w,h,0,0,0,0,noone)
	#room_set_view(r_transition2,0,true,0,0,320,240,0,0,w,h,0,0,0,0,noone)
	#room_set_view(r_transition2x,0,true,0,0,320,240,0,0,w,h,0,0,0,0,noone)
	#room_set_view(r_transition3,0,true,0,0,320,240,0,0,w,h,0,0,0,0,noone)
	#room_set_view(r_transition3x,0,true,0,0,320,240,0,0,w,h,0,0,0,0,noone)
	#room_set_view(r_transition4,0,true,0,0,320,240,0,0,w,h,0,0,0,0,noone)
	#room_set_view(r_end,0,true,0,0,320,240,0,0,w,h,0,0,0,0,p_dummy)
	#room_set_view(r_end2,0,true,0,0,320,240,0,0,w,h,0,0,0,0,noone)
	#room_set_view(r_end3,0,true,0,0,320,240,0,0,w,h,0,0,0,0,noone)
	#room_set_view(r_endCustom,0,true,0,0,320,240,0,0,w,h,0,0,0,0,noone)

	# this will destroy the screen object if surfaces are not supported on the graphics card, reverting to the viewport method:
	#if (screen == -1): game_end()
	#else: room_goto_next()

func begin_step():
#if (not surface_exists(p_surf)): p_surf = surface_create(screen_w, screen_h) #--- not needed
#if (not surface_exists(screen)): screen = surface_create(screen_w, screen_h)
#if (not surface_exists(dark_surf)): dark_surf = surface_create(screen_w, screen_h)

	if (ControlScripts.check_bomb_pressed()):

		if (paused and global.plife > 0 and InLevel.is_level()):
		
			gml.instance_activate_all()
			paused = false
			
			var all_player1s = gml.get_all_instances("player1")
			for player1_instance in all_player1s:
				if (player1_instance.facing == 18): player1_instance.x_vel = -3
				else: player1_instance.x_vel = 3
				player1_instance.y_vel = -6
				global.plife = -99
			
		
			if (SS.is_sound_playing(global.mus_title)): SS.set_sound_vol(global.mus_title, 2000 + 8000 * (global.music_vol/18))
			if (SS.is_sound_playing(global.mus_cave)): SS.set_sound_vol(global.mus_cave, 2000 + 8000 * (global.music_vol/18))
			if (SS.is_sound_playing(global.mus_lush)): SS.set_sound_vol(global.mus_lush, 2000 + 8000 * (global.music_vol/18))
			if (SS.is_sound_playing(global.mus_ice)): SS.set_sound_vol(global.mus_ice, 2000 + 8000 * (global.music_vol/18))
			if (SS.is_sound_playing(global.mus_temple)): SS.set_sound_vol(global.mus_temple, 2000 + 8000 * (global.music_vol/18))
			if (SS.is_sound_playing(global.mus_boss)): SS.set_sound_vol(global.mus_boss, 2000 + 8000 * (global.music_vol/18))
			
			if (not global.has_ankh): Audio.stop_all_music()
		

	elif (ControlScripts.check_rope_pressed()):

		if (paused):
			gml.game_end()

	elif (ControlScripts.check_start_pressed()):

		if (not paused and can_pause):
		
			if (gml.instance_exists("player1")):
				var player1 = gml.get_instance("player1") #---[FLAG] may need to change this for multiplayer
				if (not player1.dead):
					
					gml.surface_set_target("p_surf")
					#screen_redraw()
					
					if (global.dark_level): gml.draw_set_alpha(1)
					else: gml.draw_set_alpha(0.9)
					gml.draw_set_color(gml.c_black)
					#gml.draw_rectangle(0, 0, screen_w*screen_scale, screen_h*screen_scale, false)
					gml.draw_rectangle(0, 0, 320, 240, false, self) #--- changed screen variables to pixel counts
					gml.draw_set_alpha(1)
					if (SS.is_sound_playing(global.mus_title)): SS.set_sound_vol(global.mus_title, 0)
					if (SS.is_sound_playing(global.mus_cave)): SS.set_sound_vol(global.mus_cave, 0)
					if (SS.is_sound_playing(global.mus_lush)): SS.set_sound_vol(global.mus_lush, 0)
					if (SS.is_sound_playing(global.mus_ice)): SS.set_sound_vol(global.mus_ice, 0)
					if (SS.is_sound_playing(global.mus_temple)): SS.set_sound_vol(global.mus_temple, 0)
					if (SS.is_sound_playing(global.mus_boss)): SS.set_sound_vol(global.mus_boss, 0)
					py = player1.position.y
					gml.instance_deactivate_all(true)
					gml.instance_activate_object("gamepad")
					paused = true
				
			
		
		else:
		
			gml.instance_activate_all()
			if (SS.is_sound_playing(global.mus_title)): SS.set_sound_vol(global.mus_title, 2000 + 8000 * (global.music_vol/18))
			if (SS.is_sound_playing(global.mus_cave)): SS.set_sound_vol(global.mus_cave, 2000 + 8000 * (global.music_vol/18))
			if (SS.is_sound_playing(global.mus_lush)): SS.set_sound_vol(global.mus_lush, 2000 + 8000 * (global.music_vol/18))
			if (SS.is_sound_playing(global.mus_ice)): SS.set_sound_vol(global.mus_ice, 2000 + 8000 * (global.music_vol/18))
			if (SS.is_sound_playing(global.mus_temple)): SS.set_sound_vol(global.mus_temple, 2000 + 8000 * (global.music_vol/18))
			if (SS.is_sound_playing(global.mus_boss)): SS.set_sound_vol(global.mus_boss, 2000 + 8000 * (global.music_vol/18))
			paused = false
	


	# this draws the surface on the screen
	gml.surface_reset_target()
	#draw_clear(0) #--- not needed
	if (paused):

		gml.surface_set_target("p_surf")
		gml.draw_set_font(global.my_font)
		gml.draw_set_color(gml.c_white)
		gml.draw_text(112, 200, "PAUSED", "", self)
		gml.draw_set_font(global.my_font_small)
		if (InLevel.is_level()):
		
			var n = 128-24
			if (global.curr_level < 1): gml.draw_text(40, n-24, "TUTORIAL CAVE", "", self)
			elif (InLevel.is_room("load_level")): gml.draw_text(40, n-24, "LEVEL: " + global.custom_level_name + " BY " + global.custom_level_author, "", self)
			else: gml.draw_text(40, n-24, "LEVEL " + str(global.curr_level), "", self)
			gml.draw_text(40, n-16, "DEPTH: " + str(174.8*(global.curr_level-1)+(py+8)*0.34) + " FEET", "", self)
			gml.draw_text(40, n, "MONEY: " + str(global.money), "", self)
			gml.draw_text(40, n+8, "KILLS: " + str(global.kills), "", self)
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
			gml.draw_text(40, n+16, "TIME:  " + str(m) + ":" + str + " / " + str(m2) + ":" + str2, "", self)
			gml.draw_text(40, n+24, "SAVES: " + str(global.damsels), "", self)
			if (global.gamepad_on): gml.draw_text(24, 216, "START-RETURN  BOMB-DIE  ROPE-QUIT", "", self)
			else: gml.draw_text(40, 216, "ESC-RETURN  F1-DIE  F10-QUIT", "", self)
		
		else:
		
			if (global.gamepad_on): gml.draw_text(64, 216, "START-RETURN  ROPE-QUIT", "", self)
			else: gml.draw_text(80, 216, "ESC-RETURN  F10-QUIT", "", self)
		
		gml.surface_reset_target()
		#draw_surface_stretched(p_surf,screen_x,screen_y,screen_w*screen_scale,screen_h*screen_scale)
		gml.draw_surface("p_surf",320,240)

	else:

		if (InLevel.is_room("title") and get_tree().current_scene != null): #--- adding this check for now. otherwise title becomes a null instance
			var title = gml.get_instance("title")
			gml.surface_set_target("screen")
			gml.draw_set_alpha(title.darkness)
			gml.draw_set_color(gml.c_black)
			#if (title.darkness > 0): #-- -removing if statement to always draw this rectangle on the title screen. simplifies things so we don't have to deal with blend modes etc. below
				#gml.draw_rectangle(0, 0, screen_w, screen_h, false)
			gml.draw_rectangle(0, 0, 320, 240, false, self) #--- changed screen variables to pixel counts
			if (title.state == 1):
			
				gml.draw_set_font(global.my_font_small)
				gml.draw_set_color(gml.c_white)
				gml.draw_text(88, 48, "DEREK YU PRESENTS", "", self)
			
			#gml.draw_set_alpha(1)
			##draw_set_blend_mode_ext(bm_src_color,bm_one)
			#gml.draw_set_color(gml.c_black)
			##gml.draw_rectangle(0, 0, screen_w,screen_h, 0)
			#gml.draw_rectangle(0, 0, 320, 240, 0, self) #--- changed screen variables to pixel counts
			#draw_set_blend_mode(bm_normal)
			gml.surface_reset_target()
		
		elif (InLevel.is_level() and gml.instance_exists("player1")):
			var player1 = gml.get_instance("player1") #---[FLAG] may need to adjust this for multiplayer
			
			#get nearest instance
			if (global.dark_level and not player1.dead):
				var level = gml.get_instance("level")
				gml.surface_set_target("dark_surf")
				gml.draw_set_color(gml.c_black)
				gml.draw_rectangle(0, 0, gml.screen_w, gml.screen_h, false, self)
				gml.draw_set_color(gml.make_color_rgb(255-255*level.darkness,255-255*level.darkness,255))
				
				if (gml.instance_exists("lamp_red")):
					var lamp_red = gml.get_instance("lamp_red")
					
					var all_player1s = gml.get_all_instances("player1")
					for player1_instance in all_player1s:
					
						var dist_to_lamp = gml.distance_to_object(lamp_red, player1_instance)
						if (dist_to_lamp <= 96):
						
							gml.draw_set_color(gml.make_color_rgb(255-dist_to_lamp,120-(96-dist_to_lamp),120-(96-dist_to_lamp)))
					
				
				if (gml.instance_exists("lamp_red_item")):
					var lamp_red_item = gml.get_instance("lamp_red_item")
					
					var all_player1s = gml.get_all_instances("player1")
					for player1_instance in all_player1s:
					
						var dist_to_lamp = gml.distance_to_object(lamp_red_item, player1_instance)
						if (dist_to_lamp <= 96):
						
							gml.draw_set_color(gml.make_color_rgb(255-dist_to_lamp,120-(96-dist_to_lamp),120-(96-dist_to_lamp)))
						
				
				gml.draw_circle(player1.position.x-gml.view("xview"), player1.position.y-gml.view("yview"), 96-64*level.darkness, false)
					
				var all_flares = gml.get_all_instances("flare")
				for flare_instance in all_flares:
				
					gml.draw_circle(flare_instance.position.x-gml.view("xview"), flare_instance.position.y-gml.view("yview"), 96, false)
				
				var all_flare_crates = gml.get_all_instances("flare_crate")
				for flare_crate_instance in all_flare_crates:
				
					gml.draw_circle(flare_crate_instance.position.x-gml.view("xview"), flare_crate_instance.position.y-gml.view("yview"), 96, false)
				
				var all_lamps = gml.get_all_instances("lamp")
				for lamp_instance in all_lamps:
				
					gml.draw_circle((lamp_instance.position.x+8)-gml.view("xview"), (lamp_instance.position.y+8)-gml.view("yview"), 96, false)
				
				var all_lamp_items = gml.get_all_instances("lamp_item")
				for lamp_item_instance in all_lamp_items:
				
					gml.draw_circle(lamp_item_instance.position.x-gml.view("xview"), (lamp_item_instance.position.y-4)-gml.view("yview"), 96, false)
				
				var all_arrow_trap_left_lits = gml.get_all_instances("arrow_trap_left_lit")
				for arrow_trap_left_lit_instance in all_arrow_trap_left_lits:
				
					gml.draw_circle((arrow_trap_left_lit_instance.position.x+8)-gml.view("xview"), (arrow_trap_left_lit_instance.position.y+8)-gml.view("yview"), 32, false)
				
				var all_arrow_trap_right_lits = gml.get_all_instances("arrow_trap_right_lit")
				for arrow_trap_right_lit_instance in all_arrow_trap_right_lits:
				
					gml.draw_circle((arrow_trap_right_lit_instance.position.x+8)-gml.view("xview"), (arrow_trap_right_lit_instance.position.y+8)-gml.view("yview"), 32, false)
				
				var all_tiki_torchs = gml.get_all_instances("tiki_torch")
				for tiki_torch_instance in all_tiki_torchs:
				
					gml.draw_circle((tiki_torch_instance.position.x+8)-gml.view("xview"), (tiki_torch_instance.position.y+8)-gml.view("yview"), 32, false)
				
				var all_fire_frogs = gml.get_all_instances("fire_frog")
				for fire_frog_instance in all_fire_frogs:
				
					gml.draw_circle((fire_frog_instance.position.x+8)-gml.view("xview"), (fire_frog_instance.position.y+8)-gml.view("yview"), 32, false)
				
				var all_spear_trap_lits = gml.get_all_instances("spear_trap_lit")
				for spear_trap_lit_instance in all_spear_trap_lits:
				
					gml.draw_circle((spear_trap_lit_instance.position.x+8)-gml.view("xview"), (spear_trap_lit_instance.position.y+8)-gml.view("yview"), 32, false)
				
				var all_smash_trap_lits = gml.get_all_instances("smash_trap_lit")
				for smash_trap_lit_instance in all_smash_trap_lits:
				
					gml.draw_circle((smash_trap_lit_instance.position.x+8)-gml.view("xview"), (smash_trap_lit_instance.position.y+8)-gml.view("yview"), 32, false)
				
				var all_explosions = gml.get_all_instances("explosion")
				for explosion_instance in all_explosions:
				
					gml.draw_circle(explosion_instance.position.x-gml.view("xview"), explosion_instance.position.y-gml.view("yview"), 96, false)
				
				var all_lava = gml.get_all_instances("lava")
				for lava_instance in all_lava:
				
					gml.draw_circle((lava_instance.position.x+8)-gml.view("xview"), (lava_instance.position.y+8)-gml.view("yview"), 32, false)
				
				var all_scarabs = gml.get_all_instances("scarab")
				for scarab_instance in all_scarabs:
				
					gml.draw_circle((scarab_instance.position.x+8)-gml.view("xview"), (scarab_instance.position.y+8)-gml.view("yview"), 16, false)
				
				var all_ghosts = gml.get_all_instances("ghost")
				for ghost_instance in all_ghosts:
				
					gml.draw_circle((ghost_instance.position.x+16)-gml.view("xview"), (ghost_instance.position.y+16)-gml.view("yview"), 64, false)
				
				gml.surface_set_target("screen")
				#draw_set_blend_mode_ext(bm_dest_color, bm_zero)
				gml.draw_set_alpha(1)
				gml.draw_surface("dark_surf", 0, 0)
				#draw_set_blend_mode(bm_normal)
			
			gml.surface_set_target("screen")
			MiscScripts.scr_draw_hud()
			if (global.message_timer > 0):
			
				gml.draw_set_font(global.my_font_small)
				gml.draw_set_color(gml.c_white)
				var str_len = gml.string_length(global.message)*8
				var n = 320 - str_len
				n = ceil(n / 2)
				gml.draw_text(n, 216, str(global.message), "global_message", self)

				var text_color = gml.c_white
				if (not InLevel.is_room("tutorial")): gml.c_yellow
				str_len = gml.string_length(global.message2)*8
				n = 320 - str_len
				n = ceil(n / 2)
				gml.draw_text(n, 224, str(global.message2), "global_message2", self)
		
				global.message_timer -= 1
			
			#draw_set_blend_mode_ext(bm_src_color,bm_one)
			#draw_set_color(c_black)
			#draw_rectangle(0, 0, screen_w,screen_h, 0)
			#draw_set_blend_mode(bm_normal)
			gml.surface_reset_target()
		#
		#draw_set_blend_mode_ext(bm_one, bm_zero) # According to Chevy_ray, this should fix the black box glitch
		#draw_surface_stretched(screen,screen_x,screen_y,screen_w*screen_scale,screen_h*screen_scale)
		gml.draw_surface("screen", 320, 240)
		#draw_set_blend_mode(bm_normal) # According to Chevy_ray, this should fix the black box glitch

	#screen_refresh()

#func close_button(): #--- not needed as this is what Godot does by default
	#game_end()

#func end_step(): #--- also not needed
	# this sets surface 'screen' as the drawing target for everything in the game, so all drawing will be done on this surface and not on the game screen
	#surface_set_target("screen")

func game_end():
	#if (surface_exists(screen)): #--- not needed
#
		#surface_set_target("screen")
		#draw_clear(0)
		#surface_free(screen)
#
	#if (surface_exists(p_surf)):
#
		#surface_set_target("p_surf")
		#draw_clear(0)
		#surface_free(p_surf)
#
	#if (surface_exists(dark_surf)):
#
		#surface_set_target("dark_surf")
		#draw_clear(0)
		#surface_free(dark_surf)

	#Audio.stop_all_music()
	#SS_Unload()
	StatTracking.scr_write_stats()

func key_f1_pressed():
	if (paused and global.plife > 0 and InLevel.is_level()):

		gml.instance_activate_all()
		paused = false
		#with player1
		var all_player1s = gml.get_all_instances("player1")
		for player1_instance in all_player1s:
		
			if (player1_instance.facing == 18): player1_instance.x_vel = -3
			else: player1_instance.x_vel = 3
			player1_instance.y_vel = -6
			global.plife = -99
		
		
		if (SS.is_sound_playing(global.mus_title)): SS.set_sound_vol(global.mus_title, 10000)
		if (SS.is_sound_playing(global.mus_cave)): SS.set_sound_vol(global.mus_cave, 10000)
		if (SS.is_sound_playing(global.mus_lush)): SS.set_sound_vol(global.mus_lush, 10000)
		if (SS.is_sound_playing(global.mus_temple)): SS.set_sound_vol(global.mus_temple, 10000)
		if (SS.is_sound_playing(global.mus_boss)): SS.set_sound_vol(global.mus_boss, 10000)
		Audio.stop_all_music()

func key_f10_pressed():
	if (paused):
		gml.game_end()

#func room_end(): #--- not needed
	#surface_set_target("screen")
	#draw_clear(0)
