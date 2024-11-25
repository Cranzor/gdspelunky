extends Node2D


func _ready():
	gml.instance_create(0, 0, Objects.gold_door)
	gml.instance_create(16, 0, Objects.ice)
	gml.instance_create(32, 0, Objects.big_collect)
	gml.instance_create(48, 0, Objects.heart)
	gml.instance_create(60, 0, Objects.yell_help)
	gml.instance_create(72, 0, Objects.small_collect)
	gml.instance_create(84, 0, Objects.barrier_emitter)

func _input(event: InputEvent) -> void:
	if Input.is_key_pressed(KEY_0):
		gml.instance_create(100, 10, Objects.tree)
