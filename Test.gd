extends Button

var room_name = "test"

# Called when the node enters the scene tree for the first time.
func _ready():
	#print("start")
	#$AnimatedSprite2D.play("default")
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#keyboard_check(KEY_D)
	pass

func _physics_process(delta):
	#print($AnimatedSprite2D.get_frame())
	pass
	
func _input(event):
	if Input.is_key_pressed(KEY_D):
		keyboard_check()

func keyboard_check():
	print(gml.instanced_objects["rope"])
	#gml.tile_add('bg_cave_top', 0, 0, 16, 16, 54, 54-16, 3)
	#gml.tile_add('bg_kali_body', 0, 0, 64, 64, 0-16, 0-48, 10001)


func _on_button_down():
	keyboard_check()
