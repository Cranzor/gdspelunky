extends DrawnSprite #---changing this to DrawnSprite

func _ready():
	object_setup()

func _physics_process(_delta):
	object_tick()

func _process(delta):
	object_process(delta)

#--- Object functions
func create():
	if (gml.room_get_name() == "intro"):
		sprite_index = "desert_top_night"
