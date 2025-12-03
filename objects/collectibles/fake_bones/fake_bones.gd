extends DrawnSprite


func _ready():
	object_setup()


#--- Object functions


func animation_end():
	if (sprite_index == "skeleton_create_l"):

		gml.instance_create(position.x, position.y, Objects.skeleton, self)
		gml.instance_destroy(self)


func create():
	# action_inherited
	super()

	# main_code
	y_vel = 0
	y_acc = 0.2


func step():
	if ((position.x > gml.view("xview")-16 and position.x < gml.view("xview") + gml.view("wview") and
		position.y > gml.view("yview")-16 and position.y < gml.view("yview") + gml.view("hview"))):

		if (not gml.collision_point(position.x+8, position.y+16, "solid", 0, 0)):

			position.y += y_vel
			y_vel += y_acc


		if (gml.collision_point(position.x+8, position.y+15, "solid", 0, 0)):

			position.y -= 1

		var player1 = gml.get_instance("player1") #---[FLAG] may need to change this for multiplayer
		if (abs(player1.position.y-(position.y+8)) < 8 and abs(player1.position.x-(position.x+8)) < 64):

			sprite_index = "skeleton_create_l"
