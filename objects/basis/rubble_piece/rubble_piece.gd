extends DrawnSprite


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
	type = "none"
	x_vel = 0
	y_vel = 0
	y_acc = 0.6


func step():
	position.x += x_vel
	position.y += y_vel
	y_vel += y_acc

	if (gml.collision_point(position.x, position.y, "water_swim", 0, false)):

		if (type == "drip"): gml.instance_destroy(self)
		elif (type == "leaf"):
			y_vel = 0
			sprite_index = "leaf_still"
		else: y_vel = 0.2

	elif (gml.collision_point(position.x, position.y, "lava", 0, false)):

		gml.instance_destroy(self)


	if (gml.collision_point(position.x, position.y, "solid", 0, false)):

		gml.instance_destroy(self)


	if (gml.view_enabled):

		if (position.x < gml.view("xview") - 32 or
			position.x > gml.view("xview") + gml.view("wview") + 32 or
			position.y < gml.view("yview") - 32 or
			position.y > gml.view("yview") + gml.view("hview") + 32):
	
			gml.instance_destroy(self)
