extends Node2D

func _input(event: InputEvent) -> void:
	if Input.is_action_pressed("debug"):
		#print_debug(gml.instance_number("enemy_sight"))
		var test = gml.get_instance("test_rotation")
		#test.rotation_degrees = 180.0
		test.look_at(Vector2(100, 150))
		print(test)
