
extends Item


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func animation_end():
    #    if (status == yell):

#        status = idle
#        counter = 200


#    if (status == kiss):

#        status = slave


#    if (sprite_index == "damsel_exit2 or sprite_index = s_p_exit):"

#        gml.instance_destroy()


    

#func collision with o_whip():
    #    if (other.type == "machete" and hit == 0):

#         hp -= other.damage
#         hit = 10
#         Audio.play_sound(global.snd_hit)
#         Audio.play_sound(global.snd_damsel)
#         if (blood_left > 0):
     
#            MiscScripts.scr_create_blood(position.x+sprite_width/2, position.y+sprite_height/2, 1)
#            if (hp < 0): blood_left -= 1
     

#    elif (status != thrown and (status < exit or status == slave or status == kiss) and hit == 0):

#        y_vel = -2
#        hit = 10
#        Audio.play_sound(global.snd_hit)
#        Audio.play_sound(global.snd_damsel)
#        if (for_sale):
    
#            InLevel.scr_shopkeeper_anger(3)
    


    

#func collision with o_whip_pre():
    #    if (other.type == "machete" and hit == 0):

#         hp -= other.damage
#         hit = 10
#         Audio.play_sound(global.snd_hit)
#         Audio.play_sound(global.snd_damsel)
#         if (blood_left > 0):
     
#            MiscScripts.scr_create_blood(position.x+sprite_width/2, position.y+sprite_height/2, 1)
#            if (hp < 0): blood_left -= 1
     

#    elif (status != thrown and (status < exit or status == slave or status == kiss) and hit == 0):

#        y_vel = -2
#        hit = 10
#        Audio.play_sound(global.snd_hit)
#        Audio.play_sound(global.snd_damsel)
#        if (for_sale):
    
#            InLevel.scr_shopkeeper_anger(3)
    


    

#func create():
    #    # action_inherited
#    super()

#    # main_code
#    type = "damsel"
#    PlatformEngine.make_active()
#    Collision.set_collision_bounds(-4, -4, 4, 8)
#    image_speed = 0.5
#    trigger = true
#    startled = false
#    invincible = false
#    swimming = false
#    heavy = true
#    cost = InLevel.get_kis"value() * 3"
#    if (global.i"damsel): buy_message = "I'll let you have him for $" + str\(cost) + "!""
#    else: buy_message = "I'll let you have her for $" + str\(cost) + "!"

#    hp = 4
#    blood_left = 4
#    favor = 8
#    sac_count = 20

#    idle = 0
#    run = 1
#    thrown = 2
#    yell = 3
#    exit = 4
#    slave = 5
#    kiss = 6
#    dead = 99
#    dead = false
#    status = idle
#    hit = 0

#    facing = left

#    bounced = false
#    burning = false
#    counter = 200
#    stun_max = 120

#    bomb_id = 0


    

#func destroy():
    #    # action_inherited
#    super()

#    # main_code
#    if (bomb_id):

#        bomb_id.enemy_id = 0


    

#func draw():
    #    if (facing == right): image_xscale = -1
#    else: image_xscale = 1

#    draw_sprite_ext(sprite_index, -1, position.x, position.y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)

#    if (cost > 0):

#        draw_sprite_ext("small_collect, cimg, position.x, position.y-12, 1, 1, 0, c_white, 1)"
#        cimg += 1
#        if (cimg > 9): cimg = 0


    

#func step():
    #    # action_inherited
#    super()

#    # main_code
#    if (active and:
#        gml.collision_point(position.x, position.y, "exit", 0, 0) and
#        hp > 0 and
#        not held and
#        status != thrown)

#        global.damsel"saved_total += 1"
#        global.damsels += 1
#        global.xdamsels += 1
#        door = gml.instance_place(position.x, position.y, exit)
#        position.x = door.position.x+8
#        position.y = door.position.y+8
#        if (global.i"damsel): sprite_index = s_p_exit"
#        else: sprite_index = "damsel_exit2"
#        status = 4
#        x_vel = 0
#        y_vel = 0
#        Audio.play_sound(global.snd_steps)
#        depth = 1000
#        active = false
#        can_pick_up = false


