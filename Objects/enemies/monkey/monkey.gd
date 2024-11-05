
extends Enemy


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func collision with o_character():
    #    # dy:  jumped on - caveman, man_trap replaces this script with its own
#    if (abs(other.position.x-(position.x+8)) > 4 or status == grab):

#        # dy:  do nothing

#    elif (not other.dead and (other.state == 15 or other.state == 16) and other.position.y < position.y+2 and not other.swimming):

#        other.y_vel = -6 - 0.2 * other.y_vel
#        other.fall_timer = 0
#        hp -= 1
#        Audio.play_sound(global.snd_hit)

#    elif (not other.invincible and grab_counter == 0):

#        if ((position.y+8) > player1.position.y+2): position.y = player1.position.y+2-8
#        if ((position.y+8) < player1.position.y-2): position.y = player1.position.y-2-8
#        status = grab
#        x_vel = 0
#        y_vel = 0
#        grabX = position.x - player1.position.x
#        grabY = position.y - player1.position.y
#        counter = randi_range(40,80)



    

#func collision with o_item():
    #    if (throw_counter == 0 and status != grab and other.active and not other.held):

#        if (other.type == "rope"):
    
#            if (not other.falling):
        
#                if (facing == right): other.x_vel = 5
#                else: other.x_vel = -5
#                other.y_vel = -4
#                if (not gml.collision_point(other.position.x, other.position.y, "solid", 0, 0)): other.position.y = position.y-2
#                throw_counter = 60
#                status = idle
#                counter = randi_range(20,60)
        
    
#        else:
    
#            if (facing == right): other.x_vel = 5
#            else: other.x_vel = -5
#            other.y_vel = -4
#            if (not gml.collision_point(other.position.x, other.position.y-2, "solid", 0, 0)): other.position.y -= 2
#            throw_counter = 60
#            status = idle
#            counter = randi_range(20,60)
    


    

#func create():
    #    # action_inherited
#    super()

#    # main_code
#    type = "monkey"
#    PlatformEngine.make_active()
#    Collision.set_collision_bounds(4, 6, 12, 16)
#    x_vel = 0
#    y_vel = 0
#    y_delta = -0.4
#    my_grav = 0.2
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
#    hang = 5
#    climb = 6
#    grab = 7
#    status = hang

#    grabX = 0
#    grabY = 0
#    grab_counter = 0

#    up = 0
#    down = 1
#    dir = 0

#    counter = 0
#    bounce_counter = 0
#    vine_counter = 0
#    throw_counter = 60

#    shake_counter = 0
#    shake_toggle = 1

#    if (gml.collision_point(position.x, position.y, "water", 0, 0)): swimming = true

    

#func step():
    #    # action_inherited
#    super()

#    # main_code
#    if ((position.x > view_xview[0]-20 and position.x < view_xview[0] + view_wview[0]+4 and:
#            position.y > view_yview[0]-20 and position.y < view_yview[0] + view_hview[0]+4))

#    depth = 40

#    PlatformEngine.move_to(x_vel,y_vel)


#    if (status != hang and status != climb and status != grab): y_vel += my_grav
#    if (y_vel > y_vel_limit): y_vel = y_vel_limit

#    if (gml.collision_point(position.x+8, position.y+8, "solid", 0, 0)): hp = -999

#    if (gml.collision_point(position.x+8, position.y+8, "water", -1, -1)):

#        if (not swimming):
    
#            gml.instance_create(position.x+8, position.y, Objects.splash)
#            swimming = true
#            Audio.play_sound(global.snd_splash)
    

#    else:

#        swimming = false


#    if (hp < 1):

#        MiscScripts.scr_create_blood(position.x+8, position.y+8, 3)
#        if (count"as_kill):"
    
#            if (InLevel.i"real_level()): global.total_monkey_kills += 1 # dy:  this is for stats"
#            global.monkeys += 1
#            global.kills += 1
    
#        gml.instance_destroy()


#    if (Collision.i"collision_right(1)):"

#        x_vel = -1


#    if (Collision.i"collision_left(1)):"

#        x_vel = 1


#    col_bot = false
#    if (Collision.i"collision_bottom(1)): col_bot = true"

#    if (grab_counter > 0): grab_counter -= 1
#    if (vine_counter > 0): vine_counter -= 1
#    if (throw_counter > 0): throw_counter -= 1

#    dist = gml.distance_to_object(character)

#    if (status == idle):

#        x_vel = 0
#        if (counter > 0): counter -= 1
#        else: status = walk
#        if (dist < 64): status = bounce
#        # dy: if (status == bounce): Audio.play_sound(global.snd_frog)

#    elif (status == walk):

#        if (Collision.i"collision_left(1) or Collision.is_collision_right(1)):"
    
#            if (facing == left): facing = right
#            else: facing = left
    
    
#        if (facing == left):
    
#            x_vel = -2
    
#        else:
    
#            x_vel = 2
    
    
#        if (randi_range(1,100) == 1):
    
#            status = idle
#            counter = randi_range(20,50)
#            x_vel = 0
    

#    elif (status == recover):

