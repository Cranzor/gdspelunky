extends Detritus


func _ready():
	object_setup()


#--- Object functions


func animation_end():
	if (dying): gml.instance_destroy(self)


func create():
	# action_inherited
	super()

	# variable
	image_speed = 0.3
	
	# main_code
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, -4, -4, 4, 4)
	x_vel = gml.random(4) - gml.random(4)
	y_vel = -1 - gml.random(2)
	grav = randi_range(1,6) * 0.1
	

func step():
	# action_inherited
	super()

	# main_code
	if (Collision.is_collision_bottom(1, self)):

		sprite_index = "smoke_puff"
		dying = true
