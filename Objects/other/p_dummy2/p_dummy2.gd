
extends DrawnSprite


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func alarm 0():
    #    gml.instance_create(160, -32, "big_treasure")
#    Audio.play_sound(global.snd_t_fall)

    

#func alarm 1():
    #    if (global.is_damsel): sprite_index = s_damsel_left
#    elif (global.is_tunnel_man): sprite_index = s_tunnel_left
#    else: sprite_index = s_stand_left

    

#func alarm 2():
    #    with end3

#        draw_status = 1
#        alarm_1(50)
#        play_music(global.mus_victory, false)


    

#func create():
    #    # action_inherited
#    super()

#    # main_code
#    # DY:  dummy actor for ending (falling from volcano)

#    DROP = 0
#    STUNNED = 1
#    GETUP = 2
#    JUMPING = 3
#    status = 0

#    x_vel = 0
#    y_vel = 0
#    my_grav = 0.6

#    LEFT = 0
#    RIGHT = 1
#    facing = LEFT

#    if (global.is_damsel): sprite_index = s_damsel_run_l
#    elif (global.is_tunnel_man): sprite_index = s_tunnel_run_l



    

#func draw():
    #    if (facing == RIGHT): image_xscale = -1
#    else: image_xscale = 1

#    if ((sprite_index == s_p_exit or sprite_index == s_damsel_exit or sprite_index == s_tunnel_exit) and global.has_jetpack):

#        draw_sprite_ext(sprite_index, -1, position.x, position.y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
#        draw_sprite(s_jetpack_back,-1,position.x,position.y)

#    elif (sprite_index == s_p_exit or sprite_index == s_damsel_exit or sprite_index == s_tunnel_exit):

#        draw_sprite_ext(sprite_index, -1, position.x, position.y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)

#    elif (global.has_jetpack):

#        draw_sprite(s_jetpack_right,-1,position.x-4,position.y-1)


#    if (sprite_index != s_p_exit and sprite_index != s_damsel_exit and sprite_index != s_tunnel_exit):

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
    #    position.x += x_vel
#    position.y += y_vel

#    if (status == DROP):

#        if (global.is_damsel): sprite_index = s_damsel_fall_l
#        elif (global.is_tunnel_man): sprite_index = s_tunnel_fall_l
#        else: sprite_index = s_die_l_fall
#        y_vel = 6
#        if (gml.collision_point(position.x, position.y+9, "desert2", 0, 0)):
    
#            y_vel = 0
#            status += 1
#            if (global.is_damsel): sprite_index = s_damsel_stun_l
#            elif (global.is_tunnel_man): sprite_index = s_tunnel_stun_l
#            else: sprite_index = s_stun_l
#            poof = gml.instance_create(position.x-4, position.y+6, "poof")
#            with poof  x_vel = -0.4 
#            poof = gml.instance_create(position.x+4, position.y+6, "poof")
#            with poof  x_vel = 0.4 
#            Audio.play_sound(global.snd_thud)
    

#    elif (status == STUNNED):

#        alarm_0(70)
#        alarm_1(50)
#        status = GETUP

#    elif (status == GETUP):

#        treasure = instance_nearest(position.x, position.y, big_treasure)
#        if (treasure):
    
#            if (treasure.y_vel == 0):
        
#                y_vel = -4
#                status = JUMPING
        
    

#    elif (status == JUMPING):

#        if (global.is_damsel): sprite_index = s_damsel_die_lr
#        elif (global.is_tunnel_man): sprite_index = s_tunnel_die_lr
#        else: sprite_index = s_jump_left
#        if (y_vel < 4): y_vel += 0.6
#        if (gml.collision_point(position.x, position.y+6, "desert2", 0, 0)):
    
#            y_vel = 0
#            status += 1
#            alarm_2(50)
#            if (global.is_damsel): sprite_index = s_damsel_left
#            elif (global.is_tunnel_man): sprite_index = s_tunnel_left
#            else: sprite_index = s_stand_left
#            facing = RIGHT
#            with menu
        
#                visible = true
        
    
   

#    if (gml.collision_point(position.x, position.y+6, "desert2", 0, 0)):

#        position.y -= 2

#    if (gml.collision_point(position.x, position.y+7, "desert2", 0, 0)):

#        position.y -= 1


    
