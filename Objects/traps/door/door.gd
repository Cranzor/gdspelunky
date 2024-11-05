
extends MovingSolid


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
#    PlatformEngine.make_active()
#    Collision.set_collision_bounds(1, 0, 15, 32)
#    invincible = false
#    viscid_top = 1

#    x_vel = 0
#    y_vel = 0
#    my_grav = 1

#    counter = 0

#    status = 0
#    idle = 0
#    drop = 1
#    wait = 2
#    return = 3

    

#func destroy():
    #    rubble = gml.instance_create(position.x+8+randi_range(0,4)-randi_range(0,4), position.y+8+randi_range(0,8)-randi_range(0,8), Objects.rubble_small)
#        rubble.sprite_index = "rubble_tan_small"
#        rubble = gml.instance_create(position.x+8+randi_range(0,4)-randi_range(0,4), position.y+8+randi_range(0,8)-randi_range(0,8), Objects.rubble_small)
#        rubble.sprite_index = "rubble_tan_small"

    

#func step():
    #    dist = gml.distance_to_object(character)
#    if (status == idle):

#        # dy:  nothing

#    elif (status == drop):

#        y_vel += my_grav
#        if (y_vel > 6): y_vel = 6
#        if (Collision.i"collision_bottom(1)):"
    
#            status = wait
#            y_vel = 0
#            counter = 100
#            depth = 100
    

#    elif (status == wait):

#        if (Collision.i"collision_bottom(1)): position.y -= 1"
