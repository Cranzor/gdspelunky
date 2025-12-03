
extends Item


func _ready():
	object_setup()


#--- Object functions


func create():
	# action_inherited
	super()

	# main_code
	type = "bomb bag"
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, -6, -2, 6, 6)
	cost = 2500
	shop_desc = "A BAG OF 3 BOMBS"
	buy_message = "A BAG OF 3 BOMBS FOR $" + str(cost) + "."
