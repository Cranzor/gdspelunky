
extends Enemy


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func collision with o_character():
    #    global.collect += value
#    global.collect_counter += 20
#    if (global.collect_counter > 100): global.collect_counter = 100
#    global.scarabs += 1
#    Audio.play_sound(global.snd_coin)
#    gml.instance_destroy()

    

#func create():
    #    # action_inherited
#    super()

#    # main_code
#    image_speed = 0.5
#    Collision.set_collision_bounds(4, 4, 12, 12)
#    origX = 0
#    origY = 0
#    x_vel = 0
#    y_vel = 0
#    x_acc = 0.2
#    y_acc = 0.2
#    counter = randi_range(10,30)
#    if (global.level_type == 0): value = 4000
#    elif (global.level_type == 1): value = 8000
#    elif (global.level_type == 3): value = 12000

#    # dy:  stats
#    hp = 1
#    invincible = 0
#    bloodless = true

#    # dy:  status
#    idle = 0
#    attack = 1

#    status = idle

#    shake_counter = 0
#    shake_toggle = 1

    

#func destroy():
    #    for repetition in range(1, 3):

#        gml.instance_create(other.position.x+6+randi_range(0,4), other.position.y+6+randi_range(0,4), Objects.flare_spark)


    

#func step():
    #    if ((position.x > view_xview[0]-20 and position.x < view_xview[0] + view_wview[0]+4 and:
#            position.y > view_yview[0]-20 and position.y < view_yview[0] + view_hview[0]+4))

#    PlatformEngine.move_to(x_vel, y_vel)

#    if (gml.collision_point(position.x+8, position.y+8, "solid", 0, 0)): hp = -999

#    if (hp < 1):

#        for repetition in range(1, 3):
    
#            obj = gml.instance_create(position.x+2+randi_range(0,14), position.y+2+randi_range(0,14), Objects.flare_spark)
#            obj.y_vel = randi_range(1,3)
    
#        gml.instance_destroy()


#    dir = 0
#    dist = point_distance(position.x+8, position.y+8, character.position.x, character.position.y)

#    if (status == idle):

#        if (x_vel > 0): x_vel -= 0.5
#        if (y_vel > 0): y_vel -= 0.5
#        if (x_vel < 0): x_vel += 0.5
#        if (y_vel < 0): y_vel += 0.5
#        if (abs(x_vel) < 1):  x_vel = 0 
#        if (abs(y_vel) < 1):  y_vel = 0 
    
#        if (x_vel == 0 and y_vel == 0 and counter > 0): counter -= 1
    
#        if (counter == 0 and x_vel < 1 and y_vel < 1):
    
#            if (dist < 64):
        
#                dir = point_direction(position.x+8, position.y+8, character.position.x, character.position.y) + 180
        
#            else:
        
#                dir = randi_range(0,360)
        
#            x_vel = 4 * cos(degtorad(dir))
#            y_vel = -4 * sin(degtorad(dir))
#            counter = randi_range(10,30)
    
    
#        if (Collision.i"collision_right(1) and x_vel > 0):"
    
#            x_vel = -x_vel
    
#        if (Collision.i"collision_left(1) and x_vel < 0):"
    
#            x_vel = -x_vel
    
#        if (Collision.i"collision_top(1) and y_vel < 0):"
    
#            y_vel = -y_vel
    
#        if (Collision.i"collision_bottom(1) and y_vel > 0):"
    
#            y_vel = -y_vel
