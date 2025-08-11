extends Water


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions
func destroy():
	for i in range(0, 3):
		gml.instance_create(position.x+randi_range(0,16), position.y+randi_range(0,16), Objects.drip, self)
