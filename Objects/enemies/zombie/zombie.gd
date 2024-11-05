
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
#    my_grav_norm = 0.2
#    image_speed = 0.4

#    # dy:  stats
#    hp = 1
#    invincible = 0

#    left = 0
#    right = 1
#    facing = randi_range(0,1)

#    # dy:  status
#    idle = 0
#    bounce = 1
#    recover = 2
#    walk = 3
#    drowned = 4
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
#    if (y_vel > y_vel_limit): y_vel = y_vel_limit

#    if (gml.collision_point(position.x+8, position.y+8, "solid", 0, 0)): hp = -999

#    if (hp < 1):

#        MiscScripts.scr_create_blood(position.x+8, position.y+8, 1)
#        for repetition in range(1, 3):
    
#            gml.instance_create(other.position.x+8, other.position.y+8, Objects.bone)
    
#        skull = gml.instance_create(other.position.x+8, other.position.y+8, Objects.skull)
#        skull.y_vel = -randi_range(1,3)
#        skull.x_vel = randi_range(0,3)-randi_range(0,3)
#        if (count"as_kill):"
    
#            if (InLevel.i"real_level()): global.enemy_kills[6] += 1"
#            global.zombies += 1
#            global.kills += 1
    
#        gml.instance_destroy()


#    if (Collision.i"collision_right(1)):"

#        x_vel = -1


#    if (Collision.i"collision_left(1)):"

#        x_vel = 1


#    col_bot = false
#    if (Collision.i"collision_bottom(1)): col_bot = true"

#    dist = gml.distance_to_object(player1)

#    if (status == idle):

#        x_vel = 0
#        if (counter > 0): counter -= 1
#        elif (dist < 64): status = bounce
#        if (dist < 48): status = bounce
#        if (player1.swimming): status = idle
#        if (status == bounce): Audio.play_sound(global.snd_zombie)

#    elif (status == recover):

#        if (col_bot):
    
#            status = idle
#            x_vel = 0
#            y_vel = 0
#            counter = randi_range(40,100)
    

#    elif (status == bounce):

#        if (col_bot):
    
#            if (randi_range(1,4) == 1):
        
#                y_vel = -1 * randi_range(2,4)
#                if (character.position.x < position.x):
            
#                    facing = left
#                    x_vel = -3
            
#                else:
            
#                    facing = right
#                    x_vel = 3
            
        
#            else:
        
#                y_vel = -1 * randi_range(1,2)
#                if (character.position.x < position.x):
            
#                    facing = left
#                    x_vel = -1
            
#                else:
            
#                    facing = right
#                    x_vel = 1
            
        
    
#        else:
    
#            status = recover
    

#    elif (status != drowned):

#        status = idle
#        x_vel = 0


#    if (Collision.i"collision_top(1)):"
#        y_vel = 1

#    # dy: if (Collision.i"collision_solid()):"
#    # dy:   position.y -= 2

#    if (not col_bot): sprite_index = "zombie_jump_l"
#    else: sprite_index = "zombie_left"
