
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
    

#func create():
    #    # action_inherited
#    super()

#    # main_code
#    y_vel = 0
#    y_acc = 0.6
#    image_speed = 0.4
#    dir = point_direction(position.x, position.y, olmec.position.x+32, olmec.position.y+16)

    

#func step():
    #    position.x += 2 * cos(degtorad(dir))
#    position.y += -2 * sin(degtorad(dir))
