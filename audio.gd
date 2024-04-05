extends Node

func play_music(music_piece, loop: bool):
	if (global.music and not SS.is_sound_playing(music_piece)):

		if (loop):
			SS.loop_sound(music_piece)
		else:
			SS.play_sound(music_piece)
	
func play_sound(sound):
	if (InLevel.is_level()):

		if (global.level_type == 1): SS.set_sound_freq(global.mus_lush, SS.get_sound_freq(global.mus_lush)-100)
		elif (global.level_type == 2): SS_Set_sound_freq(global.mus_ice, SS_Get_sound_freq(global.mus_ice)-100)
		elif (global.level_type == 3): SS_Set_sound_freq(global.mus_temple, SS_Get_sound_freq(global.mus_temple)-100)
		elif (is_room("r_olmec")):
		
			if (player1.active):
				SS_Set_sound_freq(global.mus_boss, SS_Get_sound_freq(global.mus_boss)-100)
		
		else: SS_Set_sound_freq(global.mus_cave, SS_Get_sound_freq(global.mus_cave)-100)


	
func scr_music_fade():
	pass
	
func start_music():
	pass
	
func stop_all_music():
	pass
