extends DrawnSprite
class_name WhipPre


func _ready():
	object_setup()


func _physics_process(_delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


func alarm_0():
	gml.instance_destroy(self)

func create():
	super()
	type = "whip"
	damage = 1
	alarm_0_countdown.start(3)

func step():
	if (not gml.instance_exists("player1")):

		gml.instance_destroy(self)

	elif (sprite_index == "whip_pre_r"):
		var player1 = gml.get_instance("player1") #--- [FLAG] may need to be changed for multiplayer
		position.x = player1.position.x-16
		position.y = player1.position.y

	elif (sprite_index == "whip_pre_l"):
		var player1 = gml.get_instance("player1") #--- [FLAG] may need to be changed for multiplayer
		position.x = player1.position.x+16
		position.y = player1.position.y
