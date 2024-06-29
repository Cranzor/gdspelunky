extends DrawnSprite

@onready var alarm_0_node = $Alarm0

func initial_setup():
	#--- set size
	object_size = Vector2(16, 16)

	#--- set depth
	depth = -1
	z_index = depth
	
	$AnimatedSprite2D.play("whip_pre_r")
	#drawn_sprite_create()
	#drawn_sprite_step()

func _ready():
	initial_setup()
	create()

func _physics_process(delta):
	step()

func alarm_0():
	gml.instance_destroy(self)

func create():
	drawn_sprite_create()
	type = "whip"
	damage = 1
	alarm_0_node.start(3)

func step():
	var player1 = gml.get_instance("player1") #--- [FLAG] may need to be changed for multiplayer
	
	if (not gml.instance_exists("player1")):

		gml.instance_destroy(self)

	elif (sprite_index == "whip_pre_r"):

		position.x = player1.position.x-16
		position.y = player1.position.y

	elif (sprite_index == "whip_pre_l"):

		position.x = player1.position.x+16
		position.y = player1.position.y

func _on_alarm_0_timeout():
	alarm_0()
