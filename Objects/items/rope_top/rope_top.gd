extends DrawnSprite

func initial_setup():
	#--- set size
	object_size = Vector2(8, 8)

	#--- set depth
	depth = -200
	z_index = depth
	
	$AnimatedSprite2D.play("rope_top")
	drawn_sprite_create()

func _ready():
	initial_setup()

func create():
	type = "rope"
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, -4, -4, 4, 4)
