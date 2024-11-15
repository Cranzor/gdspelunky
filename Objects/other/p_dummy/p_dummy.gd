
extends DrawnSprite


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func alarm 0():
    #    alarm_1(100)

    

#func alarm 1():
    #    big_chest.sprite_index = "big_chest_open"
#    treasure = gml.instance_create(big_chest.position.x, big_chest.position.y, Objects.big_treasure)
#    treasure.y_vel = -4
#    treasure.x_vel = -3
#    Audio.play_sound(global.snd_click)
#    alarm_2(20)

    

#func alarm 2():
    #    status = LAVA

    

#func alarm 3():
    #    gml.instance_create(end_plat.position.x, end_plat.position.y+30, Objects.lava_spray)
#    global.shake = 9999
#    alarm_4(10)

    

#func alarm 4():
    #    if (lava_spray): lava_spray.y_acc = -0.1

    

#func alarm 5():
    #    status = TRANSITION
#    if (global.is_damsel): sprite_index = "damsel_run_l"
#    elif (global.is_tunnel_man): sprite_index = "tunnel_run_l"
#    else: sprite_index = "run_left"

    

#func animation_end():
    #    if (sprite_index == "p_exit" or sprite_index == "damsel_exit" or sprite_index == "tunnel_exit):"

#        gml.instance_destroy(self)

#    /*
#    if (false and sprite_index == "p_exit):"

#        global.game_start = true
#        if (global.level_type == 2): get_tree().change_scene_to_file("res://r_level2.tscn")
#        elif (global.curr_level == 2): get_tree().change_scene_to_file("res://r_olmec.tscn")
#        else: get_tree().change_scene_to_file("res://r_level.tscn")

#    */

    

#func create():
    #    # action_inherited
#    super()

#    # main_code
#    # DY:  dummy actor for transitions and ending

#    TRANSITION = 0
#    START = 1
#    END = 2
#    LAVA = 3
#    STOPPED = 99
#    status = 0

#    y_vel = 0

#    if (global.is_damsel): sprite_index = "damsel_run_l"
#    elif (global.is_tunnel_man): sprite_index = "tunnel_run_l"
#    else: sprite_index = "run_left"

#    LEFT = 0
#    RIGHT = 1
#    facing = RIGHT

    

#func draw():
    #    if (facing == RIGHT): image_xscale = -1
#    else: image_xscale = 1

#    if ((sprite_index == "p_exit" or sprite_index == "damsel_exit" or sprite_index == "tunnel_exit)" and global.has_jetpack):

#        draw_sprite_ext(sprite_index, -1, position.x, position.y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
#        draw_sprite(s_jetpack_back,-1,position.x,position.y)

#    elif (sprite_index == "p_exit" or sprite_index == "damsel_exit" or sprite_index == "tunnel_exit):"

#        draw_sprite_ext(sprite_index, -1, position.x, position.y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)

#    elif (global.has_jetpack):

#        draw_sprite(s_jetpack_right,-1,position.x-4,position.y-1)


#    if (sprite_index != "p_exit" and sprite_index != "damsel_exit" and sprite_index != "tunnel_exit):"

