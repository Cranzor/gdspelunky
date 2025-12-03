extends Item


func _ready():
	object_setup()


#--- Object functions


func create():
	# action_inherited
	super()

	# main_code
	type = "web cannon"
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, -4, -4, 4, 4)
	cost = 2000
	buy_message = "A WEB CANNON FOR $" + str(cost) + "."


func step():
	# action_inherited
	super()

	# main_code
	if (held):
		var player1 = gml.get_instance("player1") #---[FLAG] may need to change this for multiplayer
		if (player1.facing == 18): sprite_index = "web_cannon_l"
		else: sprite_index = "web_cannon_r"
