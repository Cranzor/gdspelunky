extends DrawnSprite


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions
var open


func create():
	# action_inherited
	super()

	# main_code
	open = false


func step():
	var player1 = gml.get_instance("player1") #---[FLAG] may need to change this for multiplayer
	if (gml.instance_exists("transition") and not gml.instance_exists("p_dummy")):

		gml.instance_destroy(self)

	elif (gml.instance_exists("p_dummy")):
		var p_dummy = gml.get_instance("p_dummy")
		if (p_dummy.sprite_index == "p_exit" or p_dummy.sprite_index == "damsel_exit" or p_dummy.sprite_index == "tunnel_exit"):
	
			position.x = p_dummy.position.x
			position.y = p_dummy.position.y+4
			sprite_index = "cape_back"
			depth = 0
	
		else:
	
			position.x = p_dummy.position.x - 4
			position.y = p_dummy.position.y - 2
			if (p_dummy.sprite_index == "run_left" or p_dummy.sprite_index == "damsel_run_l" or p_dummy.sprite_index == "tunnel_run_l"): sprite_index = "cape_right"
			else: sprite_index = "cape_dr"
			depth = 100
	

	elif ((player1.state == 14 or (player1.sprite_index == "p_exit" or player1.sprite_index == "damsel_exit" or player1.sprite_index == "tunnel_exit")) and not player1.whipping):

		position.x = player1.position.x
		position.y = player1.position.y+4
		sprite_index = "cape_back"
		depth = 0

	elif (player1.facing == 19):

		position.x = player1.position.x - 4
		position.y = player1.position.y - 2
		if (self.open): sprite_index = "cape_ur" #--- changed cape to self as there's no point in grabbing a reference when we already have it
		elif (abs(player1.x_vel) > 0): sprite_index = "cape_right"
		else: sprite_index = "cape_dr"
		depth = 100

	else:

		position.x = player1.position.x + 4
		position.y = player1.position.y - 2
		if (self.open): sprite_index = "cape_ul" #--- changed cape to self as there's no point in grabbing a reference when we already have it
		elif (abs(player1.x_vel) > 0): sprite_index = "cape_left"
		else: sprite_index = "cape_dl"
		depth = 100


	if (gml.instance_exists("player1")):
		if (not player1.visible): gml.instance_destroy(self)
