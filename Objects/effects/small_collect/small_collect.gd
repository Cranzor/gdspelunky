
extends DrawnSprite


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func alarm 0():
    #    # action_kill_object
#    gml.instance_destroy(self)
    

#func create():
    #    # action_inherited
#    super()

#    # main_code
#    alarm_0(30)
#    image_speed = 0.4

    

#func step():
    #    position.y -= 1
#    position.x = ceil(position.x)
#    position.y = ceil(position.y)
