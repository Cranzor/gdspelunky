
extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func collision with o_solid():
    #    if (other.type == "Arrow Trap"): with other  gml.instance_destroy() 
#    gml.instance_destroy()

    

#func step():
    #    if (dir == 0):
#        position.x -= 16
#    else:
#        position.x += 16
