extends MovingSolid


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
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, 1, 0, 15, 32)
	invincible = false
	viscid_top = 1

	x_vel = 0
	y_vel = 0
	my_grav = 1

	counter = 0

	status = 0
	IDLE = 0
	DROP = 1
	WAIT = 2
	RETURN = 3


func destroy():
		var rubble = gml.instance_create(position.x+8+randi_range(0,4)-randi_range(0,4), position.y+8+randi_range(0,8)-randi_range(0,8), Objects.rubble_small, self)
		rubble.sprite_index = "rubble_tan_small"
		rubble = gml.instance_create(position.x+8+randi_range(0,4)-randi_range(0,4), position.y+8+randi_range(0,8)-randi_range(0,8), Objects.rubble_small, self)
		rubble.sprite_index = "rubble_tan_small"


func step():
	var character = gml.get_instance("character") #---[FLAG] may need to change this for multiplayer
	dist = gml.distance_to_object(character, self)
	if (status == IDLE):

		# DY:  nothing
		pass

	elif (status == DROP):

		y_vel += my_grav
		if (y_vel > 6): y_vel = 6
		if (Collision.is_collision_bottom(1, self)):
	
			status = WAIT
			y_vel = 0
			counter = 100
			depth = 100
	

	elif (status == WAIT):

		if (Collision.is_collision_bottom(1, self)): position.y -= 1
