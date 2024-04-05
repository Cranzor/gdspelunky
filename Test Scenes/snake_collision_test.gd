extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	Collision.set_collision_bounds(self, 2, 0, 14, 16)
	position.x = 300
	position.y = 300
	scale.x = 20
	scale.y = 20

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
