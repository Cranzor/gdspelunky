extends DrawnSprite

var initial_position

func _ready():
	initial_position = position

func _physics_process(delta):
	object_tick()

func _process(delta):
	if position != initial_position:
		print("hm")

#--- Object functions
