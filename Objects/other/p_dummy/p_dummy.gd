
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
    #    status = lava

    

#func alarm 3():
    #    gml.instance_create(end_plat.position.x, end_plat.position.y+30, Objects.lava_spray)
#    global.shake = 9999
#    alarm_4(10)

    

#func alarm 4():
    #    if (lava_spray): lava_spray.y_acc = -0.1

    

#func alarm 5():
    #    status = transition
#    if (global.i"damsel): sprite_index = s_damsel_run_l"
#    elif (global.i"tunnel_man): sprite_index = s_tunnel_run_l"
#    else: sprite_index = "run_left"

    

#func animation_end():
    #    if (sprite_index == "p_exit or sprite_index == s_damsel_exit or sprite_index == s_tunnel_exit):"

#        gml.instance_destroy()

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
#    # dy:  dummy actor for transitions and ending

#    transition = 0
#    start = 1
#    end = 2
#    lava = 3
#    stopped = 99
#    status = 0

#    y_vel = 0

#    if (global.i"damsel): sprite_index = s_damsel_run_l"
#    elif (global.i"tunnel_man): sprite_index = s_tunnel_run_l"
#    else: sprite_index = "run_left"

#    left = 0
#    right = 1
#    facing = right

    

#func draw():
    #    if (facing == right): image_xscale = -1
#    else: image_xscale = 1

#    if ((sprite_index == "p_exit or sprite_index == s_damsel_exit or sprite_index == s_tunnel_exit) and global.has_jetpack):"

#        draw_sprite_ext(sprite_index, -1, position.x, position.y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
#        draw_sprite("jetpack_back,-1,position.x,position.y)"

#    elif (sprite_index == "p_exit or sprite_index == s_damsel_exit or sprite_index == s_tunnel_exit):"

#        draw_sprite_ext(sprite_index, -1, position.x, position.y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)

#    elif (global.ha"jetpack):"

#        draw_sprite("jetpack_right,-1,position.x-4,position.y-1)"


#    if (sprite_index != "p_exit and sprite_index != s_damsel_exit and sprite_index != s_tunnel_exit):"

#        draw_sprite_ext(sprite_index, -1, position.x, position.y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
#        if (global.pickup_item == "rock"): hold_item = draw_sprite("rock,-1,position.x+4,position.y+2)"
#        elif (global.pickup_item == "jar"): hold_item = draw_sprite("jar,-1,position.x+4,position.y+2)"
#        elif (global.pickup_item == "skull"): hold_item = draw_sprite("skull,-1,position.x+4,position.y+2)"
#        elif (global.pickup_item == "fish bone"): hold_item = draw_sprite("fish_bone,-1,position.x+4,position.y+2)"
#        elif (global.pickup_item == "arrow"): hold_item = draw_sprite("arrow_right,-1,position.x+4,position.y+2)"
#        elif (global.pickup_item == "rock"): hold_item = draw_sprite("rock,-1,position.x+4,position.y+2)"
#        elif (global.pickup_item == "machete"): hold_item = draw_sprite("machete_right,-1,position.x+4,position.y+2)"
#        elif (global.pickup_item == "mattock"): hold_item = draw_sprite("mattock_right,-1,position.x+4,position.y+2)"
#        elif (global.pickup_item == "mattock head"): hold_item = draw_sprite("mattock_head,-1,position.x+4,position.y+2)"
#        elif (global.pickup_item == "pistol"): hold_item = draw_sprite("pistol_right,-1,position.x+4,position.y+2)"
#        elif (global.pickup_item == "web cannon"): hold_item = draw_sprite("web_cannon_r,-1,position.x+4,position.y+2)"
#        elif (global.pickup_item == "teleporter"): hold_item = draw_sprite("teleporter,-1,position.x+4,position.y+2)"
#        elif (global.pickup_item == "shotgun"): hold_item = draw_sprite("shotgun_right,-1,position.x+4,position.y+2)"
#        elif (global.pickup_item == "bow"): hold_item = draw_sprite("bow_right,-1,position.x+4,position.y+2)"
#        elif (global.pickup_item == "flare"): hold_item = draw_sprite("flare,-1,position.x+4,position.y+2)"
#        elif (global.pickup_item == "sceptre"): hold_item = draw_sprite("sceptre_right,-1,position.x+4,position.y+2)"
#        elif (global.pickup_item == "key"): hold_item = draw_sprite("key_right,-1,position.x+4,position.y+2)"


    

#func step():
    #    position.y += y_vel

#    if (status != stopped and gml.collision_point(position.x+8, position.y, "damsel_kiss", 0, 0)):

#        person = instance_nearest(position.x+8, position.y, damsel_kiss)
#        if (not person.kissed):
    
#            status = stopped
#            x_vel = 0
#            y_vel = 0
#            if (global.i"damsel): sprite_index = s_damsel_left"
#            elif (global.i"tunnel_man): sprite_index = s_tunnel_left"
#            else: sprite_index = "stand_left"
    
#            with person
        
#                if (global.i"damsel): sprite_index = s_p_kiss_l"
#                else: sprite_index = "damsel_kiss_l"
        
#            alarm_5(30)
    


#    if (gml.instance_exists("tunnel_man")):

#        person = instance_nearest(position.x+8, position.y, tunnel_man)
#        if (status != stopped and gml.collision_point(position.x+8, position.y, "tunnel_man", 0, 0) and person.talk == 0):
    
#            status = stopped
#            x_vel = 0
#            y_vel = 0
#            if (global.i"damsel): sprite_index = s_damsel_left"
#            elif (global.i"tunnel_man): sprite_index = s_tunnel_left"
#            else: sprite_index = "stand_left"
    
#            with person
        
#                talk = 1
        
    


#    if (status == transition):

#        if (position.x >= 280):
    
#            if (sprite_index != "p_exit and sprite_index != s_damsel_exit and sprite_index != s_tunnel_exit):"
        
#                Audio.play_sound(global.snd_steps)
#                if (global.i"damsel): sprite_index = s_damsel_exit"
#                elif (global.i"tunnel_man): sprite_index = s_tunnel_exit"
#                else: sprite_index = "p_exit"
        
    
#        else: position.x += 2

#    elif (status == end and sprite_index != "stand_left and sprite_index != s_damsel_left and sprite_index != s_tunnel_left):"

#        if (position.x >= 448 + 8):
    
#            # dy:  stop
#            if (global.i"damsel): sprite_index = s_damsel_left"
#            elif (global.i"tunnel_man): sprite_index = s_tunnel_left"
#            else: sprite_index = "stand_left"
#            alarm_0(20)
    
#        else: position.x += 2

#    elif (status == lava):

#        alarm_3(50)
#        status += 1

#    elif (status == lava+1):

#        gml.instance_create(end_plat.position.x+randi_range(0,80), 192+32, Objects.burn)
