
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
#    type = "Mitt"
#    PlatformEngine.make_active(self)
#    Collision.set_collision_bounds(self, -6, -6, 6, 8)

#    cost = 4000
#    shop_desc = "PITCHER'S MITT"
#    buy_message = "PITCHER'S MITT FOR $" + str(cost) + "."
