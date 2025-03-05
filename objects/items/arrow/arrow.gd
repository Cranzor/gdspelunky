extends Item


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


func alarm_1():
	gml.instance_create(position.x, position.y, Objects.explosion)
	if (global.graphics_high):

		MiscScripts.scr_create_flame(position.x, position.y, 3)


	if (held):
		var character = gml.get_instance("character") #---[FLAG] may need to change this for multiplayer
		if (character): character.hold_item = null

	gml.instance_destroy(self)


func alarm_2():
	safe = false


func create():
	# action_inherited
	super()

	# main_code
	type = "arrow"
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, -4, -4, 4, 4)
	my_grav = 0.2


func draw():
	gml.draw_sprite_ext(sprite_index, image_index, position.x, position.y, 1, 1, image_angle, gml.c_white, 1, self)
	

func step():
	# action_inherited
	super()

	# main_code
	var direction #--- making declaration here
	if (x_vel > 0 and y_vel < 0):

		direction = gml.radtodeg(gml.arctan(-y_vel/x_vel))

	elif (x_vel < 0 and y_vel < 0):

		direction = 180 - gml.radtodeg(gml.arctan(-y_vel/-x_vel))

	elif (x_vel > 0 and y_vel > 0):

		direction = gml.radtodeg(gml.arctan(y_vel/x_vel))

	elif (x_vel < 0 and y_vel > 0):

		direction = 180 + gml.radtodeg(gml.arctan(y_vel/-x_vel))

	elif (x_vel < 0): direction = 180
	elif (not stuck): direction = 0

	image_angle = direction

	# DY:  ensure the arrow does not shoot through the target in the Moon challenge
	if (InLevel.is_room("moon")):

		if (gml.instance_exists("target")):
			var target = gml.get_instance("target")
			if (position.x > target.position.x and position.y > target.position.y-16 and position.y < target.position.y+16 and
				gml.distance_to_object(target, self) < 4):
		
				position.x = target.position.x+4
				x_vel = 0
				y_vel = 0
