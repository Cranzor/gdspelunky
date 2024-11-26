
extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func mouse leave():
#    sprite_index = "edit_button"

    

#func mouse left button pressed():
#    sprite_index = "edit_button_pressed"

    

#func mouse left button released():
#    if (sprite_index == "edit_button_pressed):"

#        level_editor.status = 2
#        with new_button  gml.instance_destroy(self) 
#        with test_button  gml.instance_destroy(self) 
#        gml.instance_destroy(self)

#    sprite_index = "edit_button"

    

#func step():
#    position.x = gml.view("xview")+16
#    if (gml.view("yview") == 0): position.y = gml.view("yview")+gml.view("hview")-32
#    else: position.y = gml.view("yview")+16
