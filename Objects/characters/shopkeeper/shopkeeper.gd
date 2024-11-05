
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
    #    if (sprite_index == "shop_throw_l):"

#        status = attack
#        sprite_index = "shop_left"


    

#func collision with o_character():
    #    if (status == idle or status == follow or status == stunned or status == dead or hp < 1 or other.dead or other.stunned or abs(other.position.x-(position.x+8)) > 8):

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
#                if (global.plife <= 0 and InLevel.i"real_level()): global.enemy_deaths[19] += 1"
        
#            Audio.play_sound(global.snd_hurt)
    
#        elif (status != throw):
    
#            status = throw
#            x_vel = 0
#            if (other.position.x > position.x+8):
        
#                facing = right
#                sprite_index = "shop_throw_l"
#                other.position.x = position.x
#                other.position.y = position.y
#                other.y_vel = -6
#                other.x_vel = 6
        
#            else:
        
#                facing = left
#                sprite_index = "shop_throw_l"
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
            
            
    



    

#func collision with o_shotgun():
    #    if (hp > 0 and status == attack and not ha"gun):"

#        with other
    
#            if (held):
        
#                player1.hold_item = 0
#                player1.pickup_item_type = ""
#                held = false
        
#            gml.instance_destroy()
    
#        ha"gun = true"


    

#func collision with o_whip():
    #    if (not whipped):

#        if (other.type == "machete"):
    
#            hp -= other.damage
#            if (blood_left > 0):
        
#                MiscScripts.scr_create_blood(position.x+sprite_width/2, position.y+sprite_height/2, 1)
#                if (hp < 0): blood_left -= 1
        
    
#        y_vel = -2
#        if (other.position.x < position.x): x_vel = 1
#        else: x_vel = -1
#        Audio.play_sound(global.snd_hit)
#        whipped = true
#        alarm_0(10)
#        status = attack


    

#func collision with o_whip_pre():
    #    if (not whipped):

#        if (other.type == "machete"):
    
#            hp -= other.damage
#            if (blood_left > 0):
        
#                MiscScripts.scr_create_blood(position.x+sprite_width/2, position.y+sprite_height/2, 1)
#                if (hp < 0): blood_left -= 1
        
    
#        y_vel = -2
#        if (other.position.x < position.x): x_vel = 1
#        else: x_vel = -1
#        Audio.play_sound(global.snd_hit)
#        whipped = true
#        alarm_0(10)
#        status = attack


    

#func create():
    #    # action_inherited
#    super()

#    # main_code
#    PlatformEngine.make_active()
#    Collision.set_collision_bounds(2, 0, sprite_width-2, sprite_height)
#    x_vel = 0
#    image_speed = 0.5
#    my_grav = 0.6

#    # dy:  stats
#    type = "shopkeeper"
#    style = "general"
#    hp = 20
#    invincible = 0
#    favor = 12

#    idle = 0
#    walk = 1
#    attack = 2
#    throw = 3
#    patrol = 4
#    follow = 5
#    stunned = 98
#    dead = 99
#    status = 0

#    whipped = false
#    bounced = false
#    dead = false
#    counter = 0
#    sight_counter = 0
#    turn_timer = 0
#    throw_count = 0
#    stun_time = 5

#    bet_value = 1000 + global.curr_level * 500

#    left = 0
#    right = 1
#    facing = left

#    shake_counter = 0
#    shake_toggle = 1

#    welcomed = false
#    angered = false

#    ha"gun = true"
#    firing = 0
#    firing_max = 30

    

#func draw():
    #    if (facing == right): draw_sprite_ext(sprite_index, image_index, position.x+16, position.y, -1, image_yscale, image_angle, image_blend, image_alpha)
#    else: draw_sprite_ext(sprite_index, image_index, position.x, position.y, 1, image_yscale, image_angle, image_blend, image_alpha)
#    # dy:  draw_sprite_ext(sprite_index, image_index, position.x, position.y, 1, 1, 0, c_white, 1)
#    if (ha"gun and status != idle and status != follow):"

#        if (facing == left): draw_sprite_ext("shotgun_left, 0, position.x+6, position.y+10, 1, 1, 0, c_white, 1)"
#        else: draw_sprite_ext("shotgun_right, 0, position.x+10, position.y+10, 1, 1, 0, c_white, 1)"


    

