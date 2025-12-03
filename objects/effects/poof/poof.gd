extends DrawnSprite


func _ready():
	object_setup()


#--- Object functions


func animation_end():
	gml.instance_destroy(self)


func create():
	super()
	x_vel = 0
	y_vel = 0
	image_speed = 0.4


func step():
	position.x += x_vel
	position.y += y_vel
