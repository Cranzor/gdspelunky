
extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func create():
    #    active = true

    

#func mouse leave():
    #    sprite_index = "load_button"

    

#func mouse left button pressed():
    #    sprite_index = "load_button_pressed"

    

#func mouse left button released():
    #    if (sprite_index == "load_button_pressed and active):"

#        with load_level
    
#            global.first_custom_level = level_name
#            scr_load_level()
    

#    sprite_index = "load_button"

    

#func step():
    #    if (ControlScripts.check_start_pressed() or gamepad.attack_pressed):

#        with load_level
    
#            global.first_custom_level = level_name
#            scr_load_level()
