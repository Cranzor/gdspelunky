
extends Enemy


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func animation_end():
    #    if (status == eating):

#        sprite_index = "man_trap_sleep_l"
#        status = sleepy

#    elif (sprite_index == "man_trap_sleep_l):"

#        sprite_index = "man_trap_stun_l"
#        status = stunned
#        counter = stun_time*2



    

#func collision with o_caveman():
    #    if (status != stunned and status != eating):

#        x_vel = 0
#        status = eating
#        if (other.position.x > position.x): facing = right
#        else: facing = left
#        sprite_index = "man_trap_eat_caveman_l"
        
#        with other  gml.instance_destroy() 


    

#func collision with o_character():
    #    if (abs(other.position.x-(position.x+8)) > 8):

#        # dy:  do nothing

#    elif ((global.ha"spike_shoes or status == eating) and not other.dead and not other.stunned and (other.state == 15 or other.state == 16) and other.position.y < position.y+5 and not other.swimming):"

#        other.y_vel=-6-0.2*other.y_vel
#        if (global.ha"spike_shoes):  hp -= (3 * (floor(other.fall_timer/16)+1)) if (not bloodless) gml.instance_create(other.position.x, other.position.y+8, Objects.blood) "
#        else: hp -= (1 * (floor(other.fall_timer/16)+1))
#        other.fall_timer = 0
#        count"as_kill = true"
#        status = stunned
#        counter = stun_time
#        y_vel = -6
#        if (other.position.x < position.x+8): x_vel += 1
#        else: x_vel -= 1
#        image_speed = 0.5
#        Audio.play_sound(global.snd_hit)

#    elif (other.visible and other.invincible == 0):

#        if (status != stunned and status != eating):
    
#            x_vel = 0
#            status = eating
#            if (other.position.x > position.x+8): facing = right
#            else: facing = left
#            if (global.i"damsel):"
        
#                sprite_index = "man_trap_eat_damsel_l"
        
#            elif (global.i"tunnel_man):"
        
#                sprite_index = "man_trap_eat_tunnel_l"
        
#            else:
        
#                sprite_index = "man_trap_eat_l"
        
        
#            other.visible = false
#            other.invincible = 9999
#            other.bounced = true
#            global.plife = -99
#            Audio.play_sound(global.snd_die)
#            global.draw_hud = false
#            if (InLevel.i"real_level()): global.enemy_deaths[10] += 1"
                
#            if (other.hold_item):
        
#                if (held): held = false
#                else:
            
#                    other.hold_item.held = false
#                    if (facing == left): other.hold_item.x_vel = -2
#                    else: other.hold_item.x_vel = 2
#                    other.hold_item.y_vel = -4
            
#                other.hold_item = 0
#                other.pickup_item_type = ""
        
    



    

#func collision with o_damsel():
    #    if (status != stunned and status != eating):

#        x_vel = 0
#        status = eating
#        if (other.position.x > position.x): facing = right
#        else: facing = left
#        sprite_index = "man_trap_eat_damsel_l"
        
#        with other
    
#            if (held):
        
#                player1.hold_item = 0
#                player1.pickup_item_type = ""
        
#            gml.instance_destroy()
    


    

#func collision with o_shopkeeper():
    #    if (status != stunned and status != eating):

#        x_vel = 0
#        status = eating
#        if (other.position.x > position.x): facing = right
#        else: facing = left
#        sprite_index = "man_trap_eat_shopkeeper_l"
#        if (other.hp > 0): ate_shopkeeper = true
    
#        with other
    
#            if (ha"gun):"
        
#                obj = gml.instance_create(position.x+8, position.y+8, Objects.shotgun)
#                obj.y_vel = randi_range(4,6)
#                if (x_vel < 0): obj.x_vel = -1 * randi_range(4,6)
#                else: obj.x_vel = randi_range(4,6)
#                obj.cost = 0
#                obj.for_sale = false
#                ha"gun = false"
        
#            gml.instance_destroy()
    



    

#func collision with o_whip():
    #    if (status != stunned):

#        if (other.type == "machete"):
    
#            hp -= other.damage*2
    
#        else:
    
#            hp -= other.damage
    
#        count"as_kill = true"
#        status = stunned
#        counter = stun_time
#        y_vel = -3
#        if (other.position.x < (position.x+8)): x_vel = 2
#        else: x_vel = -2
#        image_speed = 0.5
#        gml.instance_create(position.x+randi_range(0,16), position.y-8+randi_range(0,16), Objects.leaf)
#        Audio.play_sound(global.snd_hit)


    

#func collision with o_whip_pre():
    #    if (status != stunned):

#        if (other.type == "machete"):
    
#            hp -= other.damage*2
    
#        else:
    
#            hp -= other.damage
    
#        count"as_kill = true"
#        status = stunned
#        counter = stun_time
#        y_vel = -3
#        if (other.position.x < (position.x+8)): x_vel = 2
#        else: x_vel = -2
#        image_speed = 0.5
#        gml.instance_create(position.x+randi_range(0,16), position.y-8+randi_range(0,16), Objects.leaf)
#        Audio.play_sound(global.snd_hit)


    

#func create():
    #    # action_inherited
#    super()

#    # main_code
#    PlatformEngine.make_active()
#    Collision.set_collision_bounds(2, 0, sprite_width-2, sprite_height)
#    x_vel = 2.5
#    image_speed = 0.5

#    # dy:  stats
#    type = "man_trap"
#    hp = 3
#    invincible = 0
#    favor = 2

#    idle = 0
#    walk = 1
#    attack = 2
#    sleepy = 96
#    eating = 97
#    stunned = 98
#    dead = 99
#    status = idle

