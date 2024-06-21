extends Solid

func initial_setup():
	#--- set size
	object_size = Vector2(16, 16)

	#--- set depth
	depth = -110
	z_index = depth
	
	$AnimatedSprite2D.play("cave_smooth")

func _ready():
	initial_setup()

func destroy():
	solid_destroy()
	if (not clean_death and not global.clean_solids):

		var rubble = gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0,8), position.y+8+randi_range(0,8)-randi_range(0,8), "rubble")
		rubble.sprite_index = "rubble_tan"
		rubble = gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0,8), position.y+8+randi_range(0,8)-randi_range(0,8), "rubble_small")
		rubble.sprite_index = "rubble_tan_small"
		rubble = gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0,8), position.y+8+randi_range(0,8)-randi_range(0,8), "rubble_small")
		rubble.sprite_index = "rubble_tan_small"
