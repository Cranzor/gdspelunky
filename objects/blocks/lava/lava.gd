extends Water


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions
var spurt
var spurt_time
var spurt_counter


func create():
	# main_code
	type = "lava"
	spurt = false
	spurt_time = gml.rand(100,300)
	spurt_counter = spurt_time
	# main_code
	image_speed = 0.4


func destroy():
	for i in range(0, 3):

		gml.instance_create(position.x+gml.rand(0,16), position.y+gml.rand(0,16), Objects.lava_drip)

	if (gml.rand(1,6) == 1):

		var flame = gml.instance_create(position.x+8, position.y+8, Objects.flame)
		flame.y_vel = 4


func step():
	dist = 0
	if (InLevel.is_level()):
		var player1 = gml.get_instance("player1") #---[FLAG] may have to change this for multiplayer
		dist = gml.point_distance(position.x, position.y, player1.position.x, player1.position.y)

	if (spurt and dist < 240):

		if (spurt_counter > 0): spurt_counter -= 1
		else:
	
			spurt_counter = spurt_time
			var flame
			if (gml.rand(1,8) == 1): flame = gml.instance_create(position.x+8, position.y-4, Objects.magma)
			else: flame = gml.instance_create(position.x+8, position.y-4, Objects.flame)
			flame.y_vel = -gml.rand(1,4)
