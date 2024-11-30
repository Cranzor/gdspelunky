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
	type = "spring shoes"
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, -6, -6, 6, 6)
	cost = 5000
	shop_desc = "SPRINGY SHOES"
	buy_message = "SPRINGY SHOES FOR $" + str(cost) + "."
