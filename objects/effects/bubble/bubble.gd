extends DrawnSprite


func _ready():
	object_setup()


#--- Object functions


func animation_end():
	gml.instance_destroy(self)


func create():
	# action_inherited
	super()

	# main_code
	y_vel = -randi_range(1,3)*0.1
	y_acc = 0.1
	image_speed = 0.2


func step():
	position.y += y_vel

	if (not gml.collision_point(position.x, position.y, "water", 0, 0)):

		gml.instance_destroy(self)
