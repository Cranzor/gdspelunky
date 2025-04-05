extends Solid


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions
var thickness


func create():
	# action_inherited
	super()

	# main_code
	thickness = 60


func step():
	if (gml.collision_rectangle(position.x, position.y-1, position.x+16,  position.y+1, "player1", 0, null)):

		thickness -= 2
		if (randi_range(1,100) == 1): gml.instance_create(position.x+randi_range(0,16), position.y+9, Objects.drip)


	if (thickness > 50): sprite_index = "thin_ice1"
	elif (thickness > 40): sprite_index = "thin_ice2"
	elif (thickness > 30): sprite_index = "thin_ice3"
	elif (thickness > 20): sprite_index = "thin_ice4"
	elif (thickness > 10): sprite_index = "thin_ice5"
	elif (thickness > 0): sprite_index = "thin_ice6"
	else: gml.instance_destroy(self)
