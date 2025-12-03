extends GMObject


func _ready():
	object_setup()


#--- Object functions
func step():
	if (not gml.collision_point(position.x+8, position.y+8, "door", 0, 0)):
		gml.instance_create(position.x, position.y, Objects.temple, self)
		gml.instance_destroy(self)
