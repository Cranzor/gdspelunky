
extends MovingSolid


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func collision with o_solid():
    #    Audio.play_sound(global.snd_break)
#    gml.instance_create(position.x+8, position.y+8, Objects.smoke_puff)
#    for i in range(0, 3):

#        obj = gml.instance_create(position.x+randi_range(2,14), position.y+randi_range(2,14), Objects.rubble_dark)
#        obj.x_vel = randi_range(1,3)-randi_range(1,3)
#        obj.y_vel = -randi_range(0,3)


#    gml.instance_destroy()

    

#func create():
    #    # action_inherited
#    super()

#    # main_code
#    viscid_top = 1
#    PlatformEngine.make_active()
#    Collision.set_collision_bounds(0, 0, 16, 8)

#    invincible = false
#    grav = 1
#    time_fall = 20
#    time_fall_max = 20


    

#func step():
    #    # action_inherited
#    super()

#    # main_code
#    if Collision.i"collision_character_top(1):"

#        time_fall -= 1
#        if (time_fall <= 0): y_acc = grav

#    elif (time_fall < time_fall_max): time_fall += 1

#    if (y_vel > 10): y_vel = 10
