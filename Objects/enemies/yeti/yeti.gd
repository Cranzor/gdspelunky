
extends Enemy


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func alarm 0():
    #    whipped = false

    

#func animation_end():
    #    if (sprite_index == "yeti_throw_l):"

#        status = idle
#        sprite_index = "yeti_left"


    

#func collision with o_character():
    #    # dy:  jumped on
#    if (abs(other.position.x-(position.x+8)) > 8):

#        # dy:  do nothing

#    elif (not other.dead and not other.stunned and (other.state == 15 or other.state == 16) and other.position.y < position.y+5 and not other.swimming):

#        if (status < stunned):
    
#            other.y_vel=-6-0.2*other.y_vel
#            if (global.ha"spike_shoes):  hp -= (3 * ceil(other.fall_timer/16)) gml.instance_create(other.position.x, other.position.y+8, Objects.blood) "
#            else: hp -= (1 * ceil(other.fall_timer/16))
#            other.fall_timer = 0
#            status = stunned
#            counter = stun_time
#            y_vel = -6
#            if (other.position.x < position.x+8): x_vel += 1
#            else: x_vel -= 1
#            image_speed = 0.5
#            Audio.play_sound(global.snd_hit)
    

#    elif (other.invincible == 0 and status < stunned):

#        if (gml.collision_point(position.x+8, position.y-4, "solid", 0, 0)):
    
#            other.blink = 30
#            other.invincible = 30
#            if (other.position.x < position.x):
#                other.x_vel = -6
#            else:
#                other.x_vel = 6
#            gml.instance_create(other.position.x, other.position.y, Objects.blood)
    
#            if (global.plife > 0):
        
#                global.plife -= 1
#                if (global.plife <= 0 and InLevel.i"real_level()): global.enemy_deaths[13] += 1"
        
#            Audio.play_sound(global.snd_hurt)
    
#        elif (status != throw):
    
#            status = throw
#            x_vel = 0
#            if (other.position.x > position.x+8):
        
#                facing = right
#                sprite_index = "yeti_throw_l"
#                other.position.x = position.x
#                other.position.y = position.y
#                other.y_vel = -6
#                other.x_vel = 6
        
#            else:
        
#                facing = left
#                sprite_index = "yeti_throw_l"
#                other.position.x = position.x + 16
#                other.position.y = position.y
#                other.y_vel = -6
#                other.x_vel = -6
        
        
#            other.stunned = true
#            other.bounced = false
#            other.wall_hurt = 1
        
#            with other
        
#                if (hold_item):
            
#                    if (hold_item.type == "gold idol"): hold_item.position.y -= 8
#                    scr_drop_item(x_vel, y_vel)
            
                
    



    

#func collision with o_whip():
    #    if (not whipped):

#        if (other.puncture):
    
#            hp -= other.damage
#            count"as_kill = true"
#            if (blood_left > 0):
        
#                MiscScripts.scr_create_blood(position.x+sprite_width/2, position.y+sprite_height/2, 1)
#                if (hp < 0): blood_left -= 1
        
#            status = stunned
#            counter = stun_time
#            y_vel = -3
#            if (player1.position.x-8 < position.x): x_vel = 2
#            else: x_vel = -2
#            image_speed = 0.5
#            Audio.play_sound(global.snd_hit)
#            whipped = true
#            alarm_0(10)
    
#        else:
    
#            y_vel = -2
#            if (player1.position.x-8 < position.x): x_vel = 1
#            else: x_vel = -1
#            Audio.play_sound(global.snd_hit)
#            whipped = true
#            alarm_0(10)
    


    

#func collision with o_whip_pre():
    #    if (not whipped):

#        if (other.type == "machete"):
    
#            hp -= other.damage
#            count"as_kill = true"
#            if (blood_left > 0):
        
#                MiscScripts.scr_create_blood(position.x+sprite_width/2, position.y+sprite_height/2, 1)
#                if (hp < 0): blood_left -= 1
        
#            status = stunned
#            counter = stun_time
#            y_vel = -3
#            if (other.position.x < (position.x+8)): x_vel = 2
#            else: x_vel = -2
#            image_speed = 0.5
#            Audio.play_sound(global.snd_hit)
#            whipped = true
#            alarm_0(10)
    
#        else:
    
#            y_vel = -2
#            if (other.position.x < position.x): x_vel = 1
#            else: x_vel = -1
#            Audio.play_sound(global.snd_hit)
#            whipped = true
#            alarm_0(10)
    


    

#func create():
    #    # action_inherited
#    super()

#    # main_code
#    PlatformEngine.make_active()
#    Collision.set_collision_bounds(2, 0, sprite_width-2, sprite_height)
#    x_vel = 2.5
#    image_speed = 0.5

#    # dy:  stats
#    type = "yeti"
#    hp = 5
#    invincible = 0
#    favor = 4

#    idle = 0
#    walk = 1
#    attack = 2
#    throw = 3
#    stunned = 98
#    dead = 99
#    status = idle

#    whipped = false

#    bounced = false
#    dead = false
#    counter = 0
#    sight_counter = 0

#    left = 0
#    right = 1
#    facing = right

#    shake_counter = 0
#    shake_toggle = 1

    

#func step():
    #    # action_inherited
#    super()

#    # main_code
#    if (active):

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

#    if (col_bot and status != stunned): y_vel = 0

#    if (status != dead and status != stunned and hp < 1):

#        status = dead


