@tool
extends Node
class_name RoomGeneration

var rooms = Rooms.new()
var objects = ObjectDatabase.new()

const VIEW = preload("res://view.tscn")

func generate_room(room_name: String, holder):
	var room_database = rooms.room_database
	var room_data = room_database[room_name]
	var room_instances = room_data['instances']['instance']
	
	var x = 0
	for instance in room_instances:
		x+=1
		var object = instance['object']
		var position = instance['position']
		var object_position = Vector2(int(position['x']), int(position['y']))
		var object_folder_path = objects.object_database[object]['folder_path']
		var loaded_object = load(object_folder_path)
		
		loaded_object = loaded_object.instantiate()
		loaded_object.position = object_position
		holder.add_child(loaded_object)
		loaded_object.owner = EditorInterface.get_edited_scene_root()
		
		#gml.instance_create(object_position.x, object_position.y, loaded_object)
	
	#apply_camera(room_name)
	print(x)

func apply_camera(room_name):
	var rooms_with_camera = ['intro', 'level', 'level2', 'level3', 'olmec', 'tutorial']
	
	if room_name in rooms_with_camera:
		if room_name == 'intro':
			var p_dummy3 = Engine.get_main_loop().get_first_node_in_group('p_dummy3')
			var animated_sprite = p_dummy3.find_child("AnimatedSprite2D", true, false)
			animated_sprite.add_child(VIEW.instantiate())
			
		else:
			var player1 = get_tree().get_first_node_in_group('player1')
			var animated_sprite = player1.find_child("AnimatedSprite2D", true, false)
			animated_sprite.add_child(VIEW.instantiate())
