extends WhipPre


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


func alarm_0():
	gml.instance_destroy(self)
	

func create():
	# action_inherited
	super()

	# main_code
	type = "mattock"
	damage = 2


func step():
	if (not gml.instance_exists("player1")):

		gml.instance_destroy(self)

	elif (sprite_index == "mattock_pre_r"):
		var player1 = gml.get_instance("player1") #---[FLAG] may have to change for multiplayer
		position.x = player1.position.x-16
		position.y = player1.position.y

	elif (sprite_index == "mattock_pre_l"):
		var player1 = gml.get_instance("player1") #---[FLAG] may have to change for multiplayer
		position.x = player1.position.x+16
		position.y = player1.position.y
