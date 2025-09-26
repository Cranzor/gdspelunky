extends Node2D

@onready var cell_size: int = custom_collision.cell_size
@export var debug_draw_grid: bool = true
var custom_collision = preload("res://collision/custom_collision.gd").new()
var debug_highlighting = preload("res://collision/debug/broad_phase_highlighting.gd").new()
var prior_cell: Vector2
var prior_objects: Array[GMObject]


func _ready() -> void:
	SignalBus.scene_changed.connect(clear_prior_objects)


func _input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		hightlight_objects_based_on_mouse_cell()


func hightlight_objects_based_on_mouse_cell():
	var mouse_cell: Vector2 = custom_collision.get_hash(get_global_mouse_position())
	if mouse_cell != prior_cell:
		for object: GMObject in prior_objects:
			if is_instance_valid(object) and !object.is_queued_for_deletion():
				debug_highlighting.reset_color(object)
		prior_objects.clear()
		var objects = custom_collision.find_objects_in_grid_cells([mouse_cell])
		for object: GMObject in objects:
			debug_highlighting.highlight_color(object, Color("f50aff"))
			prior_objects.append(object)


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


func clear_prior_objects():
	prior_objects.clear()
