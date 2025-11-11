extends Node
class_name PauseHandling
#--- code moved from screen object script and adjusted

var paused: bool = false
var player1: GMObject
var new_pause_menu: Control
var classic_pause_screen: Node2D


func draw_pause_screen(paused: bool) -> void:
	if paused:
		if GameSettings.new_pause_menu:
			new_pause_menu.set_initial_pause_visibility()
			new_pause_menu.set_default_focus()
		else:
			classic_pause_screen.draw_pause_screen_text()
			classic_pause_screen.draw_pause_screen_rect()
		Engine.get_main_loop().call_group("gm_object", "pause_animation")
		AudioServer.set_bus_mute(0, true)
		
	else:
		if GameSettings.new_pause_menu:
			new_pause_menu.hide()
		else:
			classic_pause_screen.draw_text.hide_children()
			classic_pause_screen.draw_rectangle.hide()
		Engine.get_main_loop().call_group("gm_object", "resume_animation")
		AudioServer.set_bus_mute(0, false)
		SavingLoading.save_settings()


func pause_handling() -> void:
	paused = !paused
	GmLoop.paused = paused
	draw_pause_screen(paused)


func pause_button_pressed(event: InputEvent) -> void:
	player1 = gml.get_instance("player1")
	if player1 and not player1.dead:
		if event.is_action_pressed("start"):
			paused = !paused
			GmLoop.paused = paused
			draw_pause_screen(paused)
		if !GameSettings.new_pause_menu:
			if paused and event.is_action_pressed("bomb"):
				end_adventure()
			elif paused and event.is_action_pressed("rope"):
				gml.game_end()


func end_adventure() -> void:
	pause_handling()
	if (global.plife > 0 and InLevel.is_level()):
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
