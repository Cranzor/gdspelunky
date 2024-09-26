class_name RoomGeneration

var rooms = Rooms.new()
var objects = ObjectDatabase.new()

func generate_room(room_name: String):
	var room_database = rooms.room_database
	var room_data = room_database[room_name]
	var room_instances = room_data['instances']['instance']
	
	for instance in room_instances:
		var object = instance['object']
		var position = instance['position']
		var object_position = Vector2(int(position['x']), int(position['y']))
		var object_folder_path = objects.object_database[object]['folder_path']
		var loaded_object = load(object_folder_path)
		
		gml.instance_create(object_position.x, object_position.y, loaded_object)
