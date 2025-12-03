extends Item


func _ready():
	object_setup()


#--- Object functions


func create():
	# action_inherited
	super()

	# main_code
	type = "jetpack"
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, -5, -5, 5, 8)

	cost = 20000
	buy_message = "JETPACK FOR $" + str(cost) + "."
	heavy = true


func step():
	# action_inherited
	super()

	# main_code
	if (gml.instance_exists("player1")):
		var player1 = gml.get_instance("player1") #---[FLAG] may need to change this for multiplayer
		if (not player1.visible): gml.instance_destroy(self)
