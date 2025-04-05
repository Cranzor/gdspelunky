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
	y_vel = -1
	image_speed = 0.8


func step():
	position.y += y_vel

	if (gml.collision_point(position.x, position.y, "solid", 0, 0) or not gml.collision_rectangle(position.x-1, position.y-8, position.x+1,  position.y+8, "rope", 0, null)):

		gml.instance_destroy(self)


	if (gml.collision_point(position.x, position.y, "rope", 0, 0)):

		var rope = gml.instance_nearest(position.x, position.y, "rope")
		rope.burn_timer = 1
