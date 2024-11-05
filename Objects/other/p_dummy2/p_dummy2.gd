
extends DrawnSprite


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func alarm 0():
    #    gml.instance_create(160, -32, Objects.big_treasure)
#    Audio.play_sound(global.snd_t_fall)

    

#func alarm 1():
    #    if (global.i"damsel): sprite_index = s_damsel_left"
#    elif (global.i"tunnel_man): sprite_index = s_tunnel_left"
#    else: sprite_index = "stand_left"

    

#func alarm 2():
    #    with end3

#        draw_status = 1
#        alarm_1(50)
#        play_music(global.mu"victory, false)"


    

#func create():
    #    # action_inherited
#    super()

#    # main_code
#    # dy:  dummy actor for ending (falling from volcano)

#    drop = 0
#    stunned = 1
#    getup = 2
#    jumping = 3
#    status = 0

#    x_vel = 0
#    y_vel = 0
#    my_grav = 0.6

#    left = 0
#    right = 1
#    facing = left

#    if (global.i"damsel): sprite_index = s_damsel_run_l"
#    elif (global.i"tunnel_man): sprite_index = s_tunnel_run_l"



    

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
    #    position.x += x_vel
#    position.y += y_vel

#    if (status == drop):

#        if (global.i"damsel): sprite_index = s_damsel_fall_l"
#        elif (global.i"tunnel_man): sprite_index = s_tunnel_fall_l"
#        else: sprite_index = "die_l_fall"
#        y_vel = 6
#        if (gml.collision_point(position.x, position.y+9, "desert2", 0, 0)):
    
#            y_vel = 0
#            status += 1
#            if (global.i"damsel): sprite_index = s_damsel_stun_l"
#            elif (global.i"tunnel_man): sprite_index = s_tunnel_stun_l"
#            else: sprite_index = "stun_l"
#            poof = gml.instance_create(position.x-4, position.y+6, Objects.poof)
#            with poof  x_vel = -0.4 
#            poof = gml.instance_create(position.x+4, position.y+6, Objects.poof)
#            with poof  x_vel = 0.4 
#            Audio.play_sound(global.snd_thud)
    

#    elif (status == stunned):

#        alarm_0(70)
#        alarm_1(50)
#        status = getup

#    elif (status == getup):

#        treasure = instance_nearest(position.x, position.y, big_treasure)
#        if (treasure):
    
#            if (treasure.y_vel == 0):
        
#                y_vel = -4
#                status = jumping
        
    

#    elif (status == jumping):

#        if (global.i"damsel): sprite_index = s_damsel_die_lr"
#        elif (global.i"tunnel_man): sprite_index = s_tunnel_die_lr"
#        else: sprite_index = "jump_left"
#        if (y_vel < 4): y_vel += 0.6
#        if (gml.collision_point(position.x, position.y+6, "desert2", 0, 0)):
    
#            y_vel = 0
#            status += 1
#            alarm_2(50)
#            if (global.i"damsel): sprite_index = s_damsel_left"
#            elif (global.i"tunnel_man): sprite_index = s_tunnel_left"
#            else: sprite_index = "stand_left"
#            facing = right
#            with menu
        
#                visible = true
        
    
   

#    if (gml.collision_point(position.x, position.y+6, "desert2", 0, 0)):

#        position.y -= 2

#    if (gml.collision_point(position.x, position.y+7, "desert2", 0, 0)):

#        position.y -= 1
