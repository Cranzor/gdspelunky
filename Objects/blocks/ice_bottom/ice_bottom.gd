
extends DrawnSprite


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func alarm 0():
    #    gml.instance_create(position.x+8, position.y+4, "drip")
#    alarm_0()randi_range(20,400)

    

#func create():
    #    # action_inherited
#    super()

#    # main_code
#    alarm_0()randi_range(20,400)

    

#func step():
    #    # action_inherited
#    super()

#    # main_code
#    if (not gml.collision_point(position.x+8, position.y-1, "solid", 0, 0)): gml.instance_destroy()

    
