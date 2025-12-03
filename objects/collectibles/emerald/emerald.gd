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
	type = "emerald"
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, -2, -2, 2, 2)
	y_off = 2
	alarm_0_countdown.start(20)
	value = 200
