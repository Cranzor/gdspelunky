
extends DrawnSprite


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions
var link_val


func create():
	type = "chain"
	link_val = 2

	

func step():
	if (not gml.instance_exists("ball")):

		gml.instance_destroy(self)

	else:
		var ball = gml.get_instance("ball")
		var player1 = gml.get_instance("player1") #---[FLAG] may have to change both for multiplayer
		position.x = ball.position.x + ((player1.position.x-ball.position.x)/4)*link_val
		position.y = ball.position.y + ((player1.position.y-ball.position.y)/4)*link_val
