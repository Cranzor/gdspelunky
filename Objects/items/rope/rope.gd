extends Ladder

func _ready():
	object_setup()

func _physics_process(delta):
	object_tick()

func _process(delta):
	object_process()

#--- Object functions
var burn_timer

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
