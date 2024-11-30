extends DrawnSprite #--- changing this to get sprite_index

func _ready():
	object_setup()
	
func _physics_process(_delta):
	object_tick()

func _process(delta):
	object_process(delta)

#--- Object functions
func create():
	var level_generation = LevelGeneration.new()
	level_generation.scr_setup_walls(224)
	gml.instance_destroy(self)	
