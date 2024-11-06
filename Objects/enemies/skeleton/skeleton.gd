
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
#    x_vel = 0
#    image_speed = 0.5

#    # DY:  stats
#    type = "Skeleton"
#    hp = 1
#    invincible = 0

#    IDLE = 0
#    WALK = 1
#    ATTACK = 2
#    STUNNED = 98
#    DEAD = 99
#    status = 0

#    bloodless = true
#    bounced = false
#    dead = false
#    counter = 20

#    LEFT = 0
#    RIGHT = 1
#    facing = RIGHT
#    if (gml.instance_exists("player1")):

#        if (player1.position.x < position.x+8): facing = LEFT


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

#        for i in range(0, 3):
    
#            gml.instance_create(other.position.x+8, other.position.y+8, Objects.bone)
    
#        skull = gml.instance_create(other.position.x+8, other.position.y+8, Objects.skull)
#        skull.y_vel = -randi_range(1,3)
#        skull.x_vel = randi_range(0,3)-randi_range(0,3)
#        if (count"as_kill):"
    
#            if (InLevel.i"real_level()): global.enemy_kills[5] += 1"
#            global.skeletons += 1
#            global.kills += 1
    
#        gml.instance_destroy()


#    if (Collision.i"collision_bottom(1) and status != STUNNED):"
#        y_vel = 0

#    if (status == IDLE):

#        if (counter > 0): counter -= 1    
#        if (counter == 0):
    
#            # DY:  facing = randi_range(0,1)
#            status = WALK
    

#    elif (status == WALK):

#        col_left = false
#        col_right = false
#        if (Collision.i"collision_left(1)): col_left = true"
#        if (Collision.i"collision_right(1)): col_right = true"
    
#        if (Collision.i"collision_left(4) and Collision.is_collision_right(4)):"
    
#            # DY:  do nothing
    
#        elif (col_left or col_right):
    
#            if (facing == LEFT): facing = RIGHT
#            else: facing = LEFT
    
#        /*
#        if (facing == LEFT and not gml.collision_point(position.x-1, position.y, "solid", -1, -1) and:
#            not gml.collision_point(position.x-1, position.y+16, "solid", -1, -1))
    
#            facing = RIGHT
    
#        elif (facing == RIGHT and not gml.collision_point(position.x+16, position.y, "solid", -1, -1) and:
#                 not gml.collision_point(position.x+16, position.y+16, "solid", -1, -1))
    
#            facing = LEFT
    
#        */
    
#        if (facing == LEFT): x_vel = -1
#        else: x_vel = 1
    
#        /*
#        if (randi_range(1,100) == 1):
    
#            status = IDLE
#            counter = randi_range(20,50)
#            x_vel = 0
    
#        */


#    if (Collision.i"collision_solid()):"
#        position.y -= 2

#    if (status != STUNNED):

#        if (status == WALK): sprite_index = "skeleton_walk_left"
#        else: sprite_index = "skeleton_left"
