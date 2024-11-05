
extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func create():
    #    scroll = false
#    if (room_get_name(room) == "r_credits1"):
#        sprite_index = "desert_top_night"

    

#func step():
    #    if (scroll): position.x += 1

#    if (position.x > 320): gml.instance_destroy()
