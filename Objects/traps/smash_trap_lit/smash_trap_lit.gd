
extends MovingSolid


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
#    Collision.set_collision_bounds(self, 1, 1, 15, 15)
#    invincible = false
#    viscid_top = 1

#    xv = 0
#    yv = 0
#    xa = 0
#    ya = 0

#    x_vel = 0
#    y_vel = 0
#    x_acc = 0
#    y_acc = 0

#    IDLE = 0
#    ATTACK = 1
#    status = 0

#    hit = false
#    counter = 0

#    dir = gml.rand(0,3)
#    RIGHT = 0
#    DOWN = 1
#    LEFT = 2
#    UP = 3

    

#func destroy():
    #    if (not clean_death and not global.clean_solids):

#        rubble = gml.instance_create(position.x+8+gml.rand(0,8)-gml.rand(0,8), position.y+8+gml.rand(0,8)-gml.rand(0,8), Objects.rubble)
#        rubble.sprite_index = "rubble_tan"
#        rubble = gml.instance_create(position.x+8+gml.rand(0,8)-gml.rand(0,8), position.y+8+gml.rand(0,8)-gml.rand(0,8), Objects.rubble_small)
#        rubble.sprite_index = "rubble_tan_small"
#        rubble = gml.instance_create(position.x+8+gml.rand(0,8)-gml.rand(0,8), position.y+8+gml.rand(0,8)-gml.rand(0,8), Objects.rubble_small)
#        rubble.sprite_index = "rubble_tan_small"


    

#func step():
    #    if (position.x > gml.view("xview")-16 and position.x < gml.view("xview") + gml.view("wview")+16 and:
#            position.y > gml.view("yview")-16 and position.y < gml.view("yview") + gml.view("hview")+16)

#    if (status == IDLE):

#        dist = point_distance(position.x, position.y, character.position.x, character.position.y)
#        if (counter > 0): counter -= 1
        
#        if (dist < 90 and counter < 1):
    
#            if (abs(character.position.y - (position.y+8)) < 8 and character.position.x > position.x+8 and not Collision.is_collision_right(2)):
        
#                status = ATTACK
#                dir = RIGHT
#                xa = 0.5
        
#            elif (abs(character.position.x - (position.x+8)) < 8 and character.position.y > position.y+8 and not Collision.is_collision_bottom(2)):
        
#                status = ATTACK
#                dir = DOWN
#                ya = 0.5
        
#            elif (abs(character.position.y - (position.y+8)) < 8 and character.position.x < position.x+8 and not Collision.is_collision_left(2)):
        
#                status = ATTACK
#                dir = LEFT
#                xa = -0.5
        
#            elif (abs(character.position.x - (position.x+8)) < 8 and character.position.y < position.y+8 and not Collision.is_collision_top(2)):
        
#                status = ATTACK
#                dir = UP
#                ya = -0.5
        
    

#    elif (status == ATTACK):

#        col_left = false
#        col_right = false
#        col_top = false
#        col_bot = false
#        if (Collision.is_collision_left(1)): col_left = true
#        if (Collision.is_collision_right(1)): col_right = true
#        if (Collision.is_collision_top(1)): col_top = true
#        if (Collision.is_collision_bottom(1)): col_bot = true

#        if (abs(xv) < 4): xv += xa
#        if (abs(yv) < 4): yv += ya
#        position.x += xv
#        position.y += yv
#        if (dir == RIGHT):
    
#            if (Collision.is_collision_right(2) and col_right):
        
#                position.x -= 2
#                hit = true
        
#            if (col_right):
        
#                position.x -= 1
#                hit = true
        
    
#        elif (dir == DOWN):
    
#            if (Collision.is_collision_bottom(2) and col_bot):
        
#                position.y -= 2
#                hit = true
        
#            if (col_bot):
        
#                position.y -= 1
#                hit = true
        
    
#        elif (dir == LEFT):
    
#            if (Collision.is_collision_left(2) and col_left):
        
#                position.x += 2
#                hit = true
        
#            if (col_left):
        
#                position.x += 1
#                hit = true
        
    
#        elif (dir == UP):
    
#            if (Collision.is_collision_top(2) and col_top):
        
#                position.y += 2
#                hit = true
        
#            if (col_top):
        
#                position.y += 1
#                hit = true
        
    
    
#        if (collision_rectangle(position.x-1,position.y-1,position.x+17,position.y+17,tomb_lord,0,0)): hit = true
    
#        if (hit):
    
#            xv = 0
#            yv = 0
#            xa = 0
#            ya = 0
    
#        if (hit and not col_right and:
#            not col_left and
#            not col_top and
#            not col_bot)
    
#            status = IDLE
#            hit = false
#            counter = 50
    

#    elif (status = 99):

#        xv = 0
#        yv = 0
#        xa = 0
#        ya = 0
#        position.y += 0.05
#        if (gml.collision_point(position.x, position.y-1, "lava", 0, 0)): gml.instance_destroy(self)


#    if (gml.collision_rectangle(position.x+1, position.y+1, position.x+15,  position.y+15, "lava", 0, 0)):

#        status = 99
