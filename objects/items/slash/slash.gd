extends Whip


func _ready():
	object_setup()


#--- Object functions


func animation_end():
	gml.instance_destroy(self)


func create():
	# action_inherited
	super()

	# main_code
	type = "machete"
	damage = 2
	image_speed = 1
	puncture = true


func step():
	if (gml.instance_number("character") == 0):

		gml.instance_destroy(self)

	if (sprite_index == "slash_right"): #---[FLAG] this could cause isses since this code runs after queue_free is called. and there is no character reference in this case. may as well change to elif
		var character = gml.get_instance("character") #--- [FLAG] may need to be changed for multiplayer
		position.x = character.position.x+16
		position.y = character.position.y

	elif (sprite_index == "slash_left"):
		var character = gml.get_instance("character") #--- [FLAG] may need to be changed for multiplayer
		position.x = character.position.x-16
		position.y = character.position.y
