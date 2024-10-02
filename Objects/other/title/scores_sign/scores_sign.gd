extends DrawnSprite #--- changing this to get sprite_index variable

func _ready():
	object_setup()

func _physics_process(delta):
	object_tick()

func _process(delta):
	object_process()
