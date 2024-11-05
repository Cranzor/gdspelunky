
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
#    y_vel = 0
#    y_acc = 0.6

    

#func outside room():
    #    # action_kill_object
#    # Need to implement this action
    

#func step():
    #    position.y += y_vel
#    y_vel += y_acc

#    if (gml.collision_point(position.x, position.y, "brick", 0, 0) or:
#        gml.collision_point(position.x, position.y, "block", 0, 0))

#        gml.instance_destroy()


    
