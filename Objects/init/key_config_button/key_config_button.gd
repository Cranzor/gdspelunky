
extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func mouse leave():
    #    sprite_index = s_key_config_button

    

#func mouse left button pressed():
    #    sprite_index = s_key_config_button_pressed

    

#func mouse left button released():
    #    if (sprite_index == s_key_config_button_pressed): get_tree().change_scene_to_file("res://r_key_config.tscn")
#    sprite_index = s_key_config_button

    
