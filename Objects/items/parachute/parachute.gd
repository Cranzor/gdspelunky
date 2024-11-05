
extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func animation_end():
    #    if (sprite_index == "para_open): sprite_index = s_parachute"

    

#func collision with o_item():
    #    if (other.x_vel > 0 or other.y_vel > 0):

#        gml.instance_create(position.x, position.y, Objects.para_used)
#        gml.instance_destroy()


    

#func step():
    #    if (gml.instance_exists("player1")):

#        position.x = player1.position.x - 8
#        position.y = player1.position.y - 16
