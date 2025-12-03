extends Item


func _ready():
	object_setup()


#--- Object functions


func create():
	# action_inherited
	super()

	# main_code
	type = "paste"
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, -6, -2, 6, 6)

	cost = 3000
	shop_desc = "BOMB PASTE"
	buy_message = "BOMB PASTE FOR $" + str(cost) + "."
