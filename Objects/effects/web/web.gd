
extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func collision with o_enemy():
    #    if (other.type != "spider" and other.type != "giant spider"):

#        other.x_vel = 0
#        other.y_vel = 0


#    if (other.type == "magma man"):

#        gml.instance_destroy()


#    if (other.type == "shopkeeper" and other.hp > 0):

#        other.status = 2


    

#func collision with o_item():
    #    if (not other.held and other.type != "rope"):

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
#    # need to implement this action
    

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
