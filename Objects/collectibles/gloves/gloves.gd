
extends Item


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
#    type = "Gloves"
#    PlatformEngine.make_active()
#    Collision.set_collision_bounds(-6, -6, 6, 8)

#    cost = 8000
#    shop_desc = "CLIMBING GLOVES"
#    buy_message = "CLIMBING GLOVES FOR $" + str\(cost) + "."

    
