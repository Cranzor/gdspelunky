
extends MovingSolid


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func alarm 1():
    #    sprite_index = "olmec_start2"
#    for i in range(0, 6):

#        debris = gml.instance_create(position.x+32+randi_range(0,32), position.y+randi_range(0,32), Objects.olmec_debris)
#        debris.x_vel = randi_range(1,4)
#        debris.y_vel = -randi_range(1,3)

#    Audio.play_sound(global.snd_thump)
#    with hawkman_worship

#        obj = gml.instance_create(position.x, position.y, Objects.hawkman)
#        with obj
    
#            status = 98
#            hp = 1
#            x_vel = -3
#            y_vel = -5
#            counter = 300
    
#        gml.instance_destroy()

#    with caveman_worship

#        image_index = 0
#        image_speed = 0

#    alarm_2(50)

    

#func alarm 2():
    #    sprite_index = "olmec_start3"
#    alarm_3(50)
#    for i in range(0, 6):

#        debris = gml.instance_create(position.x+randi_range(0,32), position.y+randi_range(0,32), Objects.olmec_debris)
#        debris.x_vel = -randi_range(1,4)
#        debris.y_vel = -randi_range(1,3)

#    Audio.play_sound(global.snd_thump)

    

#func alarm 3():
    #    sprite_index = "olmec"
#    for i in range(0, 12):

#        debris = gml.instance_create(position.x+randi_range(0,64), position.y+32+randi_range(0,32), Objects.olmec_debris)
#        debris.x_vel = randi_range(1,4)-randi_range(1,4)
#        debris.y_vel = -randi_range(1,3)

#    Audio.play_sound(global.snd_thump)
#    alarm_4(50)

    

#func alarm 4():
    #    toggle = true
#    status = BOUNCE
#    Audio.play_sound(global.snd_big_jump)
#    Audio.play_sound(global.snd_alert)
#    alarm_6(20)

    

#func alarm 5():
    #    view_hborder[0] = 128
#    view_vborder[0] = 64
#    view_xview[0] = 0
#    view_object[0] = player1
#    player1.active = true
#    status = 0
#    counter = 100
#    play_music(global.mu"boss, true)"
#    # DY: Audio.play_sound(global.snd_boss)

    

#func alarm 6():
    #    with caveman_worship

#        obj = gml.instance_create(position.x, position.y, Objects.caveman)
#        obj.facing = 1
#        obj.status = 2
#        gml.instance_destroy()


    

#func create():
    #    shop_wall = false
#    PlatformEngine.make_active(self)
#    Collision.set_collision_bounds(self, 2, 0, 62, 64)
#    x_vel = 0
#    y_vel = 0
#    y_delta = -0.4
#    my_grav = 0.2
#    invincible = true
#    viscid_top = 1
#    carry_player = false
#    image_speed = 0.4

#    LEFT = 0
#    RIGHT = 1
#    facing = randi_range(0,1)

#    # DY:  status
#    START2 = -2
#    START1 = -1
#    IDLE = 0
#    BOUNCE = 1
#    RECOVER = 2
#    WALK = 3
#    DROWNING = 4
#    PREPARE = 5
#    SLAM = 6
#    CREATE = 7
#    DEAD = 99
#    status = -1

#    counter = 0
#    bounce_counter = 0
#    slammed = false

#    view_hborder[0] = 0
#    view_vborder[0] = 0
#    view_yview[0] = 400
#    view_object[0] = olmec


    

#func step():
    #    # action_inherited
#    super()

#    # main_code
#    if (carry_player or gml.collision_rectangle(position.x-1, position.y, position.x+66,  position.y+62, "player1", 0, 0)):

#        player1.position.x += x_vel
#        player1.position.y += y_vel

#    PlatformEngine.move_to(x_vel,y_vel)

#    if (y_vel < 6):

#        y_vel += my_grav

    
#    if (Collision.i"collision_top(1)):"

#        gml.instance_create(position.x, position.y-16, Objects.olmec_slam)
#        position.y += 1
#        if (y_vel < 0): y_vel = -y_vel * 0.8


#    if (Collision.i"collision_left(1)):"

#        position.x += 1
#        x_vel = 0
#        # DY: if (x_vel < 0): x_vel = -x_vel * 0.8

#    if (Collision.i"collision_right(1)):"

#        position.x -= 1
#        x_vel = 0
#        # DY: if (x_vel > 0): x_vel = -x_vel * 0.8


