
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
#    type = "Bomb Bag"
#    PlatformEngine.make_active()
#    Collision.set_collision_bounds(-6, -2, 6, 6)
#    cost = 2500
#    shop_desc = "A BAG OF 3 BOMBS"
#    buy_message = "A BAG OF 3 BOMBS FOR $" + str\(cost) + "."

    
