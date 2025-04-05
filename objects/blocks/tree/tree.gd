extends Solid


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


func create():
	# action_inherited
	super()

	# main_code
	type = "tree"
	burning = false


func destroy():
	# action_inherited
	super()

	# main_code
	if (not clean_death and not global.clean_solids):

		gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0,8), position.y+8+randi_range(0,8)-randi_range(0,8), Objects.rubble)
		gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0,8), position.y+8+randi_range(0,8)-randi_range(0,8), Objects.rubble_small)
		gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0,8), position.y+8+randi_range(0,8)-randi_range(0,8), Objects.rubble_small)
	

func step():
	if (position.x > gml.view("xview")-16 and position.x < gml.view("xview") + gml.view("wview")+16 and
		position.y > gml.view("yview")-16 and position.y < gml.view("yview") + gml.view("hview")+16):

		if (not gml.collision_point(position.x, position.y+16, "solid", 0, false)):

			gml.instance_destroy(self)
