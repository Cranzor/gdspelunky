extends DrawnSprite

func _ready():
	object_setup()

func _physics_process(_delta):
	object_tick()

func _process(delta):
	object_process(delta)

#--- Object functions
func create():
	drawn_sprite_create()
	type = "whip"
	damage = 1
	puncture = false

func step():
	var player1 = gml.get_instance("player1") #---[FLAG] may need to change this for multiplayer
	
	if (not gml.instance_exists("player1")):

			gml.instance_destroy(self)
			
	elif (sprite_index == "whip_right"):

		position.x = player1.position.x+16
		position.y = player1.position.y

	elif (sprite_index == "whip_left"):

		position.x = player1.position.x-16
		position.y = player1.position.y
