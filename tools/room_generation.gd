extends Node
class_name RoomGeneration

var rooms = Rooms.new()
var objects = ObjectDatabase.new()

var all_objects = {}

func generate_room(room_name: String):
	set_up_background()
	set_up_tiles()
	
	var room_database = rooms.room_database
	var room_data = room_database[room_name]
	var room_instances = room_data['room']['instances']['instance']
	var objects_in_level: Array
	
	var x = 0
	for instance in room_instances:
		x+=1
		var object = instance['object']
		var position = instance['position']
		var object_position = Vector2(int(position['x']), int(position['y']))
		var object_folder_path = objects.object_database[object]['folder_path']
		var persistent = objects.object_database[object]['persistent']
		var loaded_object
		if all_objects.has(object):
			loaded_object = all_objects[object]
		else:	
			loaded_object = load(object_folder_path)
			all_objects[object] = loaded_object
		
		#loaded_object = loaded_object.instantiate()
		#loaded_object.position = object_position
		#holder.add_child(loaded_object)
		#loaded_object.owner = EditorInterface.get_edited_scene_root()
		
		if !persistent: #--- persistent objects are already created as autoloads
			var obj = gml.instance_create(object_position.x, object_position.y, loaded_object, null, false)
			objects_in_level.append(obj)
	
	for object in objects_in_level: #--- running create event for all objects after they are all instanced so that they can reference one another regardless of order
		object.run_create_function(object)
	
	set_up_view()
	
	#--- this is set in the title object script, which runs before set_up_view()
	#--- so we can just add it here to make sure view is where it should be
	if gml.room_get_name() == "title":
		gml.view_xview = 320
	#--- Olmec is set as view_object in create script as well, so have to account for this (player1 is set in set_up_view())
	elif gml.room_get_name() == "olmec":
		gml.view_hborder = 0
		gml.view_vborder = 0
		gml.view_object = gml.get_instance("olmec")


func set_up_view() -> void:
	var rooms = Rooms.new()
	var current_room = gml.room_get_name()

	var object_following = ""
	var delayed_object_setup: bool = false
	var entry = rooms.room_database[current_room]["room"]["views"]["view"][0]["object_following"]
	if entry.has("#text"):
		object_following = entry["#text"]
	var border = Vector2(int(entry["h_border"]), int(entry["v_border"]))
	if current_room == "intro":
		border.x = 128 #--- view in intro seems to have a bug/quirk where the player starting at -32 offsets the border somehow.
					   #--- so having it at 160 was done to offset this. correcting this manually as we don't have this issue
	var room_size = rooms.room_database[current_room]["room"]["size"]
	var level_boundaries = Vector2(int(room_size["width"]), int(room_size["height"]))
	var view: View = Engine.get_main_loop().get_first_node_in_group("view")
	var centered: bool = true
	var uncentered_rooms: PackedStringArray = ["intro", "tutorial", "olmec"]
	if current_room.begins_with("level") or uncentered_rooms.has(current_room):
		centered = false
	view.setup(level_boundaries, border, object_following, centered)
	view.update_camera_pos()
	

func set_up_background() -> void:
	var rooms = Rooms.new()
	var current_room = gml.room_get_name()
	var background_name = rooms.room_database[current_room]["room"]["backgrounds"]["background_def"][0]["background_image"]
	var room_size = rooms.room_database[current_room]["room"]["size"]
	var level_boundaries = Vector2(int(room_size["width"]), int(room_size["height"]))
	
	var background_node: TextureRect = Engine.get_main_loop().get_first_node_in_group("background")
	if background_name:
		var image_path = "res://backgrounds/" + background_name + ".png"
		var texture = Texture2D.new()
		texture = load(image_path)
		background_node.texture = texture
		background_node.size = level_boundaries


func set_up_tiles() -> void:
	var rooms = Rooms.new()
	var current_room = gml.room_get_name()
	var tiles = rooms.room_database[current_room]["room"]["tiles"]
	if tiles != null:
		var tiles_entry = tiles["tile"]
		if tiles_entry is Dictionary:
			create_tile(tiles_entry)
		elif tiles_entry is Array:
			for tile in tiles_entry:
				create_tile(tile)


func create_tile(tile):
	var background = tile["background"]
	var background_pos = Vector2(int(tile["background_position"]["x"]), int(tile["background_position"]["y"]))
	var room_pos = Vector2(int(tile["room_position"]["x"]), int(tile["room_position"]["y"]))
	var size = Vector2(int(tile["size"]["width"]), int(tile["size"]["height"]))
	var depth = int(tile["depth"])
	gml.tile_add(background, background_pos.x, background_pos.y, size.x, size.y, room_pos.x, room_pos.y, depth)
