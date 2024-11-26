
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
#    PlatformEngine.make_active(self)
#    Collision.set_collision_bounds(self, 4, 4, 12, 16)
#    x_vel = 0
#    y_vel = 0
#    y_delta = -0.4
#    my_grav = 0.2
#    my_grav_norm = 0.2
#    image_speed = 0.4

#    # DY:  stats
#    hp = 1
#    invincible = 0

#    LEFT = 0
#    RIGHT = 1
#    facing = gml.rand(0,1)

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
#    if ((position.x > gml.view("xview")-20 and position.x < gml.view("xview") + gml.view("wview")+4 and:
#            position.y > gml.view("yview")-20 and position.y < gml.view("yview") + gml.view("hview")+4))

#    PlatformEngine.move_to(x_vel,y_vel)

#    y_vel += my_grav
#    if (y_vel > y_vel_limit): y_vel = y_vel_limit

#    if (gml.collision_point(position.x+8, position.y+8, "solid", 0, 0)): hp = -999

#    if (hp < 1):

#        MiscScripts.scr_create_blood(position.x+8, position.y+8, 1)
#        for repetition in range(3):
    
#            gml.instance_create(other.position.x+8, other.position.y+8, Objects.bone)
    
#        skull = gml.instance_create(other.position.x+8, other.position.y+8, Objects.skull)
#        skull.y_vel = -gml.rand(1,3)
#        skull.x_vel = gml.rand(0,3)-gml.rand(0,3)
#        if (counts_as_kill):
    
#            if (InLevel.is_real_level()): global.enemy_kills[6] += 1
#            global.zombies += 1
#            global.kills += 1
    
#        gml.instance_destroy(self)


#    if (Collision.is_collision_right(1)):

#        x_vel = -1


#    if (Collision.is_collision_left(1)):

#        x_vel = 1


#    col_bot = false
#    if (Collision.is_collision_bottom(1)): col_bot = true

#    dist = gml.distance_to_object(player1)

#    if (status == IDLE):

#        x_vel = 0
#        if (counter > 0): counter -= 1
#        elif (dist < 64): status = BOUNCE
#        if (dist < 48): status = BOUNCE
#        if (player1.swimming): status = IDLE
#        if (status == BOUNCE): Audio.play_sound(global.snd_zombie)

#    elif (status == RECOVER):

#        if (col_bot):
    
#            status = IDLE
#            x_vel = 0
#            y_vel = 0
#            counter = gml.rand(40,100)
    

#    elif (status == BOUNCE):

#        if (col_bot):
    
#            if (gml.rand(1,4) == 1):
        
#                y_vel = -1 * gml.rand(2,4)
#                if (character.position.x < position.x):
            
#                    facing = LEFT
#                    x_vel = -3
            
#                else:
            
#                    facing = RIGHT
#                    x_vel = 3
            
        
#            else:
        
#                y_vel = -1 * gml.rand(1,2)
#                if (character.position.x < position.x):
            
#                    facing = LEFT
#                    x_vel = -1
            
#                else:
            
#                    facing = RIGHT
#                    x_vel = 1
            
        
    
#        else:
    
#            status = RECOVER
    

#    elif (status != DROWNED):

#        status = IDLE
#        x_vel = 0


#    if (Collision.is_collision_top(1)):
#        y_vel = 1

#    # DY: if (Collision.is_collision_solid()):
#    # DY:   position.y -= 2

#    if (not col_bot): sprite_index = "zombie_jump_l"
#    else: sprite_index = "zombie_left"
