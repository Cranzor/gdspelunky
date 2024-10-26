extends Node

func play_music(music_piece, loop: bool):
	if (global.music and not SS.is_sound_playing(music_piece)):

		if (loop):
			SS.loop_sound(music_piece)
		else:
			SS.play_sound(music_piece)
	
func play_sound(sound):
	SS.play_sound(sound)
	
func scr_music_fade():
	var player1 = null #---[FLAG] Get player here
	
	if (InLevel.is_level()):

		if (global.level_type == 1): SS.set_sound_freq(global.mus_lush, SS.get_sound_freq(global.mus_lush)-100)
		elif (global.level_type == 2): SS.set_sound_freq(global.mus_ice, SS.get_sound_freq(global.mus_ice)-100)
		elif (global.level_type == 3): SS.set_sound_freq(global.mus_temple, SS.get_sound_freq(global.mus_temple)-100)
		elif (InLevel.is_room("olmec")):
		
			if (player1.active):
				SS.set_sound_freq(global.mus_boss, SS.get_sound_freq(global.mus_boss)-100)
		
		else: SS.set_sound_freq(global.mus_cave, SS.get_sound_freq(global.mus_cave)-100)
	
func start_music():
	pass
	
func stop_all_music():
	SS.stop_sound(global.mus_title)
	#SS_StopSound(global.musCave);
	#SS_StopSound(global.musLush);
	#SS_StopSound(global.musIce);
	#SS_StopSound(global.musTemple);
	#SS_StopSound(global.musBoss);
	#SS_StopSound(global.musVictory);
	#SS_StopSound(global.musCredits);
