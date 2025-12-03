extends Item


func _ready():
	object_setup()


#--- Object functions


func create():
	# action_inherited
	super()

	# main_code
	type = "mattock head"
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, -6, -4, 6, 4)
