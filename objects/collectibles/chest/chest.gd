extends Item


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
	type = "chest"
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, -6, 0, 6, 8)

	heavy = true

	y_vel = 0
	y_acc = 0.2


func step():
	# action_inherited
	super()
