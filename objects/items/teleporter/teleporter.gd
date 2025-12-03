extends Item


func _ready():
	object_setup()


#--- Object functions


func create():
	# action_inherited
	super()

	# main_code
	type = "teleporter"
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, -4, -4, 4, 4)
	cost = 10000
	buy_message = "A TELEPORTER FOR $" + str(cost) + "."
