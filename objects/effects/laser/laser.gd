extends DrawnSprite


func _ready():
	object_setup()


#--- Object functions


func alarm_0():
	gml.instance_create(position.x, position.y, Objects.laser_trail, self)
	alarm_0_countdown.start(1)


func collision_with_damsel():
	if (not other.invincible):

		other.hp -= 3
		other.x_vel = gml.rand(0,2)-gml.rand(1,2)
		other.x_vel = -1
		other.y_vel = -6
		status = 2

		gml.instance_create(position.x, position.y, Objects.laser_explode, self)
		gml.instance_destroy(self)
	

func collision_with_enemy():
	if (other.type != "ufo" and other.invincible == 0):

		other.hp -= 3
		other.x_vel = gml.rand(0,2)-gml.rand(1,2)
		other.x_vel = -1
		other.y_vel = -6
		gml.instance_create(position.x, position.y, Objects.laser_explode, self)
		# DY:  global.check_water = true
		gml.instance_destroy(self)


func collision_with_solid():

	if (not other.invincible):

		if (gml.collision_point(other.position.x, other.position.y, "gold", 0, 0)):
	
			var gold = gml.instance_place(other.position.x, other.position.y, "gold", other)
			gml.instance_destroy(gold)
	
		if (gml.collision_point(other.position.x, other.position.y, "gold_big", 0, 0)):
	
			var gold = gml.instance_place(other.position.x, other.position.y, "gold_big", other)
			gml.instance_destroy(gold)
	
		gml.instance_destroy(other)


	#var tile = gml.tile_layer_find(3, other.position.x, other.position.y-16) #--- commenting out as relevant blocks now have CaveTop component
	#if (tile): gml.tile_delete(tile)


	gml.instance_create(position.x, position.y, Objects.laser_explode, self)
	# DY:  global.check_water = true
	gml.instance_destroy(self)


func create():
	# action_inherited
	super()

	# main_code
	y_vel = 0
	y_acc = 0.6
	alarm_0_countdown.start(1)


func outside_room():
	# action_kill_object
	gml.instance_destroy(self)
	

func step():
	position.y += y_vel
	y_vel += y_acc
	if (y_vel > 4): y_vel = 0

	#/*if (gml.collision_point(position.x, position.y, "dark", 0, 0) or:
		#gml.collision_point(position.x, position.y, "dark_fall", 0, 0) or
		#gml.collision_point(position.x, position.y, "ice", 0, 0))
#
		#gml.instance_destroy(self)
	#*/
