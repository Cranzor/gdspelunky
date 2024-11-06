extends Treasure


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


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
