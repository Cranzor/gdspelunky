
extends Enemy


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func animation_end():
    #    if (status == EATING):

#        sprite_index = s_man_trap_sleep_l
#        status = SLEEPY

#    elif (sprite_index == s_man_trap_sleep_l):

#        sprite_index = s_man_trap_stun_l
#        status = STUNNED
#        counter = stun_time*2



    

#func collision with o_caveman():
    #    if (status != STUNNED and status != EATING):

#        x_vel = 0
#        status = EATING
#        if (other.position.x > position.x): facing = RIGHT
#        else: facing = LEFT
#        sprite_index = s_man_trap_eat_caveman_l
        
#        with other  gml.instance_destroy() 


    

#func collision with o_character():
    #    if (abs(other.position.x-(position.x+8)) > 8):

#        # DY:  do nothing

#    elif ((global.has_spike_shoes or status == EATING) and not other.dead and not other.stunned and (other.state == 15 or other.state == 16) and other.position.y < position.y+5 and not other.swimming):

#        other.y_vel=-6-0.2*other.y_vel
#        if (global.has_spike_shoes):  hp -= (3 * (floor(other.fall_timer/16)+1)) if (not bloodless) gml.instance_create(other.position.x, other.position.y+8, "blood") 
#        else: hp -= (1 * (floor(other.fall_timer/16)+1))
#        other.fall_timer = 0
#        counts_as_kill = true
#        status = STUNNED
#        counter = stun_time
#        y_vel = -6
#        if (other.position.x < position.x+8): x_vel += 1
#        else: x_vel -= 1
#        image_speed = 0.5
#        Audio.play_sound(global.snd_hit)

#    elif (other.visible and other.invincible == 0):

#        if (status != STUNNED and status != EATING):
    
#            x_vel = 0
#            status = EATING
#            if (other.position.x > position.x+8): facing = RIGHT
#            else: facing = LEFT
#            if (global.is_damsel):
        
#                sprite_index = s_man_trap_eat_damsel_l
        
#            elif (global.is_tunnel_man):
        
#                sprite_index = s_man_trap_eat_tunnel_l
        
#            else:
        
#                sprite_index = s_man_trap_eat_l
        
        
#            other.visible = false
#            other.invincible = 9999
#            other.bounced = true
#            global.plife = -99
#            Audio.play_sound(global.snd_die)
#            global.draw_hud = false
#            if (InLevel.is_real_level()): global.enemy_deaths[10] += 1
                
#            if (other.hold_item):
        
#                if (held): held = false
#                else:
            
#                    other.hold_item.held = false
#                    if (facing == LEFT): other.hold_item.x_vel = -2
#                    else: other.hold_item.x_vel = 2
#                    other.hold_item.y_vel = -4
            
#                other.hold_item = 0
#                other.pickup_item_type = ""
        
    



    

#func collision with o_damsel():
    #    if (status != STUNNED and status != EATING):

#        x_vel = 0
#        status = EATING
#        if (other.position.x > position.x): facing = RIGHT
#        else: facing = LEFT
#        sprite_index = s_man_trap_eat_damsel_l
        
#        with other
    
#            if (held):
        
#                player1.hold_item = 0
#                player1.pickup_item_type = ""
        
#            gml.instance_destroy()
    


    

#func collision with o_shopkeeper():
    #    if (status != STUNNED and status != EATING):

#        x_vel = 0
#        status = EATING
#        if (other.position.x > position.x): facing = RIGHT
#        else: facing = LEFT
#        sprite_index = s_man_trap_eat_shopkeeper_l
#        if (other.hp > 0): ate_shopkeeper = true
    
#        with other
    
#            if (has_gun):
        
#                obj = gml.instance_create(position.x+8, position.y+8, "shotgun")
#                obj.y_vel = randi_range(4,6)
#                if (x_vel < 0): obj.x_vel = -1 * randi_range(4,6)
#                else: obj.x_vel = randi_range(4,6)
#                obj.cost = 0
#                obj.for_sale = false
#                has_gun = false
        
#            gml.instance_destroy()
    



    

#func collision with o_whip():
    #    if (status != STUNNED):

#        if (other.type == "Machete"):
    
#            hp -= other.damage*2
    
#        else:
    
#            hp -= other.damage
    
#        counts_as_kill = true
#        status = STUNNED
#        counter = stun_time
#        y_vel = -3
#        if (other.position.x < (position.x+8)): x_vel = 2
#        else: x_vel = -2
#        image_speed = 0.5
#        gml.instance_create(position.x+randi_range(0,16), position.y-8+randi_range(0,16), "leaf")
#        Audio.play_sound(global.snd_hit)


    

#func collision with o_whip_pre():
    #    if (status != STUNNED):

#        if (other.type == "Machete"):
    
#            hp -= other.damage*2
    
#        else:
    
#            hp -= other.damage
    
#        counts_as_kill = true
#        status = STUNNED
#        counter = stun_time
#        y_vel = -3
#        if (other.position.x < (position.x+8)): x_vel = 2
#        else: x_vel = -2
#        image_speed = 0.5
#        gml.instance_create(position.x+randi_range(0,16), position.y-8+randi_range(0,16), "leaf")
#        Audio.play_sound(global.snd_hit)


    

#func create():
    #    # action_inherited
#    super()

#    # main_code
#    PlatformEngine.make_active()
#    Collision.set_collision_bounds(2, 0, sprite_width-2, sprite_height)
#    x_vel = 2.5
#    image_speed = 0.5

#    # DY:  stats
#    type = "Man_trap"
#    hp = 3
#    invincible = 0
#    favor = 2

#    IDLE = 0
#    WALK = 1
#    ATTACK = 2
#    SLEEPY = 96
#    EATING = 97
#    STUNNED = 98
#    DEAD = 99
#    status = IDLE

