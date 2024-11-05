
extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func mouse leave():
    #    sprite_index = s_new_button

    

#func mouse left button pressed():
    #    sprite_index = s_new_button_pressed

    

#func mouse left button released():
    #    if (sprite_index == s_new_button_pressed):

#        level_editor.status = 10
#        with edit_button  gml.instance_destroy() 
#        with test_button  gml.instance_destroy() 
#        gml.instance_destroy()

#    sprite_index = s_new_button

    

#func step():
    #    position.x = view_xview[0]+view_wview[0]-88
#    if (view_yview[0] == 0): position.y = view_yview[0]+view_hview[0]-32
#    else: position.y = view_yview[0]+16

    
