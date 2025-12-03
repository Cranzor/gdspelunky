extends Water


func _ready():
	object_setup()


#--- Object functions
func destroy():
	for i in range(0, 3):
		gml.instance_create(position.x+randi_range(0,16), position.y+randi_range(0,16), Objects.drip, self)
