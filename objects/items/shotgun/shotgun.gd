extends Item


func _ready():
	object_setup()


#--- Object functions


func create():
	# action_inherited
	super()

	# main_code
	type = "shotgun"
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, -4, -4, 4, 4)
	cost = 15000
	buy_message = "A SHOTGUN FOR $" + str(cost) + "."


func step():
	# action_inherited
	super()

	# main_code
	if (held):
		var player1 = gml.get_instance("player1") #---[FLAG] may need to change this for multiplayer
		if (player1.facing == 18): sprite_index = "shotgun_left"
		else: sprite_index = "shotgun_right"
