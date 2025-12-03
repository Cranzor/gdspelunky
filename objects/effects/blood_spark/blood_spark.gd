extends DrawnSprite


func _ready():
	object_setup()


#--- Object functions


func animation_end():
	# action_kill_object
	gml.instance_destroy(self)


func create():
	# action_inherited
	super()

	# main_code
	y_vel = -randi_range(1,3)*0.2
	y_acc = 0.1
	image_speed = 0.5


func step():
	position.y += y_vel
