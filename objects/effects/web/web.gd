
extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func collision_with_enemy():
#    if (other.type != "Spider" and other.type != "Giant Spider"):

#        other.x_vel = 0
#        other.y_vel = 0


#    if (other.type == "Magma Man"):

#        gml.instance_destroy(self)


#    if (other.type == "Shopkeeper" and other.hp > 0):

#        other.status = 2


    

#func collision_with_item():
#    if (not other.held and other.type != "Rope"):

#        other.x_vel = 0
#        other.y_vel = 0


    

#func collision_with_laser():
#    gml.instance_destroy(self)

    

#func collision_with_rubble_piece():
#    other.x_vel = 0
#    other.y_vel = 0
#    other.image_speed = 0

    

#func collision_with_slash():
#    # action_kill_object
#    gml.instance_destroy(self)
    

#func collision_with_treasure():
#    other.x_vel = 0
#    other.y_vel = 0

    

#func collision_with_water():
#    gml.instance_destroy(self)

    

#func create():
#    life = 12
#    dying = false

    

#func step():
#    image_alpha = life/12
#    if (dying): life -= 0.02
#    if (life <= 1): gml.instance_destroy(self)
