
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
#    # need to implement this action
    

#func create():
    #    # action_inherited
#    super()

#    # main_code
#    y_vel = -randi_range(1,3)*0.2
#    y_acc = 0.1
#    image_speed = 0.5

    

#func step():
    #    position.y += y_vel