#        draw_sprite_ext(sprite_index, -1, position.x, position.y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
#        if (global.pickup_item == "Rock"): hold_item = draw_sprite(s_rock,-1,position.x+4,position.y+2)
#        elif (global.pickup_item == "Jar"): hold_item = draw_sprite(s_jar,-1,position.x+4,position.y+2)
#        elif (global.pickup_item == "Skull"): hold_item = draw_sprite(s_skull,-1,position.x+4,position.y+2)
#        elif (global.pickup_item == "Fish Bone"): hold_item = draw_sprite(s_fish_bone,-1,position.x+4,position.y+2)
#        elif (global.pickup_item == "Arrow"): hold_item = draw_sprite(s_arrow_right,-1,position.x+4,position.y+2)
#        elif (global.pickup_item == "Rock"): hold_item = draw_sprite(s_rock,-1,position.x+4,position.y+2)
#        elif (global.pickup_item == "Machete"): hold_item = draw_sprite(s_machete_right,-1,position.x+4,position.y+2)
#        elif (global.pickup_item == "Mattock"): hold_item = draw_sprite(s_mattock_right,-1,position.x+4,position.y+2)
#        elif (global.pickup_item == "Mattock Head"): hold_item = draw_sprite(s_mattock_head,-1,position.x+4,position.y+2)
#        elif (global.pickup_item == "Pistol"): hold_item = draw_sprite(s_pistol_right,-1,position.x+4,position.y+2)
#        elif (global.pickup_item == "Web Cannon"): hold_item = draw_sprite(s_web_cannon_r,-1,position.x+4,position.y+2)
#        elif (global.pickup_item == "Teleporter"): hold_item = draw_sprite(s_teleporter,-1,position.x+4,position.y+2)
#        elif (global.pickup_item == "Shotgun"): hold_item = draw_sprite(s_shotgun_right,-1,position.x+4,position.y+2)
#        elif (global.pickup_item == "Bow"): hold_item = draw_sprite(s_bow_right,-1,position.x+4,position.y+2)
#        elif (global.pickup_item == "Flare"): hold_item = draw_sprite(s_flare,-1,position.x+4,position.y+2)
#        elif (global.pickup_item == "Sceptre"): hold_item = draw_sprite(s_sceptre_right,-1,position.x+4,position.y+2)
#        elif (global.pickup_item == "Key"): hold_item = draw_sprite(s_key_right,-1,position.x+4,position.y+2)


    

#func step():
    #    position.y += y_vel

#    if (status != STOPPED and gml.collision_point(position.x+8, position.y, "damsel_kiss", 0, 0)):

#        person = instance_nearest(position.x+8, position.y, damsel_kiss)
#        if (not person.kissed):
    
#            status = STOPPED
#            x_vel = 0
#            y_vel = 0
#            if (global.is_damsel): sprite_index = "damsel_left"
#            elif (global.is_tunnel_man): sprite_index = "tunnel_left"
#            else: sprite_index = "stand_left"
    
#            with person
        
#                if (global.is_damsel): sprite_index = "p_kiss_l"
#                else: sprite_index = "damsel_kiss_l"
        
#            alarm_5(30)
    


#    if (gml.instance_exists("tunnel_man")):

#        person = instance_nearest(position.x+8, position.y, tunnel_man)
#        if (status != STOPPED and gml.collision_point(position.x+8, position.y, "tunnel_man", 0, 0) and person.talk == 0):
    
#            status = STOPPED
#            x_vel = 0
#            y_vel = 0
#            if (global.is_damsel): sprite_index = "damsel_left"
#            elif (global.is_tunnel_man): sprite_index = "tunnel_left"
#            else: sprite_index = "stand_left"
    
#            with person
        
#                talk = 1
        
    


#    if (status == TRANSITION):

#        if (position.x >= 280):
    
#            if (sprite_index != "p_exit" and sprite_index != "damsel_exit" and sprite_index != "tunnel_exit):"
        
#                Audio.play_sound(global.snd_steps)
#                if (global.is_damsel): sprite_index = "damsel_exit"
#                elif (global.is_tunnel_man): sprite_index = "tunnel_exit"
#                else: sprite_index = "p_exit"
        
    
#        else: position.x += 2

#    elif (status == END and sprite_index != "stand_left" and sprite_index != "damsel_left" and sprite_index != "tunnel_left):"

#        if (position.x >= 448 + 8):
    
#            # DY:  stop
#            if (global.is_damsel): sprite_index = "damsel_left"
#            elif (global.is_tunnel_man): sprite_index = "tunnel_left"
#            else: sprite_index = "stand_left"
#            alarm_0(20)
    
#        else: position.x += 2

#    elif (status == LAVA):

#        alarm_3(50)
#        status += 1

#    elif (status == LAVA+1):

#        gml.instance_create(end_plat.position.x+randi_range(0,80), 192+32, Objects.burn)
