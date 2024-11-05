
extends DrawnSprite


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func animation_end():
    #    # action_kill_object
#    # Need to implement this action
    

#func step():
    #    if (sprite_index = s_spears_left and not gml.collision_point(position.x+16, position.y, "spear_trap_top", 0, 0) and not gml.collision_point(position.x+16, position.y, "spear_trap_bottom", 0, 0)):

#        gml.instance_destroy()

#    if (sprite_index = s_spears_right and not gml.collision_point(position.x-16, position.y, "spear_trap_top", 0, 0) and not gml.collision_point(position.x-16, position.y, "spear_trap_bottom", 0, 0)):

#        gml.instance_destroy()

#    depth = 995

    
