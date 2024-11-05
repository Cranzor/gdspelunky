
extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func create():
    #    position.x = global.music_vol * 8
#    focus = false

    

#func mouse left button pressed():
    #    focus = true
#    play_music(global.mu"cave, true)"

    

#func step():
    #    if (mouse_check_button(mb_left) and focus):

#        position.x = mouse_x-4
#        if (position.x > 144): position.x = 144
#        if (position.x < 8): position.x = 8
#        position.y = 160
#        global.music_vol = floor(position.x / 8)
#        SS_SetSoundVol(global.mu"cave, 2000 + 8000 * (global.music_vol/18))"

#    else:

#        focus = false
#        gml.move_snap(8, 8)
#        position.y = 160
#        global.music_vol = position.x / 8
#        Audio.stop_all_music()
