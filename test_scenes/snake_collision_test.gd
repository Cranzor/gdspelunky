extends Node2D

var snake_rect

# Called when the node enters the scene tree for the first time.
func _ready():
	Collision.set_collision_bounds(self, 2, 0, 14, 16)
	position.x = 150
	position.y = 150
	Collision.calculate_collision_bounds(self)
	print(gml.frac(2.4342))
	snake_rect = Rect2(Vector2(position.x, position.y), Vector2(16, 16))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("bomb"):
		gml.collision_rectangle_test(position.x, position.y, position.x + 16, position.y + 16, 'snake', snake_rect, 0)
		print('hi')
