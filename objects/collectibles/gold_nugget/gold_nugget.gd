extends Treasure


func _ready():
	object_setup()


#--- Object functions


func alarm_0():
	can_collect = true


func create():
	# action_inherited
	super()

	# main_code
	type = "gold nugget"
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, -4, -4, 4, 4)
	value = 500
	can_collect = true
