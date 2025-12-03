extends GMObject


func _ready():
	object_setup()


#--- Object functions


func collision_with_solid():
	if (other.type == "arrow trap"): gml.instance_destroy(other)
	gml.instance_destroy(self)


func step():
	if (dir == 0):
		position.x -= 16
	else:
		position.x += 16
