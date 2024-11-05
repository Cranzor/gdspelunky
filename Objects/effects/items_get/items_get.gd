
extends DrawnSprite


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func alarm 0():
    #    gml.instance_destroy()

    

#func create():
    #    # action_inherited
#    super()

#    # main_code
#    y_vel = 0.1
#    y_acc = 0.1
#    image_speed = 0.8
#    alarm_0(40)

    

#func step():
    #    position.y -= y_vel
#    position.x = ceil(position.x)
#    position.y = ceil(position.y)

    
