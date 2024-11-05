
extends Enemy


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func alarm 0():
    #    status = bounce
#    if (Collision.i"collision_bottom(1)):"

#        y_vel = -1 * randi_range(2,5)
#        if (character.position.x < position.x):
    
#            x_vel = -2.5
    
#        else:
    
#            x_vel = 2.5
    


    

#func alarm 1():
    #    gml.instance_destroy()

    

#func animation_end():
    #    if (sprite_index == "spider_flip): sprite_index = s_spider"

    

#func create():
    #    # action_inherited
#    super()

#    # main_code
#    type = "spider"
#    PlatformEngine.make_active()
#    Collision.set_collision_bounds(1, 5, 15, 16)
#    x_vel = 0
#    y_vel = 0
#    y_delta = -0.4
#    my_grav = 0.2
#    my_grav_norm = 0.2
#    image_speed = 0.4

#    # dy:  stats
#    hp = 1
#    invincible = 0

#    # dy:  status
#    idle = 0
#    bounce = 1
#    recover = 2
#    walk = 3
#    drowned = 4

#    status = 0
#    bounce_counter = 0

#    shake_counter = 0
#    shake_toggle = 1

    

#func step():
    #    # action_inherited
#    super()

#    # main_code
#    if ((position.x > view_xview[0]-20 and position.x < view_xview[0] + view_wview[0]+4 and:
#            position.y > view_yview[0]-20 and position.y < view_yview[0] + view_hview[0]+4))

#    PlatformEngine.move_to(x_vel,y_vel)

#    y_vel += my_grav
#    if (y_vel > y_vel_limit): y_vel = y_vel_limit

#    if (gml.collision_point(position.x+8, position.y+8, "solid", 0, 0)):

#        hp = 0


#    if (hp < 1):

#        MiscScripts.scr_create_blood(position.x+8, position.y+8, 3)
#        if (count"as_kill):"
    
#            if (InLevel.i"real_level()): global.enemy_kills[2] += 1"
#            global.spiders += 1
#            global.kills += 1
    
#        gml.instance_destroy()


#    if (Collision.i"collision_right(1)):"

#        x_vel = 1


#    if (Collision.i"collision_left(1)):"

#        x_vel = -1


#    dist = gml.distance_to_object(character)

#    if (status == idle):

#        alarm_0()randi_range(5,20)
#        status = recover

#    elif (status == recover):

#        if (Collision.i"collision_bottom(1)): x_vel = 0"

#    elif (status == bounce and dist < 90):

#        if (Collision.i"collision_bottom(1)):"
    
#            y_vel = -1 * randi_range(2,5)
#            if (character.position.x < position.x+8):
        
#                x_vel = -2.5
        
#            else:
        
#                x_vel = 2.5
        
        
#            if (randi_range(1,4) == 1):  status = idle x_vel = 0 y_vel = 0 
    

#    elif (status != drowned):

#        status = idle
#        # dy: x_vel = 0


#    if (Collision.i"collision_top(1)):"
#        y_vel = 1
#    /*
#    if (Collision.i"collision_left(1) or Collision.is_collision_right(1)):"

#        x_vel = -x_vel

#    */

#    # dy: if (Collision.i"collision_solid()):"
#    # dy:   position.y -= 2

#    # main_code
#    if (gml.collision_point(position.x+8, position.y+8, "water", 0, 0) and status != drowned):

#        status = drowned
#        sprite_index = "spider_drowning"
#        alarm_1(30)
#        x_vel = 0
#        y_vel = 0.2
#        gml.instance_create(position.x+8, position.y, Objects.splash)
#        Audio.play_sound(global.snd_splash)
