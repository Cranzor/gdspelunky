extends DrawnSprite


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions
func destroy():
	for i in range(0, 3):
		var gold = gml.instance_create(position.x+randi_range(0,2)-randi_range(0,2), position.y+randi_range(0,2)-randi_range(0,2), Objects.gold_chunk)
		gold.x_vel = randi_range(0,3) - randi_range(0,3)
		gold.y_vel = randi_range(3,6)
