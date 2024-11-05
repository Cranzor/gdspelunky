
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
#    type = "bomb box"
#    PlatformEngine.make_active()
#    Collision.set_collision_bounds(-6, -2, 6, 8)
#    cost = 10000
#    shop_desc = "A box of 12 bombs"
#    buy_message = "A box of 12 bombs for $" + str\(cost) + "."
#    heavy = true
