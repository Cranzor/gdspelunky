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
	y_vel = 0
	y_acc = 0.2


func step():
	if (not gml.collision_point(position.x+8, position.y+16, "solid", 0, 0)):

		position.y += y_vel
		y_vel += y_acc


	if (gml.collision_point(position.x+8, position.y+15, "solid", 0, 0)):

		position.y -= 1
