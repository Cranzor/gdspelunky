
extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func create():
#    if (global.gamepad_on): on = true
#    else:

#        on = false
#        sprite_index = "box"


	

#func mouse left button pressed():
#    if (not on):

#        on = true
#        sprite_index = "box_checked"
#        global.gamepad_on = true

#    else:

#        on = false
#        sprite_index = "box"
#        global.gamepad_on = false
