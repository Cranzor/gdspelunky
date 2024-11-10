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
	type = "parachute"
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, -6, -6, 6, 6)

	cost = 2000
	buy_message = "A PARACHUTE FOR $" + str(cost) + "."
