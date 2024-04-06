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
		gml.collision_rectangle(position.x + 2, position.y + 2, position.x + 14, position.y + 14, 'snake', 0, 0)
