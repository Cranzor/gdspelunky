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
	Collision.set_collision_bounds(self, -4, -6, 4, 6)
