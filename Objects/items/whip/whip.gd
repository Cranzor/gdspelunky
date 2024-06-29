extends DrawnSprite

func initial_setup():
	#--- set size
	object_size = Vector2(16, 16)

	#--- set depth
	depth = -1
	z_index = depth
	
	$Node/AnimatedSprite2D.play("whip_right")

func _process(delta):
	smooth_animated_sprite_movement(x_velocity, y_velocity, delta)

func _ready():
	initial_setup()
	create()

func _physics_process(delta):
	smooth_motion_step_begin()
	step()
	smooth_motion_step_end()

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
