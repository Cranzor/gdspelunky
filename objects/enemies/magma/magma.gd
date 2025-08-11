extends Detritus


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


func alarm_0():
	gml.instance_create(position.x, position.y, Objects.magma_trail, self)
	alarm_0_countdown.start(2)
	

func animation_end():
	if (dying):

		var magma = gml.instance_create(position.x-8, position.y-8, Objects.magma_man, self)
		magma.hp = hp
		gml.instance_destroy(self)
	

func collision_with_character():
	if (other.invincible == 0):

		other.blink = 30
		other.invincible = 30
		other.stunned = true
		other.stun_timer = 20
		other.burning = 100
		other.y_vel = -4
		if (other.position.x < position.x):
			other.x_vel = -6
		else:
			other.x_vel = 6
		gml.instance_create(other.position.x, other.position.y, Objects.blood, self)
	
		if (global.plife > 0): global.plife -= 2
		Audio.play_sound(global.snd_hurt)
		Audio.play_sound(global.snd_flame)
	

func collision_with_enemy():
	if (other.type != "magma man"):

		other.y_vel = -4
		if (position.x < other.position.x):
			other.x_vel = -3
		else:
			other.x_vel = 3
		if (other.status != 98): Audio.play_sound(global.snd_flame)
	
		other.burning = 100
		other.hp -= 2
		other.status = 98
		other.counter = 50
	

func collision_with_water():
	gml.instance_create(position.x, position.y, Objects.smoke_puff, self)
	gml.instance_destroy(self)


func create():
	# action_inherited
	super()

	# variable
	image_speed = 0.3
	
	# main_code
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, -8, -8, 8, 8)
	x_vel = gml.random(4) - gml.random(4)
	y_vel = -1 - gml.random(2)
	grav = gml.rand(1,6) * 0.1
	hp = 200

	alarm_0_countdown.start(2)
	#alarm_1_countdown.start(50) #--- commenting this out as no alarm_1 exists
	

func step():
	# action_inherited
	super()

	# main_code
	if (Collision.is_collision_bottom(1, self)):

		sprite_index = "magma_man_create"
		x_vel = 0
		y_vel = 0
		dying = true
