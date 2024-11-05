
extends Enemy


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func collision with o_character():
    #    # DY:  jumped on
#    if (abs(other.position.x-(position.x+8)) > 8):

#        # DY:  do nothing

#    elif (not other.dead and (other.state == 15 or other.state == 16) and other.position.y < position.y+5 and not other.swimming):

#        if (status < STUNNED):
    
#            other.y_vel=-6-0.2*other.y_vel
#            if (global.has_spike_shoes):  hp -= (3 * (floor(other.fall_timer/16)+1)) if (not bloodless) gml.instance_create(other.position.x, other.position.y+8, "blood") 
#            else: hp -= (1 * (floor(other.fall_timer/16)+1))
#            other.fall_timer = 0
#            counts_as_kill = true
#            status = STUNNED
#            counter = stun_time
#            y_vel = -6
#            if (other.position.x < position.x+8): x_vel += 1
#            else: x_vel -= 1
#            image_speed = 0.5
#            Audio.play_sound(global.snd_hit)
    

#    elif (other.invincible == 0):

#        if (status < STUNNED):
    
#            other.blink = 30
#            other.invincible = 30
#            if (other.position.y < position.y):
#                other.y_vel = -6
#            if (other.position.x < position.x):
#                other.x_vel = -6
#            else:
#                other.x_vel = 6
#            gml.instance_create(other.position.x, other.position.y, "blood")
    
#            if (global.plife > 0):
        
#                global.plife -= 1
#                if (global.plife <= 0 and InLevel.is_real_level()): global.enemy_deaths[4] += 1
        
#            Audio.play_sound(global.snd_hurt)
    


    

#func collision with o_whip():
    #    if (status < STUNNED or other.type == "Machete"):

#        hp -= other.damage
#        if (blood_left > 0):
    
#            MiscScripts.scr_create_blood(position.x+sprite_width/2, position.y+sprite_height/2, 1)
#            if (hp < 0): blood_left -= 1
    
#        counts_as_kill = true
#        status = STUNNED
#        counter = stun_time
#        y_vel = -3
#        if (other.position.x < (position.x+8)): x_vel = 2
#        else: x_vel = -2
#        image_speed = 0.5
#        Audio.play_sound(global.snd_hit)


    

#func collision with o_whip_pre():
    #    if (status < STUNNED or other.type == "Machete"):

#        hp -= other.damage
#        if (blood_left > 0):
    
#            MiscScripts.scr_create_blood(position.x+sprite_width/2, position.y+sprite_height/2, 1)
#            if (hp < 0): blood_left -= 1
    
#        counts_as_kill = true
#        status = STUNNED
#        counter = stun_time
#        y_vel = -3
#        if (other.position.x < (position.x+8)): x_vel = 2
#        else: x_vel = -2
#        image_speed = 0.5
#        Audio.play_sound(global.snd_hit)


    

#func create():
    #    # action_inherited
#    super()

#    # main_code
#    PlatformEngine.make_active()
#    Collision.set_collision_bounds(2, 0, sprite_width-2, sprite_height)
#    x_vel = 2.5
#    image_speed = 0.5
#    my_grav = 0.6

#    # DY:  stats
#    type = "Caveman"
#    hp = 3
#    invincible = 0
#    favor = 2

#    IDLE = 0
#    WALK = 1
#    ATTACK = 2
#    STUNNED = 98
#    DEAD = 99
#    status = IDLE

#    bounced = false
#    dead = false
#    counter = 0
#    sight_counter = 0

#    LEFT = 0
#    RIGHT = 1
#    facing = RIGHT

#    shake_counter = 0
#    shake_toggle = 1

    

#func step():
    #    # action_inherited
#    super()

#    # main_code
#    if (active):

#    PlatformEngine.move_to(x_vel,y_vel)

#    if (not held): y_vel += my_grav
#    if (y_vel > y_velLimit): y_vel = y_velLimit

#    col_left = false
#    col_right = false
#    col_bot = false
#    col_top = false
#    if (Collision.is_collision_left(1)): col_left = true
#    if (Collision.is_collision_right(1)): col_right = true
#    if (Collision.is_collision_bottom(1)): col_bot = true
#    if (Collision.is_collision_top(1)): col_top = true

#    if (status >= STUNNED):

#        if (gml.collision_point(position.x+8, position.y+12, "solid", 0, 0)):
    
#            MiscScripts.scr_create_blood(position.x+8, position.y+8, 3)
#            Audio.play_sound(global.snd_caveman_die)
#            gml.instance_destroy()
    

#    elif (not held):

#        if (gml.collision_point(position.x+8, position.y+8, "solid", 0, 0)):
    
