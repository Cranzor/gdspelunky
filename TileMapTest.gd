extends TileMap


# Called when the node enters the scene tree for the first time.
func _ready():
	#var tile = tile_set.get_pattern(0)
	#set_pattern(0, Vector2i(5,5), tile)
	
	set_cell(0, Vector2i(5,6), 0, Vector2i(0,0))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
