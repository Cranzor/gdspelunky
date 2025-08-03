extends Node

@onready var in_level: InLevel = InLevel.new()

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
	
	if (in_level.is_level()):

		if (global.level_type == 1): SS.set_sound_freq(global.mus_lush, SS.get_sound_freq(global.mus_lush)-100)
		elif (global.level_type == 2): SS.set_sound_freq(global.mus_ice, SS.get_sound_freq(global.mus_ice)-100)
		elif (global.level_type == 3): SS.set_sound_freq(global.mus_temple, SS.get_sound_freq(global.mus_temple)-100)
		elif (in_level.is_room("olmec")):
		
			if (player1.active):
				SS.set_sound_freq(global.mus_boss, SS.get_sound_freq(global.mus_boss)-100)
		
		else: SS.set_sound_freq(global.mus_cave, SS.get_sound_freq(global.mus_cave)-100)
	
func start_music():
	var player1 = gml.get_instance("player1") #---[FLAG] may have to change this for multiplayer
	
	if (gml.instance_exists("load_level")):
		var load_level = gml.get_instance("load_level")

		if (load_level.music == "LUSH"):
		
			play_music(global.mus_lush, true)
			SS.set_sound_vol(global.mus_lush, 2000 + 8000 * (global.music_vol/18))
			SS.set_sound_freq(global.mus_lush, 44100)
		
		elif (load_level.music == "ICE"):
		
			play_music(global.mus_ice, true)
			SS.set_sound_vol(global.mus_ice, 2000 + 8000 * (global.music_vol/18))
			SS.set_sound_freq(global.mus_ice, 44100)
		
		elif (load_level.music == "TEMPLE"):
		
			play_music(global.mus_temple, true)
			SS.set_sound_vol(global.mus_temple, 2000 + 8000 * (global.music_vol/18))
			SS.set_sound_freq(global.mus_temple, 44100)
		
		elif (load_level.music == "BOSS"):
		
			if (player1.active):
			
				play_music(global.mus_boss, true)
				SS.set_sound_vol(global.mus_boss, 2000 + 8000 * (global.music_vol/18))
				SS.set_sound_freq(global.mus_boss, 44100)
			
		
		else:
		
			play_music(global.mus_cave, true)
			SS.set_sound_vol(global.mus_cave, 2000 + 8000 * (global.music_vol/18))
			SS.set_sound_freq(global.mus_cave, 44100)
		
		

	elif (in_level.is_level()):

		if (in_level.is_room("olmec")):
		
			if (player1.active):
			
				play_music(global.mus_boss, true)
				SS.set_sound_vol(global.mus_boss, 2000 + 8000 * (global.music_vol/18))
				SS.set_sound_freq(global.mus_boss, 44100)
			
		
		elif (global.level_type == 1):
		
			play_music(global.mus_lush, true)
			SS.set_sound_vol(global.mus_lush, 2000 + 8000 * (global.music_vol/18))
			SS.set_sound_freq(global.mus_lush, 44100)
		
		elif (global.level_type == 2):
		
			play_music(global.mus_ice, true)
			SS.set_sound_vol(global.mus_ice, 2000 + 8000 * (global.music_vol/18))
			SS.set_sound_freq(global.mus_ice, 44100)
		
		elif (global.level_type == 3):
		
			play_music(global.mus_temple, true)
			SS.set_sound_vol(global.mus_temple, 2000 + 8000 * (global.music_vol/18))
			SS.set_sound_freq(global.mus_temple, 44100)
		
		else:
		
			play_music(global.mus_cave, true)
			SS.set_sound_vol(global.mus_cave, 2000 + 8000 * (global.music_vol/18))
			SS.set_sound_freq(global.mus_cave, 44100)
		

	elif (in_level.is_room("title")): SS.stop_sound(global.mus_title)
	elif (in_level.is_room("sun") or in_level.is_room("moon") or in_level.is_room("stars")):

		play_music(global.mus_boss, true)
		SS.set_sound_vol(global.mus_boss, 2000 + 8000 * (global.music_vol/18))
		SS.set_sound_freq(global.mus_boss, 44100)

	
func stop_all_music():
	SS.stop_sound(global.mus_title)
	SS.stop_sound(global.mus_cave)
	SS.stop_sound(global.mus_lush)
	SS.stop_sound(global.mus_ice)
	SS.stop_sound(global.mus_temple)
	SS.stop_sound(global.mus_boss)
	SS.stop_sound(global.mus_victory)
	SS.stop_sound(global.mus_credits)
