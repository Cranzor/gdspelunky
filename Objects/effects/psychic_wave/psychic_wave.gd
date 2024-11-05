
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
#    # Need to implement this action
    

#func collision with o_damsel():
    #    if (not other.invincible):

#        other.hp -= 3
#        other.x_vel = randi_range(0,2)-randi_range(1,2)
#        other.x_vel = -1
#        other.y_vel = -6
#        status = 2


#    # DY:  gml.instance_create(position.x, position.y, "laser_explode")

#    # DY:  global.check_water = true

#    gml.instance_destroy()

    

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

    

#func outside room():
    #    # action_kill_object
#    # Need to implement this action
    

#func step():
    #    dir = point_direction(position.x, position.y, character.position.x, character.position.y)
#    position.x += 2 * cos(degtorad(dir))
#    position.y += -2 * sin(degtorad(dir))

    
