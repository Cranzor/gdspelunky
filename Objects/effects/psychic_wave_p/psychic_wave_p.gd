
extends DrawnSprite


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func animation_end():
    #    # action_kill_object
#    gml.instance_destroy(self)
    

#func collision with o_damsel():
    #    if (not other.invincible):

#        other.hp -= 3
#        other.x_vel = randi_range(0,2)-randi_range(1,2)
#        other.x_vel = -1
#        other.y_vel = -6
#        status = 2


#    # DY:  gml.instance_create(position.x, position.y, Objects.laser_explode)

#    # DY:  global.check_water = true

#    gml.instance_destroy(self)

    

#func collision with o_enemy():
    #    if (other.type != "Alien Boss" and other.invincible == 0):

#        other.hp -= 3
#        other.x_vel = randi_range(0,2)-randi_range(1,2)
#        other.x_vel = -1
#        other.y_vel = -6


    

#func create():
    #    # action_inherited
#    super()

#    # main_code
#    y_vel = 0
#    y_acc = 0.6
#    image_speed = 0.25
#    counter = 5
#    dir = 0

    

#func outside room():
    #    # action_kill_object
#    gml.instance_destroy(self)
    

#func step():
    #    if (counter > 0):

#        counter -= 1
#        position.x += x_vel
#        if (x_vel > 0): dir = 0
#        else: dir = 180

#    else:

#        if (gml.instance_exists("enemy")):
    
#            obj = instance_nearest(position.x, position.y, enemy)
#            dir = point_direction(position.x, position.y, obj.position.x+8, obj.position.y+8)
    
#        position.x += 2 * cos(degtorad(dir))
#        position.y += -2 * sin(degtorad(dir))
