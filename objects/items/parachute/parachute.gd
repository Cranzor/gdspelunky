extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


func animation_end():
	if (sprite_index == "para_open"): sprite_index = "parachute"


func collision_with_item():
	if (other.x_vel > 0 or other.y_vel > 0):

		gml.instance_create(position.x, position.y, Objects.para_used, self)
		gml.instance_destroy(self)


func step():
	if (gml.instance_exists("player1")):
		var player1 = gml.get_instance("player1") #---[FLAG] may need to update this for multiplayer
		position.x = player1.position.x - 8
		position.y = player1.position.y - 16