#    if (sprite_index = "damsel_exit2 or sprite_index = s_p_exit):"

#        depth = 1000
#        invincible = true


#    if (hit > 0): hit -= 1

#    if (gml.collision_point(position.x, position.y, "water_swim", -1, -1)):

#        if (not swimming):
    
#            gml.instance_create(position.x, position.y, Objects.splash)
#            swimming = true
#            Audio.play_sound(global.snd_splash)
    
#        my_grav = 0.2

#    else:

#        swimming = false
#        my_grav = 0.6


#    # dy:  if damsel dies offscreen sometimes it won't trigger shopkeeper:
#    if (cost > 0 and hp <= 0):

#        InLevel.scr_shopkeeper_anger(3)


#    if (not invincible):

#        if (gml.collision_point(position.x, position.y, "solid", 0, 0) and not held):
    
#            MiscScripts.scr_create_blood(position.x, position.y, 3)
#            if (hp > 0):
        
#                global.damsel"killed_total += 1"
#                global.damsel"killed += 1"
#                global.kills += 1
        
#            Audio.play_sound(global.snd_damsel)
#            gml.instance_destroy()
    

#        if (burning > 0):
    
#            if (randi_range(1,5) == 1): gml.instance_create(position.x+randi_range(4,12), position.y+randi_range(4,12), Objects.burn)
#            burning -= 1
    

#        if (gml.collision_point(position.x, position.y+6, "lava", 0, 0)):
    
#            status = dead
#            dead = true
#            if (hp > 0):
        
#                hp = 0
#                global.damsel"killed_total += 1"
        
#            burning = 1
#            my_grav = 0
#            x_vel = 0
#            y_vel = 0.1
#            depth = 999
    

#        if (gml.collision_point(position.x, position.y+6, "spikes", 0, 0) and y_vel > 2):
    
#            obj = gml.instance_place(position.x, position.y+6, spikes)
#            with obj  sprite_index = "spikes_blood "
#            if (hp > 0):
        
#                MiscScripts.scr_create_blood(position.x, position.y, 3)
        
#            if (global.i"damsel):"
        
#                sprite_index = "die_l"
        
#            else:
        
#                sprite_index = "damsel_die_l"
        
#            status = dead
#            dead = true
#            if (hp > 0):
        
#                hp = 0
#                global.damsel"killed_total += 1"
        
#            my_grav = 0
#            x_vel = 0
#            y_vel = 0.2
    

#        if (gml.collision_rectangle(position.x-3, position.y-3, position.x+3,  position.y+3, "spear"left", 0, 0) and:"
#            (status != thrown or Collision.i"collision_bottom(1)))"
    
#            obj = instance_nearest(position.x, position.y, spear"left)"
#            if (obj.image_index >= 19 and obj.image_index < 28):
        
#                if (held):
            
#                    held = false
#                    with player1  hold_item = 0 pickup_item_type = "" 
            
#                hp -= 2
#                status = thrown
#                counter = stun_max
#                y_vel = -6
#                if (obj.position.x < position.x): x_vel = 4
#                else: x_vel = -4
#                image_speed = 0.5
#                Audio.play_sound(global.snd_hit)
#                gml.instance_create(other.position.x+8, other.position.y+8, Objects.blood)
        
    


#    if (not held and y_vel > 2 and status != thrown):

#        status = thrown
#        SS_SetSoundPan(global.snd_damsel, 0)
#        Audio.play_sound(global.snd_damsel)


#    if (held):

#        facing = character.facing

#    elif (status == slave):

#        if (player1.position.x < position.x): facing = left
#        else: facing = right
#        if (global.i"damsel):"
    
#            sprite_index = "stand_left"
    
#        else:
    
#            sprite_index = "damsel_left"
    

#    elif (status == kiss):

#        if ((sprite_index == "damsel_kiss_l or:"
#             sprite_index == "p_kiss_l) and image_index == 7)"
    
#            if (facing == left): gml.instance_create(position.x-8, position.y-8, Objects.heart)
#            else: gml.instance_create(position.x+8, position.y-8, Objects.heart)
#            Audio.play_sound(global.snd_kiss)
    

#    elif (status == idle):

#        if (global.i"damsel):"
    
