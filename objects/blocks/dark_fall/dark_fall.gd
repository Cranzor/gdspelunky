extends MovingSolid


func _ready():
	object_setup()


#--- Object functions
var time_fall
var time_fall_max


func collision_with_solid():
	Audio.play_sound(global.snd_break)
	gml.instance_create(position.x+8, position.y+8, Objects.smoke_puff, self)
	for i in range(0, 3):

		var obj = gml.instance_create(position.x+randi_range(2,14), position.y+randi_range(2,14), Objects.rubble_dark, self)
		obj.x_vel = randi_range(1,3)-randi_range(1,3)
		obj.y_vel = -randi_range(0,3)


	gml.instance_destroy(self)


func create():
	# action_inherited
	super()

	# main_code
	viscid_top = 1
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, 0, 0, 16, 8)

	invincible = false
	grav = 1
	time_fall = 20
	time_fall_max = 20
	

func step():
	# action_inherited
	#super() #--- commenting out as this seems to do nothing, since drawn_sprite has no step function

	# main_code
	if Collision.is_collision_character_top(1, null, self):

		time_fall -= 1
		if (time_fall <= 0): y_acc = grav

	elif (time_fall < time_fall_max): time_fall += 1

	if (y_vel > 10): y_vel = 10
