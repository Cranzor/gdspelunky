
extends Enemy


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func animation_end():
    #    if (sprite_index == "yeti_king_turn_r):"

#        facing = right
#        status = walk

#    if (sprite_index == "yeti_king_turn_l):"

#        facing = left
#        status = walk

#    if (sprite_index == "yeti_king_yell_l or sprite_index == s_yeti_king_yell_r):"

#        status = idle
#        counter = 30
#        image_speed = 0.25


    

#func collision with o_character():
    #    # dy:  jumped on - caveman, man_trap replaces this script with its own
#    if (abs(other.position.x-(position.x+16)) > 16):

#        # dy:  do nothing

#    elif (not other.dead and (other.state == 15 or other.state == 16) and other.position.y < position.y+8 and not other.swimming):

#        other.y_vel = -6 - 0.2 * other.y_vel
#        if (global.ha"spike_shoes):  hp -= (3 * ceil(other.fall_timer/16)) gml.instance_create(other.position.x, other.position.y+8, Objects.blood) "
#        else: hp -= (1 * ceil(other.fall_timer/16))
#        other.fall_timer = 0
#        count"as_kill = true"
#        gml.instance_create(position.x+16, position.y+8, Objects.blood)
#        Audio.play_sound(global.snd_hit)

#    elif (other.invincible == 0):

#        other.blink = 30
#        other.invincible = 30
#        if (other.position.y < position.y):
#            other.y_vel = -6
#        if (other.position.x < position.x):
#            other.x_vel = -6
#        else:
#            other.x_vel = 6
    
#        if (global.plife > 0 and InLevel.i"real_level()):"
    
#            global.plife -= 2
#            if (global.plife <= 0): global.enemy_deaths[14] += 1
    
#        Audio.play_sound(global.snd_hurt)



    

#func collision with o_whip():
    #    if (whipped == 0 and other.position.y < position.y+12):

#        if (other.puncture):
    
#            hp -= other.damage
#            count"as_kill = true"
#            MiscScripts.scr_create_blood(position.x+sprite_width/2, position.y+sprite_height/2, 1)
#            Audio.play_sound(global.snd_hit)
#            whipped = 10
    
#        else:
    
#            Audio.play_sound(global.snd_hit)
#            whipped = 10
    



    

#func create():
    #    # action_inherited
#    super()

#    # main_code
#    PlatformEngine.make_active()
#    Collision.set_collision_bounds(6, 0, 26, 32)
#    x_vel = 2.5
#    image_speed = 0.25

#    # dy:  stats
#    type = "yeti king"
#    hp = 30
#    invincible = 0
#    heavy = true

#    idle = 0
#    walk = 1
#    turn = 2
#    attack = 3
#    stunned = 98
#    dead = 99
#    status = idle

#    can_pick_up = false
#    bounced = false
#    dead = false
#    whipped = 0
#    counter = 0
#    attack_timer = 0

#    left = 0
#    right = 1
#    facing = right

#    shake_counter = 0
#    shake_toggle = 1

    

#func draw():
    #    draw_sprite_ext(sprite_index, image_index, position.x, position.y, 1, image_yscale, image_angle, image_blend, image_alpha)

    

#func step():
    #    # action_inherited
#    super()

#    # main_code
#    if ((position.x > view_xview[0]-36 and position.x < view_xview[0] + view_wview[0] and:
#            position.y > view_yview[0]-36 and position.y < view_yview[0] + view_hview[0]))

#    PlatformEngine.move_to(x_vel,y_vel)

#    y_vel += my_grav
#    if (y_vel > y_vel_limit): y_vel = y_vel_limit

#    if (gml.collision_point(position.x+16, position.y+16, "solid", 0, 0)):

#        hp = 0


#    if (hp < 1):

#        MiscScripts.scr_create_blood(position.x+14+randi_range(0,4), position.y+14+randi_range(0,4), 3)
#        for repetition in range(1, 4):
    
