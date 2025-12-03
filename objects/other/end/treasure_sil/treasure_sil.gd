extends DrawnSprite


func _ready():
	object_setup()


#--- Object functions


func create():
	x_vel = -6
	y_vel = -8
	my_grav = 0.6


func step():
	if (true):

		position.x += x_vel
		position.y += y_vel

		if (x_vel < 0): x_vel += 0.1
		
		if (y_vel < 6):
		
			y_vel += my_grav
		
		
		if (position.y > 240):
			gml.room_goto("end3") #---[FLAG] may have to adjust how this works depending on how scene transitions are handled (leaving this here to check later but seemingly not an issue)
