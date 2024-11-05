
extends Enemy


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func animation_end():
    #    if (sprite_index == "alien_boss_die):"

#        sprite_index = "alien_boss_dead"
#        with barrier_emitter  gml.instance_destroy() 

#    if (sprite_index == "alien_boss_hurt):"

#        sprite_index = "alien_boss"


    

#func collision with o_character():
    #    if (not other.dead and (other.state == 15 or other.state == 16) and other.position.y < position.y+8 and not other.swimming):

#        other.y_vel = -6 - 0.2 * other.y_vel
#        if (global.ha"spike_shoes):  hp -= (3 * (floor(other.fall_timer/16)+1)) if (not bloodless) gml.instance_create(other.position.x, other.position.y+8, Objects.blood) "
#        else: hp -= (1 * (floor(other.fall_timer/16)+1))
#        other.fall_timer = 0
#        count"as_kill = true"
#        gml.instance_create(position.x+16, position.y+8, Objects.blood)
#        Audio.play_sound(global.snd_hit)

#    elif (other.invincible == 0 and status != dead):

#        other.blink = 30
#        other.invincible = 30
#        if (other.position.y < position.y):
#            other.y_vel = -6
#        if (other.position.x < position.x):
#            other.x_vel = -6
#        else:
#            other.x_vel = 6
    
#        if (global.plife > 0):
    
#            global.plife -= 1
#            if (global.plife <= 0 and InLevel.i"real_level()): global.enemy_deaths[17] += 1"
    
#        Audio.play_sound(global.snd_hurt)


    

#func create():
    #    # action_inherited
#    super()

#    # main_code
#    PlatformEngine.make_active()
#    Collision.set_collision_bounds(0, 0, 32, 32)
#    x_vel = 2.5
#    image_speed = 0.25

#    # dy:  stats
#    type = "alien boss"
#    hp = 10
#    invincible = 0

#    idle = 0
#    dead = 99
#    status = idle

#    can_pick_up = false
#    bounced = false
#    dead = false
#    counter = 0

#    left = 0
#    right = 1
#    facing = left

#    shake_counter = 0
#    shake_toggle = 1

#    psychic_recover = 100

    

#func step():
    #    if (position.x > view_xview[0]-36 and position.x < view_xview[0] + view_wview[0] and:
#            position.y > view_yview[0]-36 and position.y < view_yview[0] + view_hview[0])

#    if (gml.collision_point(position.x+8, position.y+8, "solid", 0, 0)):

#        hp = 0


#    if (hp < 1 and status != dead):

#        status = dead
#        sprite_index = "alien_boss_die"
#        depth = 101
#        for repetition in range(1, 4):
    
#            n = randi_range(1,3)
#            match (n)
        
#                1:  gem = gml.instance_create(position.x+16, position.y+16, Objects.emerald_big)  
#                2:  gem = gml.instance_create(position.x+16, position.y+16, Objects.sapphire_big)  
#                3:  gem = gml.instance_create(position.x+16, position.y+16, Objects.ruby_big)  
        
#            gem.x_vel = randi_range(0,3) - randi_range(0,3)
#            gem.y_vel = -2
    
#        if (count"as_kill):"
    
#            if (InLevel.i"real_level()): global.enemy_kills[17] += 1"
#            global.alienbosses += 1
#            global.kills += 1
    


#    if (sprite_index == "alien_boss_die):"

#        if (randi_range(1,2) == 1):
    
#            MiscScripts.scr_create_blood(position.x+8, position.y+randi_range(14,18), 1)
#            blood = gml.instance_create(position.x+8, position.y+randi_range(14,18), Objects.blood)
    


#    y_vel += my_grav
#    if (y_vel > y_vel_limit): y_vel = y_vel_limit

#    if (x_vel > 0): x_vel -= 0.1
#    if (x_vel < 0): x_vel += 0.1
#    if (abs(x_vel) < 0.5): x_vel = 0

#    if (Collision.i"collision_bottom(1) and status != stunned):"
#        y_vel = 0

#    if (status == idle):

#        x_vel = 0


#    PlatformEngine.move_to(x_vel,y_vel)

#    if (Collision.i"collision_solid()):"
#        position.y -= 2
    
#    dist = gml.distance_to_object(player1)

#    if (psychic_recover > 0): psychic_recover -= 1
#    elif (dist < 96 and status != dead and not player1.dead and not player1.stunned and player1.invincible == 0):

#        for i in range(0, 6):
    
#            gml.instance_create(position.x+16+randi_range(0,32)-randi_range(0,32), position.y+16+randi_range(0,32)-randi_range(0,32), Objects.psychic_create)
    
#        gml.instance_create(position.x+16, position.y+16, Objects.psychic_wave)
#        psychic_recover = 100
#        Audio.play_sound(global.snd_psychic)


#    if (sprite_index != "alien_boss_hurt): image_speed = 0.25    "
    
#    if (status != dead and sprite_index != "alien_boss_hurt and facing == left):"

#        sprite_index = "alien_boss"

#    if (status != dead and sprite_index != "alien_boss_hurt and facing == right):"

#        sprite_index = "alien_boss"
