extends Item


func _ready():
	object_setup()


#--- Object functions


func create():
	# action_inherited
	super()

	# main_code
	type = "spectacles"
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, -6, -6, 6, 6)

	cost = 8000
	buy_message = "SPECTACLES FOR $" + str(cost) + "."
