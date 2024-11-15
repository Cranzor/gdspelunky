
extends DrawnSprite


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func alarm 0():
    #    invincible = false

    

#func alarm 1():
    #    if (gml.instance_number(yellow_trail) < 12): gml.instance_create(position.x, position.y, Objects.yellow_trail)
#    alarm_1(4)

    

#func collision with o_solid():
    #    /*
#    if (not gml.collision_rectangle(position.x-8, position.y-8, position.x+8,  position.y+8, "olmec", 0, 0)):

#        if (randi_range(1,2) == 1): n = randi_range(1,4)
#        else: n = randi_range(1,5)
#        match (n)
    
#            1:  gml.instance_create(position.x-8, position.y-8, Objects.bat)  
#            2:  gml.instance_create(position.x-8, position.y-8, Objects.spider)  
#            3:  gml.instance_create(position.x-8, position.y-8, Objects.snake)  
#            4:  gml.instance_create(position.x-8, position.y-8, Objects.frog)  
#            5:  gml.instance_create(position.x-8, position.y-8, Objects.fire_frog)  
    
#        gml.instance_destroy(self)

#    */

    

#func create():
    #    # action_inherited
#    super()

#    # main_code
#    y_vel = -1 * (random(3)+4)
#    x_vel = randi_range(2,5)
#    if (randi_range(1,2) == 1): x_vel *= -1
#    # DY: invincible = true
#    # DY: alarm_0(40)
#    alarm_1(1)

    

#func outside room():
    #    # action_kill_object
#    gml.instance_destroy(self)
    

#func step():
    #    position.x += x_vel
#    position.y += y_vel

#    if (gml.collision_rectangle(position.x-8, position.y-8, position.x+8,  position.y+8, "solid", 0, 0) and:
#        not gml.collision_rectangle(position.x-8, position.y-8, position.x+8,  position.y+8, "olmec", 0, 0))

#        position.x -= x_vel
#        position.y -= y_vel
#        if (randi_range(1,2) == 1): n = randi_range(1,4)
#        else: n = randi_range(1,5)
#        match (n)
    
#            1:  gml.instance_create(position.x-8, position.y-8, Objects.bat)  
#            2:  gml.instance_create(position.x-8, position.y-8, Objects.spider)  
#            3:  gml.instance_create(position.x-8, position.y-8, Objects.snake)  
#            4:  gml.instance_create(position.x-8, position.y-8, Objects.frog)  
#            5:  gml.instance_create(position.x-8, position.y-8, Objects.fire_frog)  
    
#        gml.instance_destroy(self)


#    if (y_vel < 6): y_vel += 0.15

#    /*if (gml.collision_point(position.x, position.y, "dark", 0, 0) or:
#        gml.collision_point(position.x, position.y, "dark_fall", 0, 0) or
#        gml.collision_point(position.x, position.y, "ice", 0, 0))

#        gml.instance_destroy(self)
#    */
