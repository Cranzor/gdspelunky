
extends Enemy


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
#    Collision.set_collision_bounds(4, 4, 12, 16)
#    x_vel = 0
#    y_vel = 0
#    y_delta = -0.4
#    my_grav = 0.2
#    my_gravNorm = 0.2
#    image_speed = 0.4

#    type = "Frog"

#    # DY:  stats
#    hp = 1
#    invincible = 0

#    LEFT = 0
#    RIGHT = 1
#    facing = randi_range(0,1)

#    # DY:  status
#    IDLE = 0
#    BOUNCE = 1
#    RECOVER = 2
#    WALK = 3
#    DROWNED = 4
#    status = 0

#    counter = 0
#    bounce_counter = 0

#    shake_counter = 0
#    shake_toggle = 1

#    if (gml.collision_point(position.x, position.y, "water", 0, 0)): swimming = true

    

#func step():
    #    # action_inherited
#    super()

#    # main_code
#    if ((position.x > view_xview[0]-20 and position.x < view_xview[0] + view_wview[0]+4 and:
#            position.y > view_yview[0]-20 and position.y < view_yview[0] + view_hview[0]+4))

#    PlatformEngine.move_to(x_vel,y_vel)

#    y_vel += my_grav
#    if (y_vel > y_velLimit): y_vel = y_velLimit

#    if (gml.collision_point(position.x+8, position.y+8, "solid", 0, 0)): hp = -999

#    if (hp < 1):

#        MiscScripts.scr_create_blood(position.x+8, position.y+8, 3)
#        if (counts_as_kill):
    
#            if (InLevel.is_real_level()): global.enemy_kills[8] += 1
#            global.frogs += 1
#            global.kills += 1
    
#        gml.instance_destroy()


#    if (Collision.is_collision_right(1)):

#        x_vel = -1


#    if (Collision.is_collision_left(1)):

#        x_vel = 1


#    col_bot = false
#    if (Collision.is_collision_bottom(1)): col_bot = true

#    dist = gml.distance_to_object(character)

#    if (status == IDLE):

#        x_vel = 0
#        if (counter > 0): counter -= 1
#        elif (dist < 64): status = BOUNCE
#        # DY: if (dist < 48): status = BOUNCE
#        if (status == BOUNCE): Audio.play_sound(global.snd_frog)

#    elif (status == RECOVER):

#        if (col_bot):
    
#            status = IDLE
#            x_vel = 0
#            y_vel = 0
#            counter = randi_range(10,40)
    

#    elif (status == BOUNCE):

#        if (col_bot):
    
#            y_vel = -1 * randi_range(2,4)
#            if (character.position.x < position.x):
        
#                facing = LEFT
#                x_vel = -3
        
#            else:
        
#                facing = RIGHT
#                x_vel = 3
        
    
#        else:
    
#            status = RECOVER
    

#    elif (status != DROWNED):

#        status = IDLE
#        x_vel = 0


#    if (Collision.is_collision_top(1)):
#        y_vel = 1

#    # DY: if (Collision.is_collision_solid()):
#    # DY:   position.y -= 2
  
#    if (not col_bot): sprite_index = s_frog_jump_l
#    else: sprite_index = s_frog_left


    
