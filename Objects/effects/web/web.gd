
extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func collision with o_enemy():
    #    if (other.type != "Spider" and other.type != "Giant Spider"):

#        other.x_vel = 0
#        other.y_vel = 0


#    if (other.type == "Magma Man"):

#        gml.instance_destroy()


#    if (other.type == "Shopkeeper" and other.hp > 0):

#        other.status = 2


    

#func collision with o_item():
    #    if (not other.held and other.type != "Rope"):

#        other.x_vel = 0
#        other.y_vel = 0


    

#func collision with o_laser():
    #    gml.instance_destroy()

    

#func collision with o_rubble_piece():
    #    other.x_vel = 0
#    other.y_vel = 0
#    other.image_speed = 0

    

#func collision with o_slash():
    #    # action_kill_object
#    # Need to implement this action
    

#func collision with o_treasure():
    #    other.x_vel = 0
#    other.y_vel = 0

    

#func collision with o_water():
    #    gml.instance_destroy()

    

#func create():
    #    life = 12
#    dying = false

    

#func step():
    #    image_alpha = life/12
#    if (dying): life -= 0.02
#    if (life <= 1): gml.instance_destroy()