#            gml.instance_create(position.x+14+randi_range(0,4), position.y+14+randi_range(0,6), Objects.bone)
    
#        for repetition in range(1, 4):
    
#            if (randi_range(1,12) == 1):
        
#                obj = gml.instance_create(position.x+16, position.y+16, Objects.spike_shoes)
#                obj.cost = 0
#                obj.for_sale = false
        
#            elif (randi_range(1,2) == 1): obj = gml.instance_create(position.x+16, position.y+16, Objects.sapphire_big)
#            else:
        
#                obj = gml.instance_create(position.x+16, position.y+16, Objects.rope_pile)
#                obj.cost = 0
#                obj.for_sale = false
        
#            obj.x_vel = randi_range(0,3)-randi_range(0,3)
#            obj.y_vel = -randi_range(1,2)
    
#        if (count"as_kill):"
    
#            global.enemy_kills[14] += 1
#            global.yetikings += 1
#            global.kills += 1
    
#        gml.instance_destroy()


#    if (Collision.i"collision_bottom(1) and status != stunned): y_vel = 0"

#    if (attack_timer > 0): attack_timer -= 1
#    if (whipped > 0): whipped -= 1
    
#    if (status == idle):

#        if (counter > 0): counter -= 1    
#        if (counter <= 0):
    
#            status = walk
    

#    elif (status == walk):

#        if (counter > 0): counter -= 1
    
#        if (facing == left):
    
#            if (Collision.i"collision_left(1) or:"
#                (player1.position.x > position.x+16 and abs(player1.position.y-(position.y+32)) < 16 and counter == 0))
        
#                sprite_index = "yeti_king_turn_r"
#                status = turn
#                counter = 30
        
#            elif (player1.position.x < position.x+16 and abs(player1.position.y-(position.y+16)) < 32 and attack_timer == 0):
        
#                status = attack
#                sprite_index = "yeti_king_yell_l"
#                image_index = 0
#                x_vel = 0
        
#            else: x_vel = -1
    
#        elif (facing == right):
    
#            if (Collision.i"collision_right(1) or:"
#                (player1.position.x < position.x+16 and abs(player1.position.y-(position.y+32)) < 16 and counter == 0))
        
#                sprite_index = "yeti_king_turn_l"
#                status = turn
#                counter = 30
        
#            elif (player1.position.x > position.x+16 and abs(player1.position.y-(position.y+16)) < 32 and attack_timer == 0):
        
#                status = attack
#                sprite_index = "yeti_king_yell_r"
#                image_index = 0
#                x_vel = 0
        
#            else: x_vel = 1
    

#    elif (status == turn):

#        x_vel = 0

#    elif (status == attack):

#        x_vel = 0
#        image_speed = 0.5
#        attack_timer = 100
#        if (image_index >= 7 and image_index <= 12):
    
#            if (not SS_IsSoundPlaying(global.snd_yeti_yell)): Audio.play_sound(global.snd_yeti_yell)
#            with ice
        
#                if (gml.instance_exists("yeti_king")):
            
#                    if (randi_range(1,60) == 1 and:
#                        abs((yeti_king.position.x+16)-(position.x+8)) > 16 and
#                        point_distance(position.x, position.y, yeti_king.position.x, yeti_king.position.y) < 96)
                
#                        gml.instance_create(position.x, position.y, Objects.ice_block)
#                        gml.instance_destroy()
                
            
        
#            with thin_ice
        
#                thickness -= 2
        
    


#    if (Collision.i"collision_solid()):"
#        position.y -= 2

#    if (facing == left):
   
#        if (status == walk): sprite_index = "yeti_king_walk_l"
#        elif (status == idle): sprite_index = "yeti_king_left"

#    if (facing == right):
   
#        if (status == walk): sprite_index = "yeti_king_walk_r"
#        elif (status == idle): sprite_index = "yeti_king_right"