#        if (col_bot):
    
#            status = idle
#            x_vel = 0
#            y_vel = 0
#            counter = randi_range(10,40)
    
#        elif (Collision.i"collision_ladder()):"
    
#            if (vine_counter == 0):
        
#                status = hang
#                x_vel = 0
#                y_vel = 0
#                counter = randi_range(10,40)
        
    

#    elif (status == bounce):

#        if (col_bot):
    
#            y_vel = -1 * randi_range(4,5)
#            if (character.position.x < (position.x+8)):
        
#                facing = left
#                x_vel = -2
        
#            else:
        
#                facing = right
#                x_vel = 2
        
    
#        else:
    
#            status = recover
#            Audio.play_sound(global.snd_monkey)
    

#    elif (status == hang):

#        x_vel = 0
#        y_vel = 0
#        if (counter > 0): counter -= 1
#        else:
    
#            status = climb
#            # dy:  dir = randi_range(0,1)
    

#    elif (status == climb):

#        x_vel = 0
#        if (dir == up):
    
#            y_vel = -1
#            if (not gml.collision_point(position.x+8, position.y, "vine", 0, 0)):
        
#                dir = down
#                status = hang
#                counter = randi_range(10,40)
        
    
#        else:
    
#            y_vel = 1
#            if (not gml.collision_point(position.x+8, position.y+22, "vine", 0, 0)):
        
#                dir = up
#                status = hang
#                counter = randi_range(10,40)
        
    
    
#        if (dist < 64 and character.position.y > position.y):
    
#            status = bounce
#            vine_counter = 30
#            y_vel = -1 * randi_range(2,4)
#            if (character.position.x < position.x):
        
#                facing = left
#                x_vel = -3
        
#            else:
        
#                facing = right
#                x_vel = 3
        
    

#    elif (status == grab):

#        x_vel = 0
#        y_vel = 0
#        depth = 120
#        position.x = player1.position.x+grabX
#        position.y = player1.position.y+grabY
#        if (player1.facing == 18): facing = left
#        else: facing = right
#        if (counter > 0): counter -= 1
#        else:
    
#            n = 500+ceil(500 / 4)*global.level_type
#            if (randi_range(1,4) == 1):
        
#                # dy:  trip player
#                with player1
            
#                    if (facing == 18): x_vel = -3
#                    else: x_vel = 3
#                    y_vel = -3
#                    stunned = true
#                    stun_timer = 40
#                    status = 16
#                    if (hold_item):
                
#                        scr_drop_item()
#                        /*
#                        if (hold_item.type == "bow" and bow_armed):
                    
#                            CharacterScripts.scr_fire_bow()
                    
#                        else:
                    
#                            hold_item.held = false
#                            hold_item = 0
#                            pickup_item_type = ""
                    
#                        */
                
            
#                Audio.play_sound(global.snd_hit)
        
#            elif (global.money >= n and randi_range(1,10) <= 8):
        
#                # dy:  throw out money
#                global.money -= n
#                obj = gml.instance_create(position.x, position.y, Objects.gold_nugget)
#                with obj
            
#                    can_collect = false
#                    alarm_0(20)
#                    x_vel = randi_range(1,3)-randi_range(1,3)
#                    y_vel = -randi_range(3,4)
            
#                Audio.play_sound(global.snd_throw)
        
#            elif (randi_range(1,2) == 1 and global.rope > 0):
        
#                # dy:  throw out rope
#                global.rope -= 1
#                obj = gml.instance_create(position.x, position.y, Objects.rope_throw)
#                with obj
            
#                    x_vel = randi_range(1,3)-randi_range(1,3)
#                    y_vel = -randi_range(3,4)
            
#                Audio.play_sound(global.snd_throw)
        
#            elif (global.bombs > 0):
        
#                # dy:  throw out bomb
#                global.bombs -= 1
#                obj = gml.instance_create(position.x, position.y, Objects.bomb)
#                if (randi_range(1,10) == 1):
            
#                    obj.sprite_index = "bomb_armed"
#                    obj.armed = true
#                    obj.image_speed = 1
#                    obj.alarm_1(40)
            
#                with obj
            
#                    x_vel = randi_range(1,3)-randi_range(1,3)
#                    y_vel = -randi_range(3,4)
            
#                Audio.play_sound(global.snd_throw)
                
        
#            status = bounce
#            vine_counter = 20
#            y_vel = -1 * randi_range(2,4)
#            if (character.position.x > (position.x+8)):
        
#                facing = left
#                x_vel = -3
        
#            else:
        
#                facing = right
#                x_vel = 3
        
#            grab_counter = 60
    

#    elif (status != drowned):

#        status = idle
#        x_vel = 0


#    if (status != grab and Collision.i"collision_top(1)):"
#        y_vel = 1

#    if (status == hang): sprite_index = "monkey_hang_l"
#    elif (status == climb or status == grab): sprite_index = "monkey_climb_l"
#    elif (not col_bot): sprite_index = "monkey_jump_l"
#    elif (status == walk): sprite_index = "monkey_walk_l"
#    else: sprite_index = "monkey_left"
