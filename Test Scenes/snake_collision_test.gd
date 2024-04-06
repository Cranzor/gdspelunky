extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	Collision.set_collision_bounds(self, 2, 0, 14, 16)
	position.x = 150
	position.y = 150
	Collision.calculate_collision_bounds(self)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("bomb"):
		gml.collision_point(position.x, position.y, 'snake', 0, 0)