#            sprite_index = "stand_left"
    
#        else:
    
#            sprite_index = "damsel_left"
    
#        if (counter > 0): counter -= 1
#        else:
    
#            status = yell
#            if (global.i"damsel):"
        
#                sprite_index = "yell_left"
        
#            else:
        
#                sprite_index = "damsel_yell_l"
        
#            if (player1.position.x < position.x): SS_SetSoundPan(global.snd_damsel, -10000)
#            elif (player1.position.x > position.x): SS_SetSoundPan(global.snd_damsel, 10000)
#            else: SS_SetSoundPan(global.snd_damsel, 0)
#            Audio.play_sound(global.snd_damsel)
    

#    elif (status == yell):

#        if (image_index == 4):
    
#            gml.instance_create(position.x, position.y-16, Objects.yell_help)
    

#    elif (status == run):

#        image_speed = 0.8
#        if (global.i"damsel):"
    
#            sprite_index = "run_left"
    
#        else:
    
#            sprite_index = "damsel_run_l"
    
#        if (facing == left and Collision.i"collision_left(2)): facing = right"
#        if (facing == right and Collision.i"collision_right(2)): facing = left"
    
#        if (facing == left):
    
#            x_vel = -1.5
    
#        else:
    
#            x_vel = 1.5
    

#    elif (status == thrown):

#        # dy:  Collision.set_collision_bounds(-4, -2, 4, 2)

#        if (!startled):
    
#            global.damsel"grabbed += 1"
#            startled = true
    
    
#        if (global.i"damsel):"
    
#            if (x_vel == 0): sprite_index = "stun_l"
#            elif (bounced):
        
#                if (y_vel < 0): sprite_index = "die_l_bounce"
#                else: sprite_index = "die_l_fall"
        
#            else:
        
#                if (x_vel < 0): sprite_index = "die_ll"
#                else: sprite_index = "die_lr"
        
    
#        else:
    
#            if (x_vel == 0): sprite_index = "damsel_stun_l"
#            elif (bounced):
        
#                if (y_vel < 0): sprite_index = "damsel_bounce_l"
#                else: sprite_index = "damsel_fall_l"
        
#            else:
        
#                if (x_vel < 0): sprite_index = "damsel_die_ll"
#                else: sprite_index = "damsel_die_lr"
        
    
    
#        if (Collision.i"collision_bottom(1) and not bounced):"
    
#            bounced = true
    
    
#        if (Collision.i"collision_bottom(2) or gml.collision_rectangle(position.x-4, position.y-6, position.x+4,  position.y+8, "web", 0, 0)):"
    
#            if (!dead):
        
#                if (counter > 0): counter -= 1
#                else: status = run
        
        
#            if (hp <= 0):
        
#                if (global.i"damsel):"
            
#                    sprite_index = "die_l"
            
#                else:
            
#                    sprite_index = "damsel_die_l"
            
#                status = dead
#                if (!dead):
            
#                    dead = true
#                    global.damsel"killed_total += 1"
#                    global.damsel"killed += 1"
#                    global.kills += 1
            
        
    


#    # dy:  sacrifice
#    if (status == thrown or status == dead):

#        if (not held and x_vel == 0 and y_vel == 0):
    
#            if (gml.collision_point(position.x, position.y+8, "sac_altar_left", 0, 0)):
        
#                if (sac_count > 0): sac_count -= 1
#                else:
            
#                gml.instance_create(position.x, position.y, Objects.flame)
#                Audio.play_sound(global.snd_small_explode)
#                MiscScripts.scr_create_blood(position.x, position.y, 3)
#                global.message = "kali accepts your sacrifice!"
#                if (global.favor <= -8):
            
#                    global.message = "kali devours your sacrifice!"
            
#                elif (global.favor < 0):
            
#                    if (status == 98): global.favor += favor*1.5
#                    else: global.favor += favor
#                    if (favor > 0): favor = 0
            
#                else:
            
#                    if (status == 98): global.favor += favor*1.5
#                    else: global.favor += favor
            
#                scr_get_favor_msg()
#                global.message_timer = 200
#                global.shake = 10
#                gml.instance_destroy()
            
        
    
#        else: sac_count = 20
