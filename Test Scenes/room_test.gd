extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	LevelGeneration.scr_level_gen()
	$BaseRoom/Control/Background.texture = preload("res://Backgrounds/bg_cave.png")
	var rooms = get_tree().get_nodes_in_group("room")
	for room in rooms:
		LevelGeneration.scr_room_gen(room.position.x, room.position.y)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("attack"):
		get_tree().reload_current_scene()
		global.room_path = {[0,0]:0, [0,1]:0, [0,2]:0, [0,3]:0,
		[1,0]:0, [1,1]:0, [1,2]: 0, [1,3]:0,
		[2,0]:0, [2,1]:0, [2,2]:0, [2,3]:0,
		[3,0]:0, [3,1]: 0, [3,2]:0, [3,3]:0}
