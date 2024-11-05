
extends Enemy


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func create():
    #    # action_inherited
#    super()

#    # main_code
#    PlatformEngine.make_active()
#    Collision.set_collision_bounds(2, 0, 14, 16)
#    x_vel = 2.5
#    image_speed = 0.4

#    # dy:  stats
#    type = "snake"
#    hp = 1
#    invincible = 0

#    idle = 0
#    walk = 1
#    attack = 2
#    stunned = 98
#    dead = 99
#    status = idle

#    bounced = false
#    dead = false
#    counter = 0

#    left = 0
#    right = 1
#    facing = right

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
    
#            if (InLevel.i"real_level()): global.enemy_kills[1] += 1"
#            global.snakes += 1
#            global.kills += 1
    
#        gml.instance_destroy()


#    if (Collision.i"collision_bottom(1) and status != stunned): y_vel = 0"

#    if (status == idle):

#        if (counter > 0): counter -= 1    
#        else:
    
#            facing = randi_range(0,1)
#            status = walk
    

#    elif (status == walk):

#        if (Collision.i"collision_left(1) or Collision.is_collision_right(1)):"
    
#            if (facing == left): facing = right
#            else: facing = left
    
    
#        if (facing == left and not gml.collision_point(position.x-1, position.y+16, "solid", -1, -1)):
    
#            facing = right
    
#        elif (facing == right and not gml.collision_point(position.x+16, position.y+16, "solid", -1, -1)):
    
#            facing = left
    
    
#        if ((not gml.collision_point(position.x-1, position.y+16, "solid", -1, -1) or gml.collision_point(position.x-1, position.y, "solid", -1, -1)) and:
#            (not gml.collision_point(position.x+16, position.y+16, "solid", -1, -1) or gml.collision_point(position.x+16, position.y, "solid", -1, -1)))
    
#            if (gml.collision_point(position.x-1, position.y, "solid", -1, -1)): facing = right
#            else: facing = left
#            x_vel = 0
    
#        elif (facing == left): x_vel = -1
#        else: x_vel = 1
    
#        if (randi_range(1,100) == 1):
    
#            status = idle
#            counter = randi_range(20,50)
#            x_vel = 0
    

#    elif (status == attack):

#        # dy:  ?


#    if (Collision.i"collision_solid()):"
#        position.y -= 2

#    if (status != stunned):

#        if (x_vel == 0): image_speed = 0.2
#        else: image_speed = 0.4
    
#        sprite_index = "snake_walk_l"

#    /*
#    if (status != stunned and facing == right):

#        if (x_vel == 0): image_speed = 0.2
#        else: image_speed = 0.4
    
#        sprite_index = "snake_walk_r"

#    */
