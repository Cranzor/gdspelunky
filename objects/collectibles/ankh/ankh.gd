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
	type = "ankh"
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, -4, -6, 4, 8)

	cost = 50000
	buy_message = "AN ANKH FOR $" + str(cost) + "."
