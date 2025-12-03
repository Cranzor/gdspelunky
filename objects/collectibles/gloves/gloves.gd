extends Item


func _ready():
	object_setup()


#--- Object functions


func create():
	# action_inherited
	super()

	# main_code
	type = "gloves"
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, -6, -6, 6, 8)

	cost = 8000
	shop_desc = "CLIMBING GLOVES"
	buy_message = "CLIMBING GLOVES FOR $" + str(cost) + "."
