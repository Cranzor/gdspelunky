
extends DrawnSprite


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func create():
    #    # action_inherited
#    super()

#    # main_code
#    type = "None"
#    x_vel = 0
#    y_vel = 0
#    y_acc = 0.6

    

#func step():
    #    position.x += x_vel
#    position.y += y_vel
#    y_vel += y_acc

#    if (gml.collision_point(position.x, position.y, "water_swim", 0, 0)):

#        if (type == "Drip"): gml.instance_destroy()
#        elif (type == "Leaf"):  y_vel = 0 sprite_index = "leaf_still "
#        else: y_vel = 0.2

#    elif (gml.collision_point(position.x, position.y, "lava", 0, 0)):

#        gml.instance_destroy()


#    if (gml.collision_point(position.x, position.y, "solid", 0, 0)):

#        gml.instance_destroy()


#    if (view_enabled):

#        if (position.x < view_xview[0] - 32 or:
#            position.x > view_xview[0] + view_wview[0] + 32 or
#            position.y < view_yview[0] - 32 or
#            position.y > view_yview[0] + view_hview[0] + 32)
    
#            gml.instance_destroy()