#func step():
    #    # action_inherited
#    super()

#    # main_code
#    if ((position.x > view_xview[0]-20 and position.x < view_xview[0]+view_wview[0]+4 and:
#         position.y > view_yview[0]-20 and position.y < view_yview[0]+view_hview[0]+4))

#    PlatformEngine.move_to(x_vel,y_vel)

#    if (not held): y_vel += my_grav
#    if (y_vel > 8): y_vel = 8

#    col_left = false
#    col_right = false
#    col_bot = false
#    col_top = false
#    if (Collision.i"collision_left(1)): col_left = true"
#    if (Collision.i"collision_right(1)): col_right = true"
#    if (Collision.i"collision_bottom(1)): col_bot = true"
#    if (Collision.i"collision_top(1)): col_top = true"

#    if (col_bot and status != stunned): y_vel = 0

#    if (throw_count > 0): throw_count -= 1

#    # dy:  crushed
#    if (status >= stunned):

#        if (gml.collision_point(position.x+8, position.y+12, "solid", 0, 0)):
    
#            MiscScripts.scr_create_blood(position.x+8, position.y+8, 3)
#            Audio.play_sound(global.snd_caveman_die)
#            if (hp > 0):
        
#                if (InLevel.i"real_level()): global.enemy_kills[19] += 1"
#                global.shopkeepers += 1
#                global.kills += 1
        
#            global.murderer = true
#            gml.instance_destroy()
    

#    elif (not held and gml.collision_point(position.x+8, position.y+8, "solid", 0, 0)):

#        MiscScripts.scr_create_blood(position.x+8, position.y+8, 3)
#        Audio.play_sound(global.snd_caveman_die)
#        if (hp > 0):
    
#            if (InLevel.i"real_level()): global.enemy_kills[19] += 1"
#            global.shopkeepers += 1
#            global.kills += 1
    
#        global.murderer = true
#        if (ha"gun):"
    
#            obj = gml.instance_create(position.x+8, position.y+8, Objects.shotgun)
#            obj.y_vel = randi_range(4,6)
#            if (x_vel < 0): obj.x_vel = -1 * randi_range(4,6)
#            else: obj.x_vel = randi_range(4,6)
#            obj.cost = 0
#            obj.for_sale = false
#            ha"gun = false"
    
#        gml.instance_destroy()


#    if (status != dead and status != stunned and hp < 1):

#        status = dead


#    dist = gml.distance_to_object(player1)    

#    if (status == idle or status == follow):

#        if (player1.hold_item > 0):
    
#            item = player1.hold_item
#            if (item.cost > 0):
        
#                global.message = item.buy_message
#                if (global.gamepad_on): global.message2 = "press " + scr_get_joy(global.joy_pay_val) + " to purchase."
#                else: global.message2 = "press " + scr_get_key(global.key_pay_val) + " to purchase."
#                global.message_timer = 200
        
    


#    if ((status == patrol or status == walk)):

#        if (not player1.dead and gml.distance_to_object(player1) < 64 and player1.position.y - (position.y+8) < 16):
    
#            status = attack
    
#        elif (abs(player1.position.x-(position.x+8)) < 4):
    
#            status = attack
    


#    if (status == idle):

#        bounced = false
    
#        if (col_left):
    
#            position.x += 1
    
#        if (col_right):
    
#            position.x -= 1
    
#        if (col_left and col_right): status = attack
    
#        if (player1.position.x < position.x+8): facing = left
#        else: facing = right
    
#        if (y_vel < 0 and col_top):
    
#            y_vel = 0
    
    
#        if (global.murderer or global.thief_level > 0):
    
#            status = patrol
    
#        elif (not welcomed and (LevelGeneration.scr_get_room_x(player1.position.x) == LevelGeneration.scr_get_room_x(position.x) and LevelGeneration.scr_get_room_y(player1.position.y) == LevelGeneration.scr_get_room_y(position.y))):
    