#    ate_shopkeeper = false

#    bounced = false
#    dead = false
#    counter = 0

#    LEFT = 0
#    RIGHT = 1
#    facing = RIGHT

#    shake_counter = 0
#    shake_toggle = 1

    

#func step():
    #    # action_inherited
#    super()

#    # main_code
#    if ((position.x > view_xview[0]-20 and position.x < view_xview[0] + view_wview[0]+4 and:
#            position.y > view_yview[0]-20 and position.y < view_yview[0] + view_hview[0]+4))

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

#    if (hp < 1):

#        if (counts_as_kill):
    
#            if (InLevel.is_real_level()): global.enemy_kills[10] += 1
#            global.mantraps += 1
#            global.kills += 1
    
#        for repetition in range(1, 3):  gml.instance_create(position.x+randi_range(0,16), position.y-8+randi_range(0,16), "leaf") 
#        MiscScripts.scr_create_blood(position.x+8, position.y+8, 1)
#        if (ate_shopkeeper):
    
#            obj = gml.instance_create(position.x, position.y, "shopkeeper")
#            obj.status = 2
#            obj.has_gun = false
#            for repetition in range(1, 3):  gml.instance_create(position.x+randi_range(0,16), position.y-8+randi_range(0,16), "leaf") 
#            MiscScripts.scr_create_blood(position.x+8, position.y+8, 1)
#            Audio.play_sound(global.snd_small_explode)
    
#        gml.instance_destroy()


#    if (Collision.is_collision_bottom(1) and status != STUNNED): y_vel = 0

#    if (status == IDLE):

#        if (counter > 0): counter -= 1
#        if (counter == 0):
    
#            facing = randi_range(0,1)
#            status = WALK
    

#    elif (status == WALK):

#        if (Collision.is_collision_left(1) or Collision.is_collision_right(1)):
    
#            if (facing == LEFT): facing = RIGHT
#            else: facing = LEFT
    
#        if (facing == LEFT and not gml.collision_point(position.x-1, position.y, "solid", -1, -1) and:
#            not gml.collision_point(position.x-1, position.y+16, "solid", -1, -1))
    
#            facing = RIGHT
    
#        elif (facing == RIGHT and not gml.collision_point(position.x+16, position.y, "solid", -1, -1) and:
#                 not gml.collision_point(position.x+16, position.y+16, "solid", -1, -1))
    
#            facing = LEFT
    
#        if ((not gml.collision_point(position.x-1, position.y+16, "solid", -1, -1) or gml.collision_point(position.x-1, position.y, "solid", -1, -1)) and:
#            (not gml.collision_point(position.x+16, position.y+16, "solid", -1, -1) or gml.collision_point(position.x+16, position.y, "solid", -1, -1)))
    
#            if (gml.collision_point(position.x-1, position.y, "solid", -1, -1)): facing = RIGHT
#            else: facing = LEFT
#            x_vel = 0
    
#        elif (facing == LEFT): x_vel = -1
#        else: x_vel = 1
    
#        if (randi_range(1,100) == 1):
    
#            status = IDLE
#            counter = randi_range(20,50)
#            x_vel = 0
    

#    elif (status == STUNNED):

#        # DY:  x_vel = 0
#        /*
#        if (counter > 0): counter -= 1
#        else:
    
#            status = IDLE
#            counter = randi_range(20,50)
    
#        */
#        sprite_index = s_man_trap_stun_l

#        if (col_bot and not bounced):
    
#            bounced = true
#            MiscScripts.scr_create_blood(position.x+8, position.y+8, 1)
    
    
#        if (held or col_bot):
          
#            if (counter > 0): counter -= 1
#            else:
        
#                if (ate_shopkeeper):
            
#                    obj = gml.instance_create(position.x, position.y, "shopkeeper")
#                    obj.status = 2
#                    obj.has_gun = false
#                    for repetition in range(1, 3):  gml.instance_create(position.x+randi_range(0,16), position.y-8+randi_range(0,16), "leaf") 
#                    MiscScripts.scr_create_blood(position.x+8, position.y+8, 1)
#                    Audio.play_sound(global.snd_small_explode)
#                    gml.instance_destroy()
            
#                elif (hp > 0):
            
#                    status = IDLE
#                    counter = randi_range(20,50)
#                    if (held):
                
#                        held = false
#                        # DY:  trap can get stuck in wall at this point:
#                        if (gml.collision_point(position.x+16, position.y+8, "solid", 0, 0)): position.x = player1.position.x - 12
#                        elif (gml.collision_point(position.x, position.y+8, "solid", 0, 0)): position.x = player1.position.x - 4
#                        position.y = player1.position.y - 8
#                        with player1  hold_item = 0 pickup_item_type = "" 
                
            
        
    


#    if (status >= STUNNED):

#        scr_check_collisions()


#    # DY:  friction
#    if (col_bot):

#        if (abs(x_vel) < 0.1): x_vel = 0
#        elif (abs(x_vel) != 0): x_vel *= 0.3


#    if (Collision.is_collision_solid()): position.y -= 2

#    if (status == EATING and image_index == 8):

#        MiscScripts.scr_create_blood(position.x+8, position.y, 1)


#    if (status == SLEEPY and image_index == 6 and randi_range(1,8) == 1):

#        if (facing == LEFT):
    
#            bone = gml.instance_create(position.x+2, position.y+4, "bone")
#            with bone  x_vel = -2 
    
#        else:
    
#            bone = gml.instance_create(position.x+14, position.y+4, "bone")
#            with bone  x_vel = 2 
    


#    if (status < SLEEPY):

#        sprite_index = s_man_trap_left




    
