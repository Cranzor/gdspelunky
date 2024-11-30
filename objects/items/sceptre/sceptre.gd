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
	type = "sceptre"
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, -4, -4, 4, 4)
	cost = 0
	buy_message = "I SHOULDN'T BE SELLING THIS!"


func step():
	# action_inherited
	super()

	# main_code
	if (held):
		var player1 = gml.get_instance("player1") #---[FLAG] may need to change this for multiplayer
		if (player1.facing == 18): sprite_index = "sceptre_left"
		else: sprite_index = "sceptre_right"