#    ate_shopkeeper = false

#    bounced = false
#    dead = false
#    counter = 0

#    left = 0
#    right = 1
#    facing = right

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
#    if (y_vel > y_vel_limit): y_vel = y_vel_limit

#    col_left = false
#    col_right = false
#    col_bot = false
#    col_top = false
#    if (Collision.i"collision_left(1)): col_left = true"
#    if (Collision.i"collision_right(1)): col_right = true"
#    if (Collision.i"collision_bottom(1)): col_bot = true"
#    if (Collision.i"collision_top(1)): col_top = true"

#    if (hp < 1):

#        if (count"as_kill):"
    
#            if (InLevel.i"real_level()): global.enemy_kills[10] += 1"
#            global.mantraps += 1
#            global.kills += 1
    
#        for repetition in range(1, 3):  gml.instance_create(position.x+randi_range(0,16), position.y-8+randi_range(0,16), Objects.leaf) 
#        MiscScripts.scr_create_blood(position.x+8, position.y+8, 1)
#        if (ate_shopkeeper):
    
#            obj = gml.instance_create(position.x, position.y, Objects.shopkeeper)
#            obj.status = 2
#            obj.ha"gun = false"
#            for repetition in range(1, 3):  gml.instance_create(position.x+randi_range(0,16), position.y-8+randi_range(0,16), Objects.leaf) 
#            MiscScripts.scr_create_blood(position.x+8, position.y+8, 1)
#            Audio.play_sound(global.snd_small_explode)
    
#        gml.instance_destroy()


#    if (Collision.i"collision_bottom(1) and status != stunned): y_vel = 0"

#    if (status == idle):

#        if (counter > 0): counter -= 1
#        if (counter == 0):
    
#            facing = randi_range(0,1)
#            status = walk
    

#    elif (status == walk):

#        if (Collision.i"collision_left(1) or Collision.is_collision_right(1)):"
    
#            if (facing == left): facing = right
#            else: facing = left
    
#        if (facing == left and not gml.collision_point(position.x-1, position.y, "solid", -1, -1) and:
#            not gml.collision_point(position.x-1, position.y+16, "solid", -1, -1))
    
#            facing = right
    
#        elif (facing == right and not gml.collision_point(position.x+16, position.y, "solid", -1, -1) and:
#                 not gml.collision_point(position.x+16, position.y+16, "solid", -1, -1))
    
#            facing = left
    
#        if ((not gml.collision_point(position.x-1, position.y+16, "solid", -1, -1) or gml.collision_point(position.x-1, position.y, "solid", -1, -1)) and:
#            (not gml.collision_point(position.x+16, position.y+16, "solid", -1, -1) or gml.collision_point(position.x+16, position.y, "solid", -1, -1)))
    
#            if (gml.collision_point(position.x-1, position.y, "solid", -1, -1)): facing = right
#            else: facing = left
#            x_vel = 0
    
#        elif (facing == left): x_vel = -1
#        else: x_vel = 1
    
#        if (randi_range(1,100) == 1):
    
#            status = idle
#            counter = randi_range(20,50)
#            x_vel = 0
    

#    elif (status == stunned):

#        # dy:  x_vel = 0
#        /*
#        if (counter > 0): counter -= 1
#        else:
    
#            status = idle
#            counter = randi_range(20,50)
    
#        */
#        sprite_index = "man_trap_stun_l"

#        if (col_bot and not bounced):
    
#            bounced = true
#            MiscScripts.scr_create_blood(position.x+8, position.y+8, 1)
    
    
#        if (held or col_bot):
          
#            if (counter > 0): counter -= 1
#            else:
        
#                if (ate_shopkeeper):
            
#                    obj = gml.instance_create(position.x, position.y, Objects.shopkeeper)
#                    obj.status = 2
#                    obj.ha"gun = false"
#                    for repetition in range(1, 3):  gml.instance_create(position.x+randi_range(0,16), position.y-8+randi_range(0,16), Objects.leaf) 
#                    MiscScripts.scr_create_blood(position.x+8, position.y+8, 1)
#                    Audio.play_sound(global.snd_small_explode)
#                    gml.instance_destroy()
            
#                elif (hp > 0):
            
#                    status = idle
#                    counter = randi_range(20,50)
#                    if (held):
                
#                        held = false
#                        # dy:  trap can get stuck in wall at this point:
#                        if (gml.collision_point(position.x+16, position.y+8, "solid", 0, 0)): position.x = player1.position.x - 12
#                        elif (gml.collision_point(position.x, position.y+8, "solid", 0, 0)): position.x = player1.position.x - 4
#                        position.y = player1.position.y - 8
#                        with player1  hold_item = 0 pickup_item_type = "" 
                
            
        
    


#    if (status >= stunned):

#        scr_check_collisions()


#    # dy:  friction
#    if (col_bot):

#        if (abs(x_vel) < 0.1): x_vel = 0
#        elif (abs(x_vel) != 0): x_vel *= 0.3


#    if (Collision.i"collision_solid()): position.y -= 2"

#    if (status == eating and image_index == 8):

#        MiscScripts.scr_create_blood(position.x+8, position.y, 1)


#    if (status == sleepy and image_index == 6 and randi_range(1,8) == 1):

#        if (facing == left):
    
#            bone = gml.instance_create(position.x+2, position.y+4, Objects.bone)
#            with bone  x_vel = -2 
    
#        else:
    
#            bone = gml.instance_create(position.x+14, position.y+4, Objects.bone)
#            with bone  x_vel = 2 
    


#    if (status < sleepy):

#        sprite_index = "man_trap_left"
