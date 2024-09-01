extends Ladder

var burn_timer

func initial_setup():
	#--- set size
	object_size = Vector2(16, 8)

	#--- set depth
	depth = -200
	z_index = depth
	
	sprite_index = "rope"
	drawn_sprite_create()

func _ready():
	initial_setup()

func create():
	type = "rope"
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, -4, -4, 4, 4)
	burn_timer = 0

func step():
	var player1 = gml.get_instance("player1") #--- [FLAG] may have to change this if multiplayer is added
	
	if (gml.collision_point(position.x+12, position.y, "lava", 0, 0) and burn_timer == 0):

		gml.instance_create(position.x+8, position.y, "rope_burn")


	if (burn_timer > 1): burn_timer -= 1
	elif (burn_timer == 1):

		if (player1.state == 14):
		
			if (gml.collision_point(position.x+12, position.y+4, "player1", false, false)):
			
				player1.state = 16
			
		
		gml.instance_destroy(self)
