extends DrawnSprite


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


func alarm_0():
	invincible = false


func alarm_1():
	if (gml.instance_number("yellow_trail") < 12): gml.instance_create(position.x, position.y, Objects.yellow_trail)
	alarm_1_countdown.start(4)


func animation_end():
	if (sprite_index == "web_create"):

		var obj = gml.instance_create(position.x-8, position.y-8, Objects.web)
		obj.dying = true
		gml.instance_destroy(self)
	

func collision_with_enemy():
	if (other.type != "giant spider"):

		sprite_index = "web_create"
		x_vel = 0
		y_vel = 0
	

func collision_with_item():
	sprite_index = "web_create"
	x_vel = 0
	y_vel = 0


func collision_with_solid():
	sprite_index = "web_create"
	x_vel = 0
	y_vel = 0


func collision_with_water():
	sprite_index = "web_create"
	x_vel = 0
	y_vel = 0


func collision_with_web():
	sprite_index = "web_create"
	x_vel = 0
	y_vel = 0


func create():
	# action_inherited
	super()

	# main_code
	y_vel = -1 * (gml.random(3)+1)
	x_vel = gml.rand(1,3)
	if (gml.rand(1,2) == 1): x_vel *= -1
	life = gml.rand(20,100)
	invincible = true
	# DY: alarm_0(40)
	# DY: alarm_1(1)


func outside_room():
	# action_kill_object
	gml.instance_destroy(self)
	

func step():
	position.x += x_vel
	position.y += y_vel

	if (y_vel < 6): y_vel += 0.2
	# DY:  if (y_vel > 0): y_vel = 0

	if (life > 0): life -= 1
	else:

		sprite_index = "web_create"


	#/*if (gml.collision_point(position.x, position.y, "dark", 0, false) or:
		#gml.collision_point(position.x, position.y, "dark_fall", 0, false) or
		#gml.collision_point(position.x, position.y, "ice", 0, false))
#
		#gml.instance_destroy(self)
	#*/
