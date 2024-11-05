@tool
extends EditorScript

var object_database = ObjectDatabase.new()
var gm_object = GMObject.new()
var sprites = Sprites.new()

var all_object_paths = []

func _run() -> void:
	#objects_reset()
	pass
	
func objects_setup():
	get_all_object_paths()

	for path in all_object_paths:
		print(path)
		var node = ResourceLoader.load(path, "", 0)
		node = node.instantiate()
		
		if node is GMObject:
			var object_database = object_database.object_database
			var object_entry = object_database[node.object_name]
			
			##--- add to groups
			#var groups = groups_setup(object_entry, node)
			#for group in groups:
				#if !node.is_in_group(group):
					#node.add_to_group(group, true)
			#
			##--- set depth
			#node.depth = depth_setup(object_entry)
			#
			##--- set up sprite
			##var new_animated_sprite = sprite_setup(object_entry, node)
			##print(new_animated_sprite)
			##node.animated_sprite_node = new_animated_sprite
			#
			##-- set up bounding box
			#bounding_box_setup(node)
			#
			#--- set up alarms
			alarms_setup(object_entry, node)
			#
			#node.editor_setup_finished = true
			
			#--- remove a given node
			#node.remove_child(node.get_node("Alarms"))
			
			var scene = PackedScene.new()
			var result = scene.pack(node)
			if result == OK:
				print("saved")
				ResourceSaver.save(scene, path)

func objects_reset():
	get_all_object_paths()

	for path in all_object_paths:
		print(path)
		var node = ResourceLoader.load(path, "", 0)
		node = node.instantiate()
		
		if node is GMObject:
			var object_database = object_database.object_database
			var object_entry = object_database[node.object_name]

			##--- remove groups
			var groups = node.get_groups()
			for group in groups:
				node.remove_from_group(group)
			#
			##--- reset depth
			node.depth = 0
			#
			##--- delete sprite and alarms
			var node_children = node.get_children()
			for child in node_children:
				if child.name == "AnimatedSprite2D":
					node.remove_child(child)
				elif child.name == "Alarms":
					node.remove_child(child)
			#
			##-- reset bounding box
			node.object_size = Vector2(0, 0)

			node.editor_setup_finished = false
			
			var scene = PackedScene.new()
			var result = scene.pack(node)
			if result == OK:
				print("saved")
				ResourceSaver.save(scene, path)

func groups_setup(object_entry, node):
	var groups = object_entry['groups']
	var groups_to_return = []
	
	for group in groups:
		if !node.is_in_group(group):
			groups_to_return.append(group)
	
	return groups_to_return

func depth_setup(object_entry):
	var object_depth = object_entry["depth"]
	
	#--- In Godot, the value must be negative to display properly
	var converted_depth = -object_depth
	#--- Making sure the value isn't lower than the minimum value
	if converted_depth < -4096:
		converted_depth = -4096
	
	return converted_depth

func sprite_setup(object_entry, node):
	var sprite_to_add = object_entry["sprite"]
	if sprite_to_add != null:
		var sprite_entry = sprites.sprite_database[sprite_to_add]
		var sprite_offset = sprite_entry["origin"]
		var sprite_folder_path = sprite_entry["folder_path"]
		var new_animated_sprite = AnimatedSprite2D.new()
		var sprite_frames = SpriteFrames.new()
		node.animated_sprite_node = new_animated_sprite
		sprite_frames = sprite_animation_setup(sprite_to_add, sprite_frames)
		sprite_frames.remove_animation("default")
		
		new_animated_sprite.sprite_frames = sprite_frames
		new_animated_sprite.name = "AnimatedSprite2D"
		new_animated_sprite.centered = false
		new_animated_sprite.z_as_relative = false
		new_animated_sprite.z_index = node.depth
		new_animated_sprite.add_to_group("animated_sprite", true)
		node.add_child(new_animated_sprite)
		new_animated_sprite.autoplay = sprite_to_add
		set_sprite_offset(sprite_to_add, node)
		node.sprite_index_name = sprite_to_add
		new_animated_sprite.owner = node
		return new_animated_sprite
		
func sprite_animation_setup(sprite_name, sprite_frames):
	sprite_frames.add_animation(sprite_name)
	sprite_frames.set_animation_speed(sprite_name, 30)
	sprite_frames.set_animation_loop(sprite_name, true)
	var sprite_folder_path = sprites.sprite_database[sprite_name]["folder_path"]
	var files = DirAccess.get_files_at(sprite_folder_path)
	for file in files:
		if file.get_extension() == "png":
			#print(file)
			var sprite_texture = load(sprite_folder_path + "/" + file)
			sprite_frames.add_frame(sprite_name, sprite_texture)
	
	return sprite_frames

func set_sprite_offset(new_sprite, node):
	var animated_sprite = node.animated_sprite_node
	node.sprite_offset = sprites.sprite_database[new_sprite]["origin"]
	
	#sprite_offset = sprites_and_offsets[new_sprite] --- got rid of this variable so won't work. update this with new collision
	if !animated_sprite.flip_h:
		animated_sprite.offset = -node.sprite_offset
		
	else:
		animated_sprite.offset = -node.sprite_offset

func bounding_box_setup(node):
	var sprite = get_animation(node)
	
	if sprite != null:
		node.object_size = sprites.sprite_database[sprite]["mask"]["bounding_box"][1]
	else:
		var no_sprite_size = Vector2(0, 0)
		node.object_size = no_sprite_size

func get_animation(node):
	var animated_sprite: AnimatedSprite2D = node.animated_sprite_node
	
	if animated_sprite != null:
		var current_animation = animated_sprite.animation
		return current_animation
	else:
		return null

func alarms_setup(object_entry, node):
	var events: Array = object_entry["events"]
	var alarms: Array = ['alarm_0', 'alarm_1', 'alarm_2', 'alarm_3', 'alarm_4', 'alarm_5', 'alarm_6', 'alarm_7', 'alarm_8', 'alarm_9', 'alarm_10', 'alarm_11']
	
	var alarms_holder
	for event in events:
		if event in alarms:
			alarms_holder  = Node.new()
			alarms_holder.name = "Alarms"
			node.add_child(alarms_holder)
			alarms_holder.owner = node
			break
		break
	
	for event in events:
		if event in alarms:
			var alarm_countdown_instance: String = event + "_countdown"
			var alarm_function = Callable(self, event)
			var new_alarm: Node = Alarm.new()
			node.set(alarm_countdown_instance, new_alarm)
			new_alarm.set_physics_process(true)
			new_alarm.timeout.connect(alarm_function)
			new_alarm.name = event.to_pascal_case()
			alarms_holder.add_child(new_alarm)
			new_alarm.owner = node

func get_all_object_paths():
	var objects_script = "res://objects.gd"
	var opened_file = FileAccess.open(objects_script, FileAccess.READ)
	var content = opened_file.get_as_text()
	
	var regex = RegEx.new()
	regex.compile("res://.+tscn")
	var search = regex.search_all(content)
	for result in search:
		all_object_paths.append(result.strings[0])
