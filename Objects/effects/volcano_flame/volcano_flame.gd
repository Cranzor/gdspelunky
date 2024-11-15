
extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func alarm 0():
    #    # DY: gml.instance_create(position.x, position.y, Objects.flame_trail)
#    # DY: alarm_0(2)

    

#func create():
    #    # main_code
#    image_speed
#    0.3
#    # main_code
#    x_vel = random(4) - random(4)
#    y_vel = -1 - random(2)
#    grav = randi_range(1,6) * 0.1

#    alarm_0(2)
#    alarm_1(50)


    

#func outside room():
    #    gml.instance_destroy(self)

    

#func step():
    #    position.x += x_vel
#    position.y += y_vel

#    if (y_vel < 6): y_vel += grav