#            if (style == "bomb"): global.message = "welcome to " + scr_get_name() + "'S bomb shop!"
#            elif (style == "weapon"): global.message = "welcome to " + scr_get_name() + "'S armory!"
#            elif (style == "clothing"): global.message = "welcome to " + scr_get_name() + "'S clothing shop!"
#            elif (style == "rare"): global.message = "welcome to " + scr_get_name() + "'S specialty shop!"
#            elif (style == "craps"): global.message = "welcome to " + scr_get_name() + "'S dice house!"
#            elif (style == "kissing"): global.message = "welcome to " + scr_get_name() + "'S kissing parlor!"
#            elif (style == "ankh"): global.message = "I have something special..."
#            else: global.message = "welcome to " + scr_get_name() + "'S supply shop!"
#            if (style == "craps"):
        
#                if (global.gamepad_on): global.message2 = "press " + scr_get_joy(global.joy_pay_val) + " to bet $" + str\(bet_value) + "."
#                else: global.message2 = "press " + scr_get_key(global.key_pay_val) + " to bet $" + str\(bet_value) + "."
        
#            elif (style == "kissing"):
        
#                if (global.gamepad_on): global.message2 = "$" + str\(InLevel.get_kis"value()) + " A kiss. press " + scr_get_joy(global.joy_pay_val) + ".""
#                else: global.message2 = "$" + str\(InLevel.get_kis"value()) + " A kiss. press " + scr_get_key(global.key_pay_val) + ".""
        
#            else: global.message2 = ""
#            global.message_timer = 200
#            welcomed = true
    
    
#        # dy: # dy: # dy: # dy: # dy: # dy: # dy: /
#        # dy:  craps
#        # dy: # dy: # dy: # dy: # dy: # dy: # dy: /
    
#        if (style == "craps"):
    
#            global.dice_rolled = true
#            global.dice_value = 0
#            if (gml.instance_number(dice) == 2 and player1.bet > 0):
        
#                with dice
            
#                    if (not rolled): global.dice_rolled = false
#                    global.dice_value += value
            
        
#            else:
        
#                global.dice_rolled = false
        
        
#            if (global.dice_rolled):
        
#                if (global.dice_value == 7):
            
#                    if (InLevel.i"real_level()): global.dice_games_won += 1"
#                    global.message = "you rolled A seven!"
#                    global.message2 = "you win A prize!"
#                    global.message_timer = 200
#                    player1.bet = 0
#                    with item
                
#                        if (in_dice_house):
                    
#                            obj = gml.instance_create(position.x-4, position.y+6, Objects.poof)
#                            obj.x_vel = -0.4
#                            obj = gml.instance_create(position.x+4, position.y+6, Objects.poof)
#                            obj.x_vel = 0.4
#                            scr_generate_item(position.x, position.y, 1)
#                            obj.in_dice_house = true
#                            if (player1.position.x < position.x): position.x -= 32
#                            else: position.x += 32
#                            obj = gml.instance_create(position.x-4, position.y+6, Objects.poof)
#                            obj.x_vel = -0.4
#                            obj = gml.instance_create(position.x+4, position.y+6, Objects.poof)
#                            obj.x_vel = 0.4
#                            cost = 0
#                            for_sale = false
#                            in_dice_house = false
                    
                
            
#                elif (global.dice_value > 7):
            
#                    if (InLevel.i"real_level()): global.dice_games_won += 1"
#                    global.message = "you rolled A " + str\(global.dice_value) + "!"
#                    global.message2 = "congratulations! you win!"
#                    global.message_timer = 200
#                    global.collect += player1.bet * 2
#                    global.collect_counter += 20
#                    if (global.collect_counter > 100): global.collect_counter = 100
#                    player1.bet = 0
            
#                elif (global.dice_value < 7):
            
#                    if (InLevel.i"real_level()): global.dice_games_lost += 1"
#                    global.message = "you rolled A " + str\(global.dice_value) + "!"
#                    global.message2 = "I'M sorry, but you lose!"
#                    global.message_timer = 200
#                    player1.bet = 0
            
#                global.dice_rolled = false
#                with dice  rolled = false 
        
    
#        elif (player1.hold_item > 0):
    
#            obj = player1.hold_item
#            if (obj.cost > 0):
        
#                if (LevelGeneration.scr_get_room_x(player1.position.x) == LevelGeneration.scr_get_room_x(position.x) and LevelGeneration.scr_get_room_y(player1.position.y) == LevelGeneration.scr_get_room_y(position.y)):
            
#                    status = follow
            
        
    

#    elif (status == follow):

#        image_speed = 0.5
    
#        if (Collision.i"collision_left(1) or Collision.is_collision_right(1)):"
    
