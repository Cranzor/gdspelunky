extends GMObject


func _ready():
	object_setup()


#--- Object functions


func collision_with_enemy():
	if (other.type != "spider" and other.type != "giant spider"):

		other.x_vel = 0
		other.y_vel = 0


	if (other.type == "magma man"):

		gml.instance_destroy(self)


	if (other.type == "shopkeeper" and other.hp > 0):

		other.status = 2


func collision_with_item():
	if (not other.held and other.type != "rope"):

		other.x_vel = 0
		other.y_vel = 0


func collision_with_laser():
	gml.instance_destroy(self)


func collision_with_rubble_piece():
	other.x_vel = 0
	other.y_vel = 0
	other.image_speed = 0


func collision_with_slash():
	# action_kill_object
	gml.instance_destroy(self)


func collision_with_treasure():
	other.x_vel = 0
	other.y_vel = 0


func collision_with_water():
	gml.instance_destroy(self)


func create():
	life = 12
	dying = false


func step():
	image_alpha = life/float(12)
	if (dying): life -= 0.02
	if (life <= 1): gml.instance_destroy(self)
