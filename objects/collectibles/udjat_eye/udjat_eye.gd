extends Item


func _ready():
	object_setup()


#--- Object functions


func create():
	# action_inherited
	super()

	# main_code
	type = "udjat eye"
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, -6, -6, 6, 6)

	cost = 0
	buy_message = "I SHOULDN'T BE SELLING THIS!"