#    if (gml.collision_point(position.x, position.y+64, "lava", 0, 0)): status = DROWNING

#    if (gml.collision_point(position.x, position.y-2, "lava", 0, 0)):

#        global.enemy_kills[21] += 1
#        final_boss.olmec_dead = true
#        global.kills += 1
#        gml.instance_destroy()


#    dist = gml.distance_to_object(player1) + 32


#    if (gml.collision_rectangle(position.x, position.y-2, position.x+64,  position.y+64, "player1", 0, 0)): carry_player = true
#    else: carry_player = false

#    if (status == START1):

#        if (view_xview[0] < 176): view_xview[0] += 2
#        else:
    
#            alarm_1(100)
#            status = START2
    
    
#        if (Collision.i"collision_bottom(1)):"
#            y_vel = 0

#    elif (status == START2):
   
#        if (Collision.i"collision_bottom(1)):"
#            y_vel = 0

#    elif (status == IDLE):

#        if (counter > 0): counter -= 1
#        if (counter == 0): status = BOUNCE
    
#        if (Collision.i"collision_bottom(1)):"
    
#            y_vel = 0
    
    
#        toggle = true

#    elif (status == CREATE):

#        for repetition in range(1, 6):
    
#            gml.instance_create(position.x+32+randi_range(0,32)-randi_range(0,32), position.y+14+randi_range(0,32)-randi_range(0,32), Objects.psychic_create2)
    
#        gml.instance_create(position.x+32, position.y+16, Objects.yellow_ball)
#        gml.instance_create(position.x+32, position.y+16, Objects.yellow_ball)
#        gml.instance_create(position.x+32, position.y+16, Objects.yellow_ball)
#        Audio.play_sound(global.snd_psychic)
#        status = IDLE

#    elif (status == RECOVER):

#        if (Collision.i"collision_bottom(1)):"
    
#            Audio.play_sound(global.snd_thump)
#            status = IDLE
#            x_vel = 0
#            y_vel = 0
#            counter = randi_range(40,100)
    
#        else:
    
#            if (counter > 1): counter -= 1
#            elif (counter == 1):
        
#                if (player1.position.x < position.x): x_vel = -0.25
#                elif (player1.position.x > position.x+64): x_vel = 0.25
#                else: x_vel = 0
#                counter -= 1
        
#            else:
        
#                if (x_vel < 0 and toggle): x_vel -= 0.25
#                elif (x_vel < 0 and not toggle): x_vel += 0.25
#                if (x_vel > 0 and toggle): x_vel += 0.25
#                elif (x_vel > 0 and not toggle): x_vel -= 0.25
#                if (x_vel <= -2 or x_vel >= 2): toggle = not toggle
        

#            if ((not player1.active and y_vel >= 0) or:
#                (player1.position.y > position.y and abs(player1.position.x - (position.x+32)) < 32 and x_vel > -1))
        
#                status = PREPARE
#                y_vel = 0
#                x_vel = 0
#                my_grav = 0
#                counter = 20
        
    

#    elif (status == BOUNCE):

#        if (Collision.i"collision_bottom(1)):"
    
#            y_vel = -4
    
#        else:
    
#            counter = 10
#            status = RECOVER
#            Audio.play_sound(global.snd_big_jump)
    

#    elif (status == PREPARE):

#        if (counter > 0): counter -= 1
#        else:
    
#            y_vel = 5
#            my_grav = 0.2
#            status = SLAM
#            slammed = false
    

#    elif (status == SLAM):

#        carry_player = false
#        if (Collision.i"collision_bottom(1)):"
    
#            if (not slammed):
        
#                gml.instance_create(position.x, position.y+64, Objects.olmec_slam)
#                slammed = true
#                InLevel.scr_shake(5)
        
#            else:
        
#                if (randi_range(1,2) == 1 or not player1.active): status = IDLE
#                else: status = CREATE
#                x_vel = 0
#                y_vel = 0
#                counter = 60
#                if (not player1.active): alarm_5(50)
        
    

#    elif (status == DROWNING):

#        x_vel = 0
#        y_vel = 0.1
#        my_grav = 0
#        InLevel.scr_shake(10)
#        if (not SS_IsSoundPlaying(global.snd_flame)): Audio.play_sound(global.snd_flame)


#    if (Collision.i"collision_top(1)):"
#        y_vel = 1
#    if (Collision.i"collision_left(1) or Collision.is_collision_right(1)):"

#        x_vel = -x_vel


#    if (Collision.i"collision_solid()):"
#      position.y -= 2
