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
	var ball2 = gml.get_instance("ball2") #--- [FLAG] may have to change for multiplayer
	var p_dummy = gml.get_instance("p_dummy")
	
	if (gml.instance_exists("p_dummy")):

		position.x = ball2.position.x + ((p_dummy.position.x-ball2.position.x)/4)*link_val
		position.y = ball2.position.y + ((p_dummy.position.y-ball2.position.y)/4)*link_val

	else:

		position.x = ball2.position.x + ((280-ball2.position.x)/4)*link_val
		position.y = ball2.position.y + ((184-ball2.position.y)/4)*link_val
