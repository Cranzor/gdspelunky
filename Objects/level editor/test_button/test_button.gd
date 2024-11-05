
extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func mouse leave():
    #    sprite_index = "test_button"

    

#func mouse left button pressed():
    #    sprite_index = "test_button_pressed"

    

#func mouse left button released():
    #    if (sprite_index == "test_button_pressed):"

#        with level_editor
    
#            scr_test_level()
    
#        get_tree().change_scene_to_file("res://r_load_level.tscn")

#    sprite_index = "test_button"

    

#func step():
    #    position.x = view_xview[0]+view_wview[0]-48
#    if (view_yview[0] == 0): position.y = view_yview[0]+view_hview[0]-32
#    else: position.y = view_yview[0]+16