#    if (status >= stunned):

#        if (gml.collision_point(position.x+8, position.y+12, "solid", 0, 0)):
    
#            MiscScripts.scr_create_blood(position.x+8, position.y+8, 3)
#            Audio.play_sound(global.snd_caveman_die)
#            gml.instance_destroy()
    

#    elif (not held and gml.collision_point(position.x+8, position.y+8, "solid", 0, 0)):

#        MiscScripts.scr_create_blood(position.x+8, position.y+8, 3)
#        Audio.play_sound(global.snd_caveman_die)
#        gml.instance_destroy()

    
#    if (status == idle):

#        bounced = false
#        if (Collision.i"collision_bottom(1) and:"
#            (gml.collision_point(position.x-1, position.y, "solid", -1, -1) or gml.collision_point(position.x+16, position.y, "solid", -1, -1)))
    
#            y_vel = -6
#            if (facing == left): x_vel = -1
#            else: x_vel = 1
#            counter -= 10
    
    
#        if (y_vel < 0 and Collision.i"collision_top(1)):"
    
#            y_vel = 0
    

#        if (Collision.i"collision_bottom(1) and: counter > 0) counter -= 1    "
#        if (counter < 1):
    
#            facing = randi_range(0,1)
#            status = walk
    
#        if (sight_counter > 0): sight_counter -= 1
#        else:
    
#            sight = gml.instance_create(position.x, position.y, Objects.enemy_sight)
#            if (facing == left): sight.direction = 180
#            else: sight.direction = 0
#            sight.speed = 10
#            sight.owner = gml.instance_place(position.x, position.y, yeti)
#            sight_counter = 5
    

#    elif (status == walk):

#        if (Collision.i"collision_left(1) or Collision.is_collision_right(1)):"
    
#            if (facing == left): facing = right
#            else: facing = left
    
    
#        if (not Collision.i"collision_bottom(1)):"
    
#            # dy:  do nothing
    
#        elif (randi_range(1,100) == 1):
    
#            status = idle
#            counter = randi_range(20,50)
#            x_vel = 0
    
#        elif (facing == left):
    
#            x_vel = -1.5
#            if (not gml.collision_point(position.x-1, position.y+16, "solid", -1, -1)):
        
#                status = idle
#                counter = randi_range(20,50)
#                x_vel = 0
        
    
#        elif (facing == right):
    
#            x_vel = 1.5
#            if (not gml.collision_point(position.x+16, position.y+16, "solid", -1, -1)):
        
#                status = idle
#                counter = randi_range(20,50)
#                x_vel = 0
         
    
    
#        if (sight_counter > 0): sight_counter -= 1
#        else:
    
#            sight = gml.instance_create(position.x, position.y, Objects.enemy_sight)
#            if (facing == left): sight.direction = 180
#            else: sight.direction = 0
#            sight.speed = 10
#            sight.owner = gml.instance_place(position.x, position.y, yeti)
#            sight_counter = 5
    

#    elif (status == attack):

#        image_speed = 1
#        if (Collision.i"collision_left(1) or Collision.is_collision_right(1)):"
    
#            if (facing == left): facing = right
#            else: facing = left
    
#        if (facing == left): x_vel = -3
#        else: x_vel = 3

#    elif (status == stunned):

#        if (x_vel == 0 and hp > 0): sprite_index = "yeti_stun_l"
#        elif (bounced):
    
#            if (y_vel < 0): sprite_index = "yeti_bounce_l"
#            else: sprite_index = "yeti_fall_l"
    
#        else:
    
#            if (abs(x_vel) > 0): sprite_index = "yeti_die_ll"
#            else: sprite_index = "yeti_die_lr"
    
    
#        if (gml.collision_point(position.x, position.y, "spikes", 0, 0) and dead and y_vel != 0):
    
#            if (randi_range(1,8) == 1): gml.instance_create(other.position.x, other.position.y, Objects.blood)
    
    
#        if (col_bot and not bounced):
    
#            bounced = true
#            MiscScripts.scr_create_blood(position.x+8, position.y+8, 1)
    
    
#        if (held or col_bot):
          
#            if (counter > 0): counter -= 1
#            elif (hp > 0):
        
#                status = idle
#                if (held):
            
#                    held = false
#                    with player1  hold_item = 0 pickup_item_type = "" 
            
        
    

#    elif (status == dead):

#        if (not dead):
    
#            if (count"as_kill):"
        
#                if (InLevel.i"real_level()): global.enemy_kills[13] += 1"
#                global.yetis += 1
#                global.kills += 1
        
#            Audio.play_sound(global.snd_caveman_die)
#            dead = true
    

#        sprite_index = "yeti_dead_l"
    
#        if (x_vel > 0 or y_vel > 0): status = stunned


#    if (status >= stunned):

#        scr_check_collisions()
    
#        if (x_vel == 0 and y_vel == 0 and hp < 1): status = dead


#    # dy: if (Collision.i"collision_solid()): position.y -= 2"

#    if (x_vel > 0): x_vel -= 0.1
#    if (x_vel < 0): x_vel += 0.1
#    if (abs(x_vel) < 0.5): x_vel = 0

#    if (status < stunned and status != throw):

#        if (abs(x_vel) > 0): sprite_index = "yeti_run_left"
#        else: sprite_index = "yeti_left"

#    if (held):

#        if (hp > 0): sprite_index = "yeti_held_l"
#        else: sprite_index = "yeti_d_held_l"
