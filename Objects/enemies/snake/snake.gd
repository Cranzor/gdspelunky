
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
#    PlatformEngine.make_active(self)
#    Collision.set_collision_bounds(self, 2, 0, 14, 16)
#    x_vel = 2.5
#    image_speed = 0.4

#    # DY:  stats
#    type = "Snake"
#    hp = 1
#    invincible = 0

#    IDLE = 0
#    WALK = 1
#    ATTACK = 2
#    STUNNED = 98
#    DEAD = 99
#    status = IDLE

#    bounced = false
#    dead = false
#    counter = 0

#    LEFT = 0
#    RIGHT = 1
#    facing = RIGHT

#    shake_counter = 0
#    shake_toggle = 1

    

#func step():
    #    # action_inherited
#    super()

#    # main_code
#    if ((position.x > gml.view("xview")-20 and position.x < gml.view("xview") + gml.view("wview")+4 and:
#            position.y > gml.view("yview")-20 and position.y < gml.view("yview") + gml.view("hview")+4))

#    PlatformEngine.move_to(x_vel,y_vel)

#    y_vel += my_grav
#    if (y_vel > y_vel_limit): y_vel = y_vel_limit

#    if (gml.collision_point(position.x+8, position.y+8, "solid", 0, 0)):

#        hp = 0


#    if (hp < 1):

#        MiscScripts.scr_create_blood(position.x+8, position.y+8, 3)
#        if (counts_as_kill):
    
#            if (InLevel.is_real_level()): global.enemy_kills[1] += 1
#            global.snakes += 1
#            global.kills += 1
    
#        gml.instance_destroy(self)


#    if (Collision.is_collision_bottom(1) and status != STUNNED): y_vel = 0

#    if (status == IDLE):

#        if (counter > 0): counter -= 1    
#        else:
    
#            facing = gml.rand(0,1)
#            status = WALK
    

#    elif (status == WALK):

#        if (Collision.is_collision_left(1) or Collision.is_collision_right(1)):
    
#            if (facing == LEFT): facing = RIGHT
#            else: facing = LEFT
    
    
#        if (facing == LEFT and not gml.collision_point(position.x-1, position.y+16, "solid", -1, -1)):
    
#            facing = RIGHT
    
#        elif (facing == RIGHT and not gml.collision_point(position.x+16, position.y+16, "solid", -1, -1)):
    
#            facing = LEFT
    
    
#        if ((not gml.collision_point(position.x-1, position.y+16, "solid", -1, -1) or gml.collision_point(position.x-1, position.y, "solid", -1, -1)) and:
#            (not gml.collision_point(position.x+16, position.y+16, "solid", -1, -1) or gml.collision_point(position.x+16, position.y, "solid", -1, -1)))
    
#            if (gml.collision_point(position.x-1, position.y, "solid", -1, -1)): facing = RIGHT
#            else: facing = LEFT
#            x_vel = 0
    
#        elif (facing == LEFT): x_vel = -1
#        else: x_vel = 1
    
#        if (gml.rand(1,100) == 1):
    
#            status = IDLE
#            counter = gml.rand(20,50)
#            x_vel = 0
    

#    elif (status == ATTACK):

#        # DY:  ?


#    if (Collision.is_collision_solid()):
#        position.y -= 2

#    if (status != STUNNED):

#        if (x_vel == 0): image_speed = 0.2
#        else: image_speed = 0.4
    
#        sprite_index = "snake_walk_l"

#    /*
#    if (status != STUNNED and facing == RIGHT):

#        if (x_vel == 0): image_speed = 0.2
#        else: image_speed = 0.4
    
#        sprite_index = "snake_walk_r"

#    */
