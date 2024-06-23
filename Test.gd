extends Node2D

var room_name = "test"

# Called when the node enters the scene tree for the first time.
func _ready():
	print("start")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#keyboard_check(KEY_D)
	pass
	
func _input(event):
	if Input.is_key_pressed(KEY_D):
		keyboard_check()

func keyboard_check():
	print("pressed")
	gml.tile_add('bg_cave_top', 0, 0, 16, 16, 54, 54-16, 3)
	gml.tile_add('bg_kali_body', 0, 0, 64, 64, 0-16, 0-48, 10001)
