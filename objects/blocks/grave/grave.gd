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
	var n = randi_range(1,5)
	match (n):

		1:  sprite_index = "grave2"
		2:  sprite_index = "grave3"
		3:  sprite_index = "grave4"
		4:  sprite_index = "grave5"
		5:  sprite_index = "grave6"


func destroy():
	var rubble = gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0,8), position.y+8+randi_range(0,8)-randi_range(0,8), Objects.rubble, self)
	rubble.sprite_index = "rubble_tan"
	rubble = gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0,8), position.y+8+randi_range(0,8)-randi_range(0,8), Objects.rubble_small, self)
	rubble.sprite_index = "rubble_tan_small"
	rubble = gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0,8), position.y+8+randi_range(0,8)-randi_range(0,8), Objects.rubble_small, self)
	rubble.sprite_index = "rubble_tan_small"
	

func step():
	if ((position.x > gml.view("xview")-20 and position.x < gml.view("xview") + gml.view("wview")+4 and
		position.y > gml.view("yview")-20 and position.y < gml.view("yview") + gml.view("hview")+4)):

		if (not gml.collision_point(position.x, position.y+16, "solid", 0, 0)): gml.instance_destroy(self)
