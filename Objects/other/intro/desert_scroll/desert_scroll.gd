
extends DrawnSprite


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func create():
    #    # action_inherited
#    super()

#    # main_code
#    scroll = false

#    if (InLevel.is_room("r_credits1")): sprite_index = "desert_night"

    

#func step():
    #    if (scroll): position.x += 1

#    if (position.x > 320): gml.instance_destroy()
