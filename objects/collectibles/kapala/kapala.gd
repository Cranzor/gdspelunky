extends Item


func _ready():
	object_setup()


#--- Object functions


func create():
	# action_inherited
	super()

	# main_code
	type = "kapala"
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, -6, -6, 6, 8)

	cost = 999999
	buy_message = "I SHOULDN'T BE SELLING THIS!"
