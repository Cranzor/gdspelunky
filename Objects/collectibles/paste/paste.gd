
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
#    type = "Paste"
#    PlatformEngine.make_active(self)
#    Collision.set_collision_bounds(self, -6, -2, 6, 6)

#    cost = 3000
#    shop_desc = "BOMB PASTE"
#    buy_message = "BOMB PASTE FOR $" + str(cost) + "."
