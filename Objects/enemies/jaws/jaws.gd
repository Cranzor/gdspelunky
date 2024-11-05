
extends Enemy


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func animation_end():
    #    if (sprite_index == s_jaws_turn_l):

#        # DY: dir = 180
#        sprite_index = s_jaws_left
#        status = PAUSE
#        counter = 40

#    elif (sprite_index == s_jaws_turn_r):

#        # DY: dir = 0
#        sprite_index = s_jaws_right
#        status = PAUSE
#        counter = 40
#        position.x = position.x + 48


    

#func create():
    #    # action_inherited
#    super()

#    # main_code
#    type = "Mega Mouth"
#    image_speed = 0.5
#    Collision.set_collision_bounds(0, 0, 48, 32)
#    orig_x = 0
#    orig_y = 0
#    x_vel = 0
#    y_vel = 0
#    x_acc = 0.2
#    y_acc = 0.2
#    dir = 180
#    facing = 0

#    # DY:  stats
#    hp = 40
#    invincible = 0

#    bubble_timer = 0
#    bubble_timerMax = 40

#    # DY:  status
#    IDLE = 0
#    ATTACK = 1
#    PAUSE = 2
#    TURN = 3

#    can_pick_up = false
#    status = 0
#    counter = 0

#    shake_counter = 0
#    shake_toggle = 1

    

#func draw():
    #    draw_sprite(sprite_index, -1, position.x, position.y)
#    if (sprite_index == s_jaws_left):

#        if (hp < 10): draw_sprite(s_jaws_body3L, 0, position.x+16, position.y)
#        elif (hp < 20): draw_sprite(s_jaws_body2L, 0, position.x+16, position.y)
#        else: draw_sprite(s_jaws_body1L, 0, position.x+16, position.y)

#    elif (sprite_index == s_jaws_right):

#        if (hp < 10): draw_sprite(s_jaws_body3R, 0, position.x-48, position.y)
#        elif (hp < 20): draw_sprite(s_jaws_body2R, 0, position.x-48, position.y)
#        else: draw_sprite(s_jaws_body1R, 0, position.x-48, position.y)

#    /* debug
#    draw_set_font(global.my_font_small)
#    draw_set_color(c_white)
#    draw_text(position.x, position.y-16, str\(status) + ":" + str\(counter))
#    */

    

#func step():
    #    if ((position.x > view_xview[0]-48 and position.x < view_xview[0] + view_wview[0]+48 and:
#            position.y > view_yview[0]-48 and position.y < view_yview[0] + view_hview[0]+48))


#    if (not gml.collision_point(position.x+8, position.y+16, "water", 0, 0)):

#        hp -= 1


#    if (hp < 1):

#        if (counts_as_kill):
    
#            if (InLevel.is_real_level()): global.enemy_kills[12] += 1
#            global.megamouths += 1
#            global.kills += 1
    
#        MiscScripts.scr_create_blood(position.x+22+randi_range(0,4), position.y+14+randi_range(0,4), 4)
#        for repetition in range(1, 4):
    
#            gml.instance_create(position.x+22+randi_range(0,4), position.y+14+randi_range(0,6), "bone")
    
#        for repetition in range(1, 4):
    
#            obj = gml.instance_create(position.x+16, position.y+16, "crate")
#            obj.x_vel = randi_range(0,3)-randi_range(0,3)
#            obj.y_vel = -randi_range(1,2)
    
#        gml.instance_destroy()


#    dist = point_distance(position.x, position.y, player1.position.x, player1.position.y)

#    if (status == IDLE):

#        if (dir == 0): # DY:  right
    
#            if (gml.collision_point(position.x+18, position.y+16, "water", 0, 0) and not (gml.collision_point(position.x+18, position.y+16, "solid", 0, 0))):
        
#                PlatformEngine.move_to(2,0)
        
#            elif (not gml.collision_rectangle(position.x-32, position.y, position.x,  position.y+32, "solid", 0, 0)):
        
#                status = TURN
#                dir = 180
#                position.x = position.x-48
#                sprite_index = s_jaws_turn_l
#                image_index = 0
        
    
#        else:
    
#            if (gml.collision_point(position.x-2, position.y+16, "water", 0, 0) and not (gml.collision_point(position.x-2, position.y+16, "solid", 0, 0))):
        
#                PlatformEngine.move_to(-2,0)
        
#            elif (not gml.collision_rectangle(position.x+16, position.y, position.x+48,  position.y+32, "solid", 0, 0)):
        
#                status = TURN
#                dir = 0
#                sprite_index = s_jaws_turn_r
#                image_index = 0
        
    
    
#        if (not Collision.is_collision_bottom(2)):
    
#            position.y += 1
    

#        if (player1.swimming and not player1.dead):
    
#            status = ATTACK
    

#    elif (status == PAUSE):

#        if (counter > 0): counter -= 1
#        else:
    
#            status = IDLE
#            if (dir > 90 and dir < 270): dir = 180
#            else: dir = 0
    

#    elif (status == ATTACK and gml.instance_exists("player1")):

#        if (player1.swimming and not player1.dead):
    
#            if (sprite_index == s_jaws_left or sprite_index == s_jaws_right):
#                dir = point_direction(position.x+8, position.y+16, player1.position.x, player1.position.y-8)
        
#            turn = false
#            if (player1.position.x < position.x+8):
        
#                if (sprite_index == s_jaws_right and not gml.collision_rectangle(position.x-32, position.y, position.x,  position.y+32, "solid", 0, 0)):
            
#                    status = TURN
#                    dir = 180
#                    position.x = position.x-48
#                    sprite_index = s_jaws_turn_l
#                    image_index = 0
#                    turn = true
            
        
#            else:
        
#                if (sprite_index == s_jaws_left and not gml.collision_point(position.x-2, position.y+16, "solid", 0, 0)):
            
#                    status = TURN
#                    dir = 0
#                    sprite_index = s_jaws_turn_r
#                    image_index = 0
#                    turn = true
            
        
        
#            if (not turn):
        
#                if (gml.collision_point(position.x + cos(degtorad(dir)), position.y - sin(degtorad(dir)), "water", 0, 0) and:
#                not gml.collision_point(position.x + cos(degtorad(dir)), position.y - sin(degtorad(dir)), "solid", 0, 0))
            
#                    PlatformEngine.move_to(3 * cos(degtorad(dir)), -3 * sin(degtorad(dir)))
            
        
    
#        else:
    
#            status = IDLE
#            if (dir > 90 and dir < 270): dir = 180
#            else: dir = 0
    


#    if (bubble_timer > 0): bubble_timer -= 1
#    else:

#        gml.instance_create(position.x, position.y+16, "bubble")
#        bubble_timer = bubble_timerMax


#    if (sprite_index == s_jaws_left):

#        Collision.set_collision_bounds(0, 0, 64, 32)

#    elif (sprite_index == s_jaws_right):

#        Collision.set_collision_bounds(-48, 0, 16, 32)




    
