extends DrawnSprite #--- changing this to get sprite_index

func _ready():
	object_setup()
	
func _physics_process(delta):
	object_tick()

func _process(delta):
	object_process()

#--- Object functions
func create():
	LevelGeneration.scr_setup_walls(224)
	gml.instance_destroy(self)	
