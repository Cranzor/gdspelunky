
extends MovingSolid


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


func animation_end():
	if (sprite_index == "ceiling_trap_s"): sprite_index = "ceiling_trap"


func create():
	# action_inherited
	super()

	# main_code
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, 0, 0, 16, 16)
	invincible = false
	viscid_top = 1
	image_speed = 0.4

	x_vel = 0
	y_vel = 0
	my_grav = 1

	counter = 3

	status = 0
	IDLE = 0
	DROP = 1
	WAIT = 2
	RETURN = 3


func destroy():
	if (not clean_death and not global.clean_solids):

		var rubble = gml.instance_create(position.x+8+gml.rand(0,8)-gml.rand(0,8), position.y+8+gml.rand(0,8)-gml.rand(0,8), Objects.rubble, self)
		rubble.sprite_index = "rubble_tan"
		rubble = gml.instance_create(position.x+8+gml.rand(0,8)-gml.rand(0,8), position.y+8+gml.rand(0,8)-gml.rand(0,8), Objects.rubble_small, self)
		rubble.sprite_index = "rubble_tan_small"
		rubble = gml.instance_create(position.x+8+gml.rand(0,8)-gml.rand(0,8), position.y+8+gml.rand(0,8)-gml.rand(0,8), Objects.rubble_small, self)
		rubble.sprite_index = "rubble_tan_small"


	

func step():
	if (status == IDLE):

		# DY:  nothing
		pass

	elif (status == DROP):

		if (counter > 0): counter -= 1
		else:
	
			counter = 3
			position.y += 1
	
		y_vel = 0
		if (gml.collision_point(position.x+8, position.y+17, "solid", 0, 0)): status = WAIT
		if (sprite_index == "block"): sprite_index = "ceiling_trap_s"

	elif (status == WAIT):

		y_vel = 0
		if (Collision.is_collision_bottom(1, self)): position.y -= 1
