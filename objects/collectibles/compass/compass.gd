extends Item


func _ready():
	object_setup()


#--- Object functions


func create():
	# action_inherited
	super()

	# main_code
	type = "compass"
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, -6, -6, 6, 6)

	cost = 3000
	buy_message = "A COMPASS FOR $" + str(cost) + "."
