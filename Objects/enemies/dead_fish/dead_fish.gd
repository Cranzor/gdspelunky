
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
#    image_speed = 0.5
#    Collision.set_collision_bounds(self, 0, 0, 8, 8)
#    origX = 0
#    origY = 0
#    x_vel = 0
#    y_vel = 0
#    x_acc = 0.2
#    y_acc = 0.2
#    dir = 0

#    # DY:  stats
#    hp = 1
#    invincible = 0

#    bubble_timer = 0
#    bubble_timer_max = 40

#    # DY:  status
#    IDLE = 0
#    ATTACK = 1
#    PAUSE = 2

#    status = 0
#    counter = 0
#    bloodless = true

#    shake_counter = 0
#    shake_toggle = 1

    

#func step():
    #    if ((position.x > gml.view("xview")-16 and position.x < gml.view("xview") + gml.view("wview") and:
#            position.y > gml.view("yview")-16 and position.y < gml.view("yview") + gml.view("hview")))

#    if (hp < 1):

#        for repetition in range(1, 3):
    
#            gml.instance_create(position.x+4, position.y+4, Objects.bone)
    
#        if (counts_as_kill):
    
#            if (InLevel.is_real_level()): global.enemy_kills[11] += 1
#            global.deadfish += 1
#            global.kills += 1
    
#        gml.instance_destroy(self)


#    dist = point_distance(position.x, position.y, character.position.x, character.position.y)

#    if (status == IDLE):

#        if (dir == 0):
    
#            if (gml.collision_point(position.x+8+2, position.y, "water", 0, 0) and not (gml.collision_point(position.x+10, position.y, "solid", 0, 0))):
#                PlatformEngine.move_to(1,0)
#            else: dir = 180
    
#        else:
    
#            if (gml.collision_point(position.x-2, position.y, "water", 0, 0) and not (gml.collision_point(position.x-2, position.y, "solid", 0, 0))):
#                PlatformEngine.move_to(-1,0)
#            else: dir = 0
    

#        if (dist < 90 and character.swimming):
    
#            status = ATTACK
    

#    elif (status == PAUSE):

#        if (counter > 0): counter -= 1
#        else:
    
#            status = IDLE
#            dir = randi_range(0,1)*180
    

#    elif (gml.instance_exists("character")):

#        if (dist < 90 and character.swimming and not character.dead):
    
#            dir = point_direction(position.x, position.y, character.position.x, character.position.y)+randi_range(0,1)-randi_range(0,1)
#            if (gml.collision_point(position.x + cos(degtorad(dir)), position.y - sin(degtorad(dir)), "water", 0, 0)):
#                PlatformEngine.move_to(1 * cos(degtorad(dir)), -1 * sin(degtorad(dir)))
    
#        else:
    
#            status = PAUSE
#            counter = randi_range(20,40)
    


#    if (dir > 90 and dir < 270):
#        sprite_index = "dead_fish_left"
#    else:
#        sprite_index = "dead_fish_right"
    
#    if (not gml.collision_point(position.x+4, position.y+4, "water", 0, 0)):

#        gml.instance_create(position.x, position.y, Objects.fish_bone)
#        gml.instance_destroy(self)
