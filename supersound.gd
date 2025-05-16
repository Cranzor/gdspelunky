extends Node

var sound_and_freq: Dictionary

func free_sound():
	pass


func init():
	pass


func load_sound():
	pass


func loop_sound(sound): #--- think this should work the same as play_sound(), as the music is set to loop
	Music.play(sound)


func play_sound(sound):
	Music.play(sound)


func set_sound_freq(sound, frequency):
	sound_and_freq[sound] = frequency
	var normalized_value = float(frequency) / 44100.0
	Music.set_pitch_scale(sound, normalized_value)


func set_sound_pan(temp, temp2):
	pass


func set_sound_vol(sound, volume):
	pass


func stop_sound(sound):
	Music.stop(sound)


func unload():
	pass


#--- Advanced
func is_sound_playing(sound):
	if Music.sound_and_node.has(sound):
		var node = Music.sound_and_node[sound]
		if node.playing:
			return true
	return false


func get_sound_freq(sound):
	if sound in sound_and_freq:
		return sound_and_freq[sound]
	return null
	
