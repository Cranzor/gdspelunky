extends Treasure


func _ready():
	object_setup()


#--- Object functions


func create():
	# action_inherited
	super()

	# main_code
	type = "gold bars"
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, -7, -8, 7, 8)
	value = 1000
	can_collect = true
	y_off = 8
