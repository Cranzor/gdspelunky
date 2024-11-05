
extends DrawnSprite


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func collision with o_character():
    #    # dy:  jumped on - caveman, man_trap replaces this script with its own
#    if (abs(other.position.x-(position.x+8)) > 12):

#        # dy:  do nothing

#    elif (not other.dead and (other.state == 15 or other.state == 16) and other.position.y < position.y+8 and not other.swimming):

#        other.y_vel = -6 - 0.2 * other.y_vel
#        if (global.ha"spike_shoes):  hp -= (3 * (floor(other.fall_timer/16)+1)) MiscScripts.scr_create_blood(other.position.x, other.position.y+8, 1) "
#        else: hp -= (1 * (floor(other.fall_timer/16)+1))
#        other.fall_timer = 0
#        Audio.play_sound(global.snd_hit)

#    elif (other.invincible == 0):

#        other.blink = 30
#        other.invincible = 30
#        if (other.position.x < position.x):
#            other.x_vel = -6
#        else:
#            other.x_vel = 6
    
#        if (global.plife > 0):
    
#            global.plife -= 1
        
#            if (global.plife <= 0 and InLevel.i"real_level()):"
        
#                if (type == "bat"): global.enemy_deaths[0] += 1
#                elif (type == "snake"): global.enemy_deaths[1] += 1
#                elif (type == "spider"): global.enemy_deaths[2] += 1
#                elif (type == "giant spider"): global.enemy_deaths[3] += 1
#                elif (type == "caveman"): global.enemy_deaths[4] += 1
#                elif (type == "skeleton"): global.enemy_deaths[5] += 1
#                elif (type == "zombie"): global.enemy_deaths[6] += 1
#                elif (type == "vampire"): global.enemy_deaths[7] += 1
#                elif (type == "frog"): global.enemy_deaths[8] += 1
#                elif (type == "fire frog"): global.enemy_deaths[9] += 1
#                elif (type == "mantrap"): global.enemy_deaths[10] += 1
#                elif (type == "piranha"): global.enemy_deaths[11] += 1
#                elif (type == "megamouth"): global.enemy_deaths[12] += 1
#                elif (type == "yeti"): global.enemy_deaths[13] += 1
#                elif (type == "yeti king"): global.enemy_deaths[14] += 1
#                elif (type == "alien"): global.enemy_deaths[15] += 1
#                elif (type == "ufo"): global.enemy_deaths[16] += 1
#                elif (type == "alien boss"): global.enemy_deaths[17] += 1
#                elif (type == "hawkman"): global.enemy_deaths[18] += 1
#                elif (type == "shopkeeper"): global.enemy_deaths[19] += 1
#                elif (type == "tomb lord"): global.enemy_deaths[20] += 1
#                elif (type == "magma man"): global.enemy_deaths[21] += 1
#                elif (type == "olmec"): global.enemy_deaths[22] += 1
        
    
       
#        if (type == "bat" || type == "piranha" || type == "vampire"): MiscScripts.scr_create_blood(position.x+4, position.y+4, 1)
    
#        Audio.play_sound(global.snd_hurt)



    

#func collision with o_whip():
    #    hp -= other.damage
#    count"as_kill = true"
#    if (blood_left > 0):

#        MiscScripts.scr_create_blood(position.x+sprite_width/2, position.y+sprite_height/2, 1)
#        if (hp < 0): blood_left -= 1

#    Audio.play_sound(global.snd_hit)


    

#func collision with o_whip_pre():
    #    hp -= other.damage
#    count"as_kill = true"
#    if (blood_left > 0):

#        MiscScripts.scr_create_blood(position.x+sprite_width/2, position.y+sprite_height/2, 1)
#        if (hp < 0): blood_left -= 1

#    Audio.play_sound(global.snd_hit)


    

#func create():
    #    # action_inherited
#    super()

#    # main_code
#    hp = 1
#    type = "none"

#    active = true

#    # dy:  is this used?
#    shaking = 0
#    shake_counter = 0

#    bloodless = false
#    blood_left = 4
#    flying = false
#    heavy = true
#    my_grav = 0.6
#    my_grav_norm = 0.6
#    my_grav_water = 0.2
#    y_vel_limit = 10
#    bounce_factor = 0.5
#    friction_factor = 0.3

#    # dy:  added so enemies can be carried with same code as items
#    held = false
#    armed = false
#    trigger = false
#    safe = false
#    sticky = false
#    can_pick_up = true
#    cost = 0
#    for_sale = false
#    favor = 1
#    sac_count = 20

#    count"as_kill = true # dy:  sometimes it's not the player's fault!"
#    burning = 0
#    swimming = false
#    stun_time = 200
#    left = 0
#    right = 1
#    facing = 0

