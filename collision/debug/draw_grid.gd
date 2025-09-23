extends Node2D

@export var cell_size: int = 32
@export var debug_draw_grid: bool = true

func _draw() -> void:
	if debug_draw_grid:
		draw_grid()


func draw_grid() -> void:
	var x: int = 0
	var x_max: int = 10000
	var y: int = 0
	var y_max: int = 10000
	
	while x < x_max:
		x+=cell_size
		draw_line(Vector2(x, 0), Vector2(x, y_max), Color(1.0, 1.0, 1.0, 0.2), 1)
	while y < y_max:
		y+= cell_size
		draw_line(Vector2(0, y), Vector2(x_max, y), Color(1.0, 1.0, 1.0, 0.2), 1)
