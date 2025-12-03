extends DrawnSprite


func _ready():
	object_setup()


#--- Object functions


func create():
	type = "rope"
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, -4, -4, 4, 4)
