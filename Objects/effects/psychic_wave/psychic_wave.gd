extends DrawnSprite


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


func animation_end():
	# action_kill_object
	gml.instance_destroy(self)
	

func collision_with_damsel():
	if (not other.invincible):

		other.hp -= 3
		other.x_vel = gml.rand(0,2)-gml.rand(1,2)
		other.x_vel = -1
		other.y_vel = -6
		status = 2


	# DY:  gml.instance_create(position.x, position.y, Objects.laser_explode)

	# DY:  global.check_water = true

	gml.instance_destroy(self)


func collision_with_enemy():
	if (other.type != "Alien Boss" and other.invincible == 0):

		other.hp -= 3
		other.x_vel = gml.rand(0,2)-gml.rand(1,2)
		other.x_vel = -1
		other.y_vel = -6


func create():
	# action_inherited
	super()

	# main_code
	y_vel = 0
	y_acc = 0.6
	image_speed = 0.25


func outside_room():
	# action_kill_object
	gml.instance_destroy(self)
	

func step():
	var character = gml.get_instance("character") #---[FLAG] may have to change this for multiplayer
	dir = gml.point_direction(position.x, position.y, character.position.x, character.position.y)
	position.x += 2 * cos(gml.degtorad(dir))
	position.y += -2 * sin(gml.degtorad(dir))
