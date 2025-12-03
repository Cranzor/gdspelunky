extends Treasure


func _ready():
	object_setup()


#--- Object functions


func create():
	# action_inherited
	super()

	# main_code
	type = "gold chunk"
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, -2, -2, 2, 2)
	y_off = 2
	value = 100
	can_collect = true
