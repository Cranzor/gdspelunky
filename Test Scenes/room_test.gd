extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	print(get_tree().current_scene.name)
	MiscScripts.scr_clear_globals()
	#LevelGeneration.scr_level_gen()
	$BaseRoom/Control/CanvasLayer/Background.texture = preload("res://Backgrounds/bg_cave.png")
	#var rooms = get_tree().get_nodes_in_group("room")
	#for room in rooms:
		#LevelGeneration.scr_room_gen(room.position.x, room.position.y)
	LevelGeneration.scr_init_level()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("attack"):
		MiscScripts.scr_clear_globals()
		gml.instanced_object_locations.clear()
		get_tree().reload_current_scene()
		global.room_path = {[0,0]:0, [0,1]:0, [0,2]:0, [0,3]:0,
		[1,0]:0, [1,1]:0, [1,2]: 0, [1,3]:0,
		[2,0]:0, [2,1]:0, [2,2]:0, [2,3]:0,
		[3,0]:0, [3,1]: 0, [3,2]:0, [3,3]:0}
	
	if Input.is_action_just_pressed("bomb"):
		var test_node = $BaseRoom/Objects.get_child(10)
		print(test_node)
		gml.update_obj_list_collision(test_node)
