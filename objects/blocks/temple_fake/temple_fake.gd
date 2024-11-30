extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions
func step():
	if (not gml.collision_point(position.x+8, position.y+8, "door", 0, 0)):
		gml.instance_create(position.x, position.y, Objects.temple)
		gml.instance_destroy(self)