#            if (facing == left): facing = right
#            else: facing = left
    
    
#        if (turn_timer > 0): turn_timer -= 1
#        elif (abs(player1.position.y - (position.y+8)) < 8 and Collision.i"collision_bottom(1) and dist > 16):"
    
#            if (player1.position.x < position.x): facing = left
#            else: facing = right
#            turn_timer = 10
    
    
#        i = dist/16 * 1.5
#        if (facing == left):
    
#            x_vel = -i
    
#        else:
    
#            x_vel = i
    

#        if (x_vel < -3): x_vel = -3
#        if (x_vel > 3): x_vel = 3
    
#        if (dist < 12 or player1.position.y < position.y): x_vel = 0
    
#        if (player1.hold_item != 0):
    
#            obj = player1.hold_item
#            if (obj == 0 or obj.cost == 0):
        
#                status = idle
        
    
#        else:
    
#            status = idle
    

#    elif (status == patrol):

#        bounced = false
    
#        if (y_vel < 0 and Collision.i"collision_top(1)):"
    
#            y_vel = 0
    

#        if (col_bot and counter > 0): counter -= 1    
#        if (counter < 1):
    
#            facing = randi_range(0,1)
#            status = walk
    

#    elif (status == walk):

#        image_speed = 0.5

#        if (Collision.i"collision_left(1) or Collision.is_collision_right(1)):"
    
#            if (facing == left): facing = right
#            else: facing = left
    
    
#        if (facing == left):
    
#            if (not gml.collision_point(position.x-1, position.y, "solid", -1, -1)):
        
#                status = patrol
#                counter = randi_range(20,50)
#                x_vel = 0
        
#            x_vel = -1.5
    
#        else:
    
#            if (not gml.collision_point(position.x+16, position.y, "solid", -1, -1)):
        
#                status = patrol
#                counter = randi_range(20,50)
#                x_vel = 0
        
#            x_vel = 1.5
    
    
#        if (randi_range(1,100) == 1):
    
#            status = patrol
#            counter = randi_range(20,50)
#            x_vel = 0
    

#    elif (status == attack):

#        image_speed = 1
    
#        if (not angered):
    
#            with item
        
#                cost = 0
#                for_sale = false
        
#            angered = true
    
    
#        if (turn_timer > 0): turn_timer -= 1
#        elif (abs(player1.position.y - (position.y+8)) < 8 and Collision.i"collision_bottom(1) and dist > 16):"
    
#            if (player1.position.x < position.x): facing = left
#            else: facing = right
#            turn_timer = 20
    
    
#        if (Collision.i"collision_left(1) or Collision.is_collision_right(1)):"
    
#            if (facing == left): facing = right
#            else: facing = left
    
    
#        if (facing == left): x_vel = -3
#        else: x_vel = 3
    
#        if (ha"gun):"
    
#            if (firing > 0): firing -= 1
#            elif (abs(player1.position.y - (position.y+8)) < 32):
        
#                if (facing == left and player1.position.x < position.x+8 and dist < 96):
            
#                    gml.instance_create(position.x, position.y+9, Objects.shotgun_blast_left)
#                    for (i = 0 i < 6 i+= 1)
                
#                        obj = gml.instance_create(position.x+4, position.y+8, Objects.bullet)
#                        obj.x_vel = (-1 * randi_range(6,8)) + x_vel
#                        if (obj.x_vel >= -6): obj.x_vel = -6
#                        obj.y_vel = random(1) - random(1)
#                        obj.safe = true
#                        with obj  if (gml.collision_point(position.x, position.y, "solid", 0, 0)): gml.instance_destroy() 
                
#                    y_vel -= 1
#                    x_vel += 3
#                    Audio.play_sound(global.snd_shotgun)
#                    firing = firing_max
            
#                if (facing == right and player1.position.x > position.x+8 and dist < 96):
            
#                    gml.instance_create(position.x+16, position.y+9, Objects.shotgun_blast_right)
#                    for (i = 0 i < 6 i+= 1)
                
#                        obj = gml.instance_create(position.x+12, position.y+8, Objects.bullet)
#                        obj.x_vel = randi_range(6,8) + x_vel
#                        if (obj.x_vel < 6): obj.x_vel = 6
#                        obj.y_vel = random(1) - random(1)
#                        obj.safe = true
#                        with obj  if (gml.collision_point(position.x, position.y, "solid", 0, 0)): gml.instance_destroy() 
                
