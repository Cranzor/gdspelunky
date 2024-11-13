extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func key down pressed():
	#    load_level.page += 1
#    with menu_sel  sprite_index = "menu_sel_off "
#    instance_activate_object(page_up)
#    if (load_level.page >= load_level.num_pages): instance_deactivate_object(page_down)

	

#func mouse leave():
	#    # DY: sprite_index = "ok_button"

	

#func mouse left button pressed():
	#    # DY: sprite_index = "ok_button_pressed"

	

#func mouse left button released():
	#    load_level.page += 1
#    with menu_sel  sprite_index = "menu_sel_off "
#    instance_activate_object(page_up)
#    if (load_level.page >= load_level.num_pages): instance_deactivate_object(page_down)
