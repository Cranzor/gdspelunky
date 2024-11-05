
extends Detritus


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func animation_end():
    #    if (dying): gml.instance_destroy()

    

#func create():
    #    # action_inherited
#    super()

#    # main_code
#    image_speed
#    0.3
#    # main_code
#    PlatformEngine.make_active()
#    Collision.set_collision_bounds(-4, -4, 4, 4)
#    x_vel = random(4) - random(4)
#    y_vel = -1 - random(2)
#    grav = randi_range(1,6) * 0.1


    

#func step():
    #    # action_inherited
#    super()

#    # main_code
#    if (Collision.is_collision_bottom(1)):

#        sprite_index = s_smoke_puff
#        dying = true


    
