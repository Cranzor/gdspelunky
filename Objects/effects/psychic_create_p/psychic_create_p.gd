
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
#    # need to implement this action
    

#func collision with o_solid():
    #    gml.instance_destroy()

    

#func create():
    #    # action_inherited
#    super()

#    # main_code
#    x_vel = 0
#    y_vel = 0
#    image_speed = 0.2

    

#func step():
    #    position.x += x_vel
#    position.y += y_vel
#    if (y_vel < 6): y_vel += 0.6
