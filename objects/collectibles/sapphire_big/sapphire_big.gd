extends Treasure


func _ready():
	object_setup()


#--- Object functions


func alarm_0():
	can_collect = true


func collision_with_ghost():
	gml.instance_create(position.x, position.y, Objects.diamond, self)
	gml.instance_destroy(self)


func create():
	# action_inherited
	super()

	# main_code
	type = "big sapphire"
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, -4, -4, 4, 4)
	can_collect = false
	alarm_0_countdown.start(20)
	value = 1200