#            MiscScripts.scr_create_blood(position.x+8, position.y+8, 3)
#            Audio.play_sound(global.snd_caveman_die)
#            gml.instance_destroy()
    


#    if (status != DEAD and status != STUNNED and hp < 1):

#        status = DEAD


#    if (col_bot and: status != STUNNED):
#        y_vel = 0

#    if (status == IDLE):

#        bounced = false
#        if (col_bot and:
#            (gml.collision_point(position.x-1, position.y, "solid", -1, -1) or gml.collision_point(position.x+16, position.y, "solid", -1, -1)))
    
#            y_vel = -6
#            if (facing == LEFT): x_vel = -1
#            else: x_vel = 1
#            counter -= 10
    
    
#        if (y_vel < 0 and col_top):
    
#            y_vel = 0
    

#        if (col_bot and: counter > 0) counter -= 1    
#        if (counter < 1):
    
#            facing = randi_range(0,1)
#            status = WALK
    
#        if (sight_counter > 0): sight_counter -= 1
#        else:
    
#            sight = gml.instance_create(position.x, position.y, "enemy_sight")
#            if (facing == LEFT): sight.direction = 180
#            else: sight.direction = 0
#            sight.speed = 10
#            sight.owner = gml.instance_place(position.x, position.y, caveman)
#            sight_counter = 5
    

#    elif (status == WALK):

#        if (col_left or col_right):
    
#            if (facing == LEFT): facing = RIGHT
#            else: facing = LEFT
    
    
#        if (facing == LEFT):
    
#            if (not gml.collision_point(position.x-1, position.y+16, "solid", -1, -1)):
        
#                status = IDLE
#                counter = randi_range(20,50)
#                x_vel = 0
        
#            x_vel = -1.5
    
#        else:
    
#            if (not gml.collision_point(position.x+16, position.y+16, "solid", -1, -1)):
        
#                status = IDLE
#                counter = randi_range(20,50)
#                x_vel = 0
        
#            x_vel = 1.5
    
    
#        if (randi_range(1,100) == 1):
    
#            status = IDLE
#            counter = randi_range(20,50)
#            x_vel = 0
    
    
#        if (sight_counter > 0): sight_counter -= 1
#        else:
    
#            sight = gml.instance_create(position.x, position.y, "enemy_sight")
#            if (facing == LEFT): sight.direction = 180
#            else: sight.direction = 0
#            sight.speed = 10
#            sight.owner = gml.instance_place(position.x, position.y, caveman)
#            sight_counter = 5
    

#    elif (status == ATTACK):

#        image_speed = 1
#        if (col_left or col_right):
    
#            if (facing == LEFT): facing = RIGHT
#            else: facing = LEFT
    
#        if (facing == LEFT): x_vel = -3
#        else: x_vel = 3

#    elif (status == STUNNED):

#        if (x_vel == 0 and hp > 0): sprite_index = s_caveman_stun_l
#        elif (bounced):
    
#            if (y_vel < 0): sprite_index = s_caveman_bounce_l
#            else: sprite_index = s_caveman_fall_l
    
#        else:
    
#            if (abs(x_vel) > 0): sprite_index = s_caveman_die_ll
#            else: sprite_index = s_caveman_die_lr
    
    
#        if (col_bot and: not bounced)
    
#            bounced = true
#            MiscScripts.scr_create_blood(position.x+8, position.y+8, 1)
    
    
#        if (held or col_bot):
          
#            if (counter > 0): counter -= 1
#            elif (hp > 0):
        
#                status = IDLE
#                if (held):
            
#                    held = false
#                    with player1  hold_item = 0 pickup_item_type = "" 
            
        
    

#    elif (status == DEAD):

#        if (not dead):
    
#            if (counts_as_kill):
        
#                if (InLevel.is_real_level()): global.enemy_kills[4] += 1
#                global.cavemen += 1
#                global.kills += 1
        
#            Audio.play_sound(global.snd_caveman_die)
#            dead = true
    

#        sprite_index = s_caveman_dead_l
    
#        if (abs(x_vel) > 0 or abs(y_vel) > 0): status = STUNNED


#    if (status >= STUNNED):

#        scr_check_collisions()
    
#        if (x_vel == 0 and y_vel == 0 and hp < 1): status = DEAD


#    if (x_vel > 0): x_vel -= 0.1
#    if (x_vel < 0): x_vel += 0.1
#    if (abs(x_vel) < 0.5): x_vel = 0

#    if (status < STUNNED):

#        if (abs(x_vel) > 0): sprite_index = s_caveman_run_left
#        else: sprite_index = s_caveman_left

#    if (held):

#        if (hp > 0): sprite_index = s_caveman_held_l
#        else: sprite_index = s_caveman_d_held_l



    
