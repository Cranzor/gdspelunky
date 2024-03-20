extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	print("start")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	keyboard_check(KEY_D)

func keyboard_check(key):
	var check = Input.is_key_pressed(key) # Probably needs input event
	return check
