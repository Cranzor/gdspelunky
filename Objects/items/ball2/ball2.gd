
extends Item


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
#    type = "ball"
#    PlatformEngine.make_active()
#    Collision.set_collision_bounds(-5, -5, 5, 5)
#    heavy = true
#    my_grav = 1

    

#func step():
    #    # action_inherited
#    super()

#    # main_code
#    if (gml.instance_exists("p_dummy")):

#        if (gml.distance_to_object(p_dummy) >= 24):
    
#            position.x = p_dummy.position.x - 24
