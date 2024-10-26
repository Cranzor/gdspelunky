extends DrawnSprite #--- no parent, but adding DrawnSprite to get smooth movement function

func _ready():
	object_setup()

func _physics_process(_delta):
	object_tick()

func _process(delta):
	object_process(delta)

#--- Object functions
func create():
	status = 0
	x_vel = 0
	y_vel = 0
	y_acc = 0

func step():
	#y_vel += y_acc
	#if (y_vel < 4): y_vel = 4
	position.x += x_vel
	position.y += y_vel

	if (status == 0):

		if (position.x < gml.view("xview") + 320 + 16):
		
			status = 1
			x_vel = -randf_range(0, (3)) - 2
			y_vel = -randf_range(0, 1)
			y_acc = -randf_range(0, (1)) * 0.2
			Audio.play_sound(global.snd_bat)
