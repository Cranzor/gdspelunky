extends Node


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
	pass


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
	pass
