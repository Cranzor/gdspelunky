@tool
extends AnimatedSprite2D

@export_tool_button("Generate Sprites and Info", "Callable") var run_action = generate_sprites
@export var sprite_info: Dictionary[StringName, SpriteInfo]
@export var default_animation: StringName

var sprite_displayed
var sprites = Sprites.new()


func _on_animation_changed() -> void:
	var sprite_entry = sprites.sprite_database[animation]
	var shape = sprite_entry["mask"]["shape"]
	if shape == "RECTANGLE":
		var collision_size = sprite_entry["mask"]["collision_rectangles"][1]
		var collision_position = collision_size / 2 + sprite_entry["mask"]["collision_rectangles"][0]
		collision_position -= sprite_entry["origin"]
		
		var parent = get_parent().get_parent()
		if parent.get_node("CollisionShape2D"):
			parent.get_node("CollisionShape2D").shape.size = collision_size
			parent.get_node("CollisionShape2D").position = collision_position
	else:
		var collision_size = sprite_entry["mask"]["bounding_box"][1]
		var collision_position = collision_size / 2 + sprite_entry["mask"]["bounding_box"][0]
		collision_position -= sprite_entry["origin"]
		
		var parent = get_parent().get_parent()
		if parent.get_node("CollisionShape2D"):
			parent.get_node("CollisionShape2D").shape.size = collision_size
			parent.get_node("CollisionShape2D").position = collision_position


func generate_sprites():
	var all_sprites: Array = get_all_sprites()
	for sprite: String in all_sprites:
		var sprite_folder: String = get_sprite_folder(sprite)
		if sprite_folder != "":
			var sprite_pngs: PackedStringArray = get_sprite_png_paths(sprite_folder)
			add_new_animation(sprite, sprite_pngs)
			add_sprite_info(sprite, sprite_pngs)
	default_animation = all_sprites[0]
	set_autoplay(default_animation) #--- object's default sprite plays
	offset = -sprite_info[default_animation].origin


func get_all_sprites() -> Array:
	var object_name: String = get_parent().object_name
	var object_sprites = preload("res://resources/object_sprites.gd")
	var object_sprites_instance = object_sprites.new()
	var all_sprites: Array = object_sprites_instance.OBJECT_SPRITES[object_name]
	return all_sprites


func get_sprite_folder(default_sprite: StringName) -> String:
	var file_search = preload("res://tools/file_search.gd")
	var file_search_instance = file_search.new()
	var all_folders: PackedStringArray = file_search_instance.get_directories("res://sprites/")
	for folder: String in all_folders:
		if folder.ends_with("/" + default_sprite):
			return folder
	return ""


func get_sprite_png_paths(sprite_folder: String) -> Array[String]:
	var file_search = preload("res://tools/file_search.gd")
	var file_search_instance = file_search.new()
	var files: Array[String] = file_search_instance.get_files(sprite_folder, "png")
	return files


func add_new_animation(animation_name: StringName, sprite_pngs: PackedStringArray) -> void:
	if !sprite_frames.has_animation(animation_name):
		sprite_frames.remove_animation("default")
		sprite_frames.add_animation(animation_name)
		sprite_frames.set_animation_speed(animation_name, 30)
		sprite_frames.set_animation_loop(animation_name, true)
		for png in sprite_pngs:
			sprite_frames.add_frame(animation_name, load(png))


func add_sprite_info(sprite_name: StringName, sprite_pngs: PackedStringArray):
	var new_sprite_info: SpriteInfo = SpriteInfo.new()
	var sprites = preload("res://resources/sprites.gd").new()
	var shape: String = sprites.sprite_database[sprite_name]["mask"]["shape"]
	var origin: Vector2 = sprites.sprite_database[sprite_name]["origin"]
	if shape == "PRECISE":
		new_sprite_info.precise = true
		new_sprite_info.images = generate_sprite_images(sprite_pngs)
	new_sprite_info.origin = origin
	new_sprite_info.containing_box = find_sprite_containing_box(sprite_pngs)
	sprite_info[sprite_name] = new_sprite_info


func generate_sprite_images(sprite_pngs: PackedStringArray) -> Array[Image]:
	var images: Array[Image]
	for png in sprite_pngs:
		var image: Image = load(png).get_image()
		images.append(image)
	return images


func find_sprite_containing_box(sprite_pngs: PackedStringArray) -> Rect2:
	var png_number: int = sprite_pngs.size()
	var x1_values: Array[int]
	var y1_values: Array[int]
	var x2_values: Array[int]
	var y2_values: Array[int]

	for png in sprite_pngs:
		var loaded_png: Texture2D = load(png)
		var image: Image = loaded_png.get_image()
		var used_rect = image.get_used_rect()
		var x1 = used_rect.position.x
		var y1 = used_rect.position.y
		var x2 = used_rect.position.x + used_rect.size.x
		var y2 = used_rect.position.y + used_rect.size.y
		x1_values.append(x1)
		y1_values.append(y1)
		x2_values.append(x2)
		y2_values.append(y2)

	return Rect2(Vector2(x1_values.min(), y1_values.min()), Vector2(x2_values.max() - x1_values.min(), y2_values.max() - y1_values.min())) #--- gives size in Rect2 style (relative to position)