#    stunned = 98
#    dead = 99
#    bomb_id = 0

    

#func destroy():
    #    if (bomb_id):

#        bomb_id.enemy_id = 0


#    if (held):

#        player1.hold_item = 0
#        player1.pickup_item = ""


    

#func draw():
    #    if (facing == right): draw_sprite_ext(sprite_index, image_index, position.x+16, position.y, -1, image_yscale, image_angle, image_blend, image_alpha)
#    else: draw_sprite_ext(sprite_index, image_index, position.x, position.y, 1, image_yscale, image_angle, image_blend, image_alpha)

    

#func outside room():
    #    gml.instance_destroy()

    

#func step():
    #    /*
#    if ((position.x > view_xview[0]-8 and position.x < view_xview[0]+view_wview[0]+8 and:
#         position.y > view_yview[0]-8 and position.y < view_yview[0]+view_hview[0]+8))

#    */

#    if ((position.x > view_xview[0]-20 and position.x < view_xview[0]+view_wview[0]+4 and:
#         position.y > view_yview[0]-20 and position.y < view_yview[0]+view_hview[0]+4))


#    active = true

#    if (held):

#        x_vel = 0
#        y_vel = 0
#        my_grav = 0
    
#        if (player1.facing == 18):  position.x = player1.position.x-12  facing = 0 
#        if (player1.facing == 19):  position.x = player1.position.x-4  facing = 1 
        
#        if (player1.state == 12 and abs(player1.x_vel) < 2): position.y = player1.position.y-10
#        else: position.y = player1.position.y-12
    
#        depth = 1
    
#        if (player1.hold_item == 0 or status < 98):
    
#            held = false
    

#    else: depth = 60

#    if (gml.collision_point(position.x+floor(sprite_width/2), position.y+floor(sprite_height/2), "water_swim", -1, -1)):

#        if (not swimming):
    
#            gml.instance_create(position.x+floor(sprite_width/2), position.y, Objects.splash)
#            swimming = true
#            Audio.play_sound(global.snd_splash)
    
#        my_grav = my_grav_water
    
#        if (type == "fire frog"):
    
#            obj = gml.instance_create(position.x, position.y, Objects.frog)
#            obj.status = status
#            gml.instance_destroy()
    

#    else:

#        swimming = false
#        my_grav = my_grav_norm


#    if (burning > 0):

#        if (randi_range(1,5) == 1): gml.instance_create(position.x+randi_range(0,sprite_width), position.y+randi_range(0,sprite_height), Objects.burn)
#        burning -= 1


#    if (gml.collision_point(position.x+floor(sprite_width/2), position.y-1, "lava", 0, 0)): gml.instance_destroy()

#    if (gml.collision_point(position.x+floor(sprite_width/2), position.y+sprite_height-2, "lava", 0, 0)):

#        hp = 0
#        count"as_kill = false"
#        burning = 1
#        my_grav = 0
#        x_vel = 0
#        y_vel = 0.1
#        depth = 999


#    if (gml.collision_rectangle(position.x+2, position.y+2, position.x+14,  position.y+14, "spear"left", 0, 0)):"

#        trap = instance_nearest(position.x, position.y, spear"left)"
#        if (trap.image_index >= 20 and trap.image_index < 24):
    
#            if (type == "caveman" or type == "man_trap" or type == "yeti" or type == "hawkman" or type == "shopkeeper"):
        
#                # dy:  if (status < 98):
#                if (hp > 0):
            
#                    hp -= 2
#                    count"as_kill = false"
#                    status = 98
#                    counter = stun_time
#                    y_vel = -6
#                    if (trap.position.x+8 < position.x+8): x_vel = 4
#                    else: x_vel = -4
#                    image_speed = 0.5
#                    Audio.play_sound(global.snd_hit)
#                    MiscScripts.scr_create_blood(position.x+sprite_width/2, position.y+sprite_height/2, 2)
            
        
#            else:
        
#                hp -= 2
#                count"as_kill = false"
#                Audio.play_sound(global.snd_hit)
#                MiscScripts.scr_create_blood(position.x+sprite_width/2, position.y+sprite_height/2, 1)
        
    


#    if (gml.collision_point(position.x+8, position.y+16, "spikes", 0, 0) and y_vel > 2):

#        spikes = gml.instance_place(position.x+8, position.y+14, spikes)
    
#        if (not bloodless):
    
#            with spikes  sprite_index = "spikes_blood "
    
    
#        if (hp > 0):
    
