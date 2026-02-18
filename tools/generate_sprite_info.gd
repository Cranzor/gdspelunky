@tool
extends EditorScript

var sprite_data = Sprites.new()


func _run() -> void:
	var file_search = load("res://tools/file_search.gd").new()
	var dirs: PackedStringArray = file_search.get_directories("res://sprites/")
	for dir in dirs:
		var sprite_name = dir.split("/")[-1]
		var inner_dirs = DirAccess.get_directories_at(dir).size()
		
		if inner_dirs == 0:
			var sprite_info = SpriteInfo.new()
			sprite_info.origin = sprite_data.sprite_database[sprite_name]["origin"]
			
			var files = file_search.get_files(dir, "png")
			files.sort_custom(func(a, b): return a.naturalnocasecmp_to(b) < 0)
			sprite_info.containing_box = find_sprite_containing_box(files)
			var shape = sprite_data.sprite_database[sprite_name]["mask"]["shape"]
			if shape == "PRECISE": sprite_info.precise = true
			
			var bitmaps: Array[BitMap]
			for file in files:
				var loaded_png: Texture2D = load(file)
				sprite_info.size = loaded_png.get_size()
				var image: Image = loaded_png.get_image()
				var bitmap := BitMap.new()
				bitmap.create_from_image_alpha(image)
				bitmaps.append(bitmap)
			sprite_info.bitmaps = bitmaps
			sprite_info.name = sprite_name
			ResourceSaver.save(sprite_info, "res://resources/sprite_info/%s.tres" % sprite_name)
		
	print("finished")


func find_sprite_containing_box(sprite_pngs: PackedStringArray) -> Rect2: #--- from sprite.gd
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
	
