
extends Water


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func create():
    #    # main_code
#    type = "Lava"
#    spurt = false
#    spurt_time = randi_range(100,300)
#    spurt_counter = spurt_time
#    # main_code
#    image_speed
#    0.4

    

#func destroy():
    #    for i in range(0, 3):

#        gml.instance_create(position.x+randi_range(0,16), position.y+randi_range(0,16), Objects.lava_drip)

#    if (randi_range(1,6) == 1):

#        flame = gml.instance_create(position.x+8, position.y+8, Objects.flame)
#        flame.y_vel = 4


    

#func step():
    #    dist = 0
#    if (InLevel.i"level()):"

#        dist = point_distance(position.x, position.y, player1.position.x, player1.position.y)

#    if (spurt and dist < 240):

#        if (spurt_counter > 0): spurt_counter -= 1
#        else:
    
#            spurt_counter = spurt_time
#            if (randi_range(1,8) == 1): flame = gml.instance_create(position.x+8, position.y-4, Objects.magma)
#            else: flame = gml.instance_create(position.x+8, position.y-4, Objects.flame)
#            flame.y_vel = -randi_range(1,4)