#                    y_vel -= 1
#                    x_vel -= 3
#                    Audio.play_sound(global.snd_shotgun)
#                    firing = firing_max
            
        
    
    
#        # dy:  jump
#        if (player1.position.y > position.y and abs(player1.position.x - (position.x+8)) < 64):
    
#            # dy:  do nothing
    
#        elif ((facing == left and gml.collision_point(position.x-16, position.y, "solid", -1, -1)) or:
#            (facing == right and gml.collision_point(position.x+32, position.y, "solid", -1, -1)))
    
#            if (col_bot and not Collision.i"collision_top(4)): y_vel = -1 * randi_range(7,8)"
#            /*
#            else:
        
#                if (facing == left): x_vel = -1.5
#                else: x_vel = 1.5
        
#            */
    
#        elif (player1.position.y <= position.y+16 and :
#                 ((facing == left and not gml.collision_point(position.x-16, position.y+16, "solid", -1, -1)) or
#                 (facing == right and not gml.collision_point(position.x+32, position.y+16, "solid", -1, -1))))
    
#            if (col_bot and not Collision.i"collision_top(4)): y_vel = -1 * randi_range(7,8)"
    
    
#        if (not col_bot and player1.position.y > position.y+8):
    
#            if (facing == left): x_vel = -1.5
#            else: x_vel = 1.5
    
    
#        if (player1.dead):
    
#            status = walk
    

#    elif (status == stunned):

#            if (col_bot): sprite_index = "shop_stun_l"
#            elif (bounced):
        
#                if (y_vel < 0): sprite_index = "shop_bounce_l"
#                else: sprite_index = "shop_fall_l"
        
#            else:
        
#                if (x_vel < 0): sprite_index = "shop_die_ll"
#                else: sprite_index = "shop_die_lr"
        
    
#        if (col_bot and not bounced):
    
#            bounced = true
#            MiscScripts.scr_create_blood(position.x+8, position.y+8, 3)
    
    
#        if (held or col_bot):
          
#            if (counter > 0): counter -= 1
#            elif (hp > 0):
        
#                status = attack
#                if (held):
            
#                    held = false
#                    with player1  hold_item = 0 pickup_item_type = "" 
            
        
    

#    elif (status == dead):

#        if (not dead):
    
#            if (InLevel.i"room("r_stars")):"
        
#                if (star"room.kills < 99): stars_room.kills += 1"
        
#            else:
        
#                if (InLevel.i"real_level()): global.enemy_kills[19] += 1"
#                global.shopkeepers += 1
#                global.kills += 1
#                global.murderer = true
#                repeat(randi_range(1,4))
            
#                    obj = gml.instance_create(position.x+8, position.y+8, Objects.gold_nugget)
#                    obj.y_vel = -1
#                    obj.x_vel = randi_range(1,3)-randi_range(1,3)
            
        
#            Audio.play_sound(global.snd_caveman_die)
        
#            dead = true
    

#        sprite_index = "shop_die_l"

    
#        if (abs(x_vel) > 0 or abs(y_vel) > 0): status = stunned


#    if (status >= stunned):

#        if (ha"gun):"
    
#            obj = gml.instance_create(position.x+8, position.y+8, Objects.shotgun)
#            obj.y_vel = randi_range(4,6)
#            if (x_vel < 0): obj.x_vel = -1 * randi_range(4,6)
#            else: obj.x_vel = randi_range(4,6)
#            obj.cost = 0
#            obj.for_sale = false
#            ha"gun = false"
    

#        scr_check_collisions()
    
#        if (x_vel == 0 and y_vel == 0 and hp < 1): status = dead


#    # dy: if (Collision.i"collision_solid()): position.y -= 2"

#    if (x_vel > 0): x_vel -= 0.1
#    if (x_vel < 0): x_vel += 0.1
#    if (abs(x_vel) < 0.5): x_vel = 0

#    if (status < stunned and status != throw):

#        if (abs(x_vel) > 0): sprite_index = "shop_run_left"
#        else: sprite_index = "shop_left"

#    if (held):

#            if (hp > 0): sprite_index = "shop_held_l"
#            else: sprite_index = "shop_d_held_l"
