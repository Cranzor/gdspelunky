extends Detritus


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


func alarm_0():
	if (gml.instance_number("flame_trail") < 12): gml.instance_create(position.x, position.y, Objects.flame_trail)
	alarm_0_countdown.start(2)


func collision_with_water():
	gml.instance_create(position.x, position.y, Objects.smoke_puff)
	gml.instance_destroy(self)


func create():
	# action_inherited
	super()

	# main_code
	image_speed
	0.3
	# main_code
	x_vel = gml.random(4) - gml.random(4)
	y_vel = -1 - gml.random(2)
	grav = gml.rand(1,6) * 0.1

	alarm_0_countdown.start(2)
	# alarm_1_countdown.start(50) #--- commenting this out as flame has no alarm_1


func destroy():
	gml.instance_create(position.x, position.y, Objects.smoke_puff)


func step():
	# action_inherited
	super()

	# main_code
	if (y_vel > 6): gml.instance_destroy(self)

	if (Collision.is_collision_bottom(1, self)):

		if (life > 20): life = 20