#            hp = 0
#            count"as_kill = false"
#            if (not bloodless): MiscScripts.scr_create_blood(position.x+sprite_width/2, position.y+sprite_height/2, 3)
#            if (type == "caveman" or type == "man_trap" or type == "yeti" or type == "hawkman" or type == "shopkeeper"):
#                status = 99
    
#        my_grav = 0
#        x_vel = 0
#        y_vel = 0.2


#    # dy:  sacrifice
#    if (status >= 98):

#        if (not held and x_vel == 0 and y_vel == 0):
    
#            if (gml.collision_point(position.x+8, position.y+16, "sac_altar_left", 0, 0)):
        
#                if (sac_count > 0): sac_count -= 1
#                else:
            
#                gml.instance_create(position.x+8, position.y+8, Objects.flame)
#                Audio.play_sound(global.snd_small_explode)
#                MiscScripts.scr_create_blood(position.x+8, position.y+8, 3)
#                global.message = "kali accepts the sacrifice!"
#                if (global.favor <= -8):
            
#                    global.message = "kali devours the sacrifice!"
            
#                elif (global.favor < 0):
            
#                    if (status == 98): global.favor += favor
#                    else: global.favor += favor/2
#                    if (favor > 0): favor = 0
            
#                else:
            
#                    if (status == 98): global.favor += favor
#                    else: global.favor += favor/2
            
#                scr_get_favor_msg()
#                global.message_timer = 200
#                global.shake = 10
#                gml.instance_destroy()
            
        
    
#        else: sac_count = 20


#    # dy:  moving projectile
#    if (status == 98):

#        if ((abs(x_vel) > 2 or abs(y_vel) > 2)):
    
#            obj = gml.collision_rectangle(position.x, position.y, position.x+16,  position.y+16, "enemy", false, true)
#            if (obj):
        
#                if (not obj.invincible and obj.type != "magma man"):
            
#                    if (obj.status < 98): obj.x_vel = x_vel
#                    with obj
                
#                        if (type == "caveman" or type == "man_trap" or type == "vampire" or type == "yeti" or type == "hawkman"):
                    
#                            if (status < stunned):
                        
#                                if (type == "caveman" or type == "vampire" or type == "yeti" or type == "hawkman"):
                            
#                                    MiscScripts.scr_create_blood(position.x+8, position.y+8, 1)
                            
#                                elif (type == "man_trap"):
                            
#                                    gml.instance_create(position.x+randi_range(0,16), position.y-8+randi_range(0,16), Objects.leaf)
                            
#                                hp -= 1
#                                status = stunned
#                                counter = stun_time
#                                y_vel = -6
#                                Audio.play_sound(global.snd_hit)
                        
                    
#                        elif (type == "shopkeeper"):
                    
#                            if (status < 98):
                        
#                                MiscScripts.scr_create_blood(position.x, position.y, 1)
#                                hp -= 1
#                                y_vel = -6
#                                status = 2
#                                Audio.play_sound(global.snd_hit)
                        
                    
#                        elif (type == "giant spider"):
                    
#                            if (whipped == 0):
                        
#                                MiscScripts.scr_create_blood(position.x+16, position.y+24, 1)
#                                hp -= 1
#                                whipped = 10
#                                Audio.play_sound(global.snd_hit)
                        
                    
#                        elif (type == "tomb lord"):
                    
#                            if (whipped == 0):
                        
#                                MiscScripts.scr_create_blood(position.x+16, position.y+16, 1)
#                                hp -= 1
#                                whipped = 20
#                                Audio.play_sound(global.snd_hit)
                        
                    
#                        elif (type == "alien boss"):
                    
#                            if (status != 99 and sprite_index != "alien_boss_hurt):"
                        
#                                MiscScripts.scr_create_blood(position.x+8, position.y+8, 1)
#                                hp -= 1
#                                sprite_index = "alien_boss_hurt"
#                                image_speed = 0.8
#                                Audio.play_sound(global.snd_hit)
                        
                    
#                        elif (type == "ufo"):
                    
#                            gml.instance_create(position.x+8, position.y+8, Objects.explosion)
#                            Audio.play_sound(global.snd_explosion)
#                            if (randi_range(1,3) == 1): gml.instance_create(position.x+8, position.y+8, Objects.alien_eject)
#                            global.ufos += 1
#                            global.kills += 1
#                            gml.instance_destroy()
                    
#                        else:
                    
#                            MiscScripts.scr_create_blood(position.x+8, position.y+8, 1)
#                            hp -= 1
#                            origX = position.x
#                            origY = position.y
#                            Audio.play_sound(global.snd_hit)
                    
                    
                
#                    # dy:  obj.x_vel = x_vel * 0.3
                
#                    if (type == "arrow" or type == "fish bone"): gml.instance_destroy()
            
        
    


#    else: active = false
