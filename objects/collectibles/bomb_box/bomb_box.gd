extends Item


func _ready():
	object_setup()


#--- Object functions


func create():
	# action_inherited
	super()

	# main_code
	type = "bomb box"
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, -6, -2, 6, 8)
	cost = 10000
	shop_desc = "A BOX OF 12 BOMBS"
	buy_message = "A BOX OF 12 BOMBS FOR $" + str(cost) + "."
	heavy = true
