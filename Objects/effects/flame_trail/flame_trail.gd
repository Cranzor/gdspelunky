
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
#    image_speed
#    0.4
