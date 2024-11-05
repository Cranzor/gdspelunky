
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
#    type = "paste"
#    PlatformEngine.make_active()
#    Collision.set_collision_bounds(-6, -2, 6, 6)

#    cost = 3000
#    shop_desc = "bomb paste"
#    buy_message = "bomb paste for $" + str\(cost) + "."
