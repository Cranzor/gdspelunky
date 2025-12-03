extends DrawnSprite


func _ready():
	object_setup()


#--- Object functions
func animation_end():
	gml.instance_destroy(self)


func create():
	super()
	y_vel = -0.1
	y_acc = 0.1
	image_speed = 0.4


func step():
	position.y += y_vel

	if (gml.collision_point(position.x, position.y, "solid", 0, 0)):

		gml.instance_destroy(self)
