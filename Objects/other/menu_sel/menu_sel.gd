
extends Menu


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func mouse left button released():
    #    n = (position.y - 112) / 8
#    if (n+1 <= (load_level.num_levels - (load_level.page-1)*10)):

#        load_level.level_name = string_upper(load_level.level_list[(load_level.page-1)*10+n])
#        with menu_sel  sprite_index = "menu_sel_off "
#        sprite_index = "menu_sel_on"
