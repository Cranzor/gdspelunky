
extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func alarm_0():
#    if (focus):

#        Audio.play_sound(global.snd_jump)
#        alarm_0_countdown.start(20)


    

#func create():
#    position.x = global.sound_vol * 8
#    focus = false

    

#func mouse left button pressed():
#    focus = true
#    alarm_0_countdown.start(1)

    

#func step():
#    if (mouse_check_button(mb_left) and focus):

#        position.x = mouse_x-4
#        if (position.x > 144): position.x = 144
#        if (position.x < 8): position.x = 8
#        position.y = 184
#        global.sound_vol = floor(position.x / 8)
#        SS_SetSoundVol(global.snd_jump, 2000 + 8000 * (global.sound_vol/18))

#    else:

#        focus = false
#        gml.move_snap(8, 8)
#        position.y = 184
#        global.sound_vol = position.x / 8
