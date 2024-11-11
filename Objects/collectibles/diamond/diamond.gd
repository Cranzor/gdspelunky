extends Treasure


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


func alarm_0():
	can_collect = true


func create():
	# action_inherited
	super()

	# main_code
	type = "diamond"
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, -4, -4, 4, 4)
	can_collect = false
	alarm_0_countdown.start(20)
	value = 5000
