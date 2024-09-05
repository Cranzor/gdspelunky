extends DrawnSprite #--- changing this to get sprite_index

func initial_setup():
	#--- set size
	object_size = Vector2(0, 0)

	#--- set depth
	depth = 0
	z_index = depth

	#_create()

func _ready():
	object_setup()
	
	create()

func _physics_process(delta):
	object_tick()

func _process(delta):
	object_process()

#--- Object functions
func create():
	LevelGeneration.scr_setup_walls(224)
	gml.instance_destroy(self)	
