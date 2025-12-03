extends DrawnSprite #--- changing this to get sprite_index

func _ready():
	object_setup()


#--- Object functions
func create():
	LevelGeneration.scr_setup_walls(224)
	gml.instance_destroy(self)	
