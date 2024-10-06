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
	
#func _input(event):
	#if Input.is_key_pressed(KEY_D):
		#keyboard_check()

var tested_pixels: PackedVector2Array
var tested_pixels_temp: PackedVector2Array
var bitmap
var bitmap_size
var rows
var columns

var rects: Array = []

func keyboard_check():
	#print(gml.instanced_objects["rope"])
	#gml.tile_add('bg_cave_top', 0, 0, 16, 16, 54, 54-16, 3)
	#gml.tile_add('bg_kali_body', 0, 0, 64, 64, 0-16, 0-48, 10001)
	bitmap = BitMap.new()
	
	var texture = preload("res://sprites/enemies/ghost/ghost_left/ghost_left_0.png")
	#var texture = preload("res://sprites/enemies/olmec/olmec/olmec_0.png")
	var image = texture.get_image()

	bitmap.create_from_image_alpha(image)
	#print(bitmap.get_bit(14, 0))
	
	#print(bitmap.opaque_to_polygons(Rect2(Vector2(), bitmap.get_size())))
	var collision = get_parent().get_node("CollisionPolygon2D")
	#print(bitmap.opaque_to_polygons(Rect2(Vector2(), bitmap.get_size())))
	#var polygon_array = bitmap.opaque_to_polygons(Rect2(Vector2(), bitmap.get_size()))
	#collision.polygon = polygon_array[0]
	#print(collision.polygon)
	bitmap_size = bitmap.get_size()
	rows = bitmap_size.y
	columns = bitmap_size.x
	
	tested_pixels.clear()
	rects.clear()
	for row in rows:
		for column in columns:
			var pixel_to_test = Vector2(column, row)
			var bit = test_pixel(pixel_to_test)
			var in_rect = is_pixel_inside_rect(pixel_to_test)
			if bit and not in_rect:
				tested_pixels.append(pixel_to_test)
				var right_search_pixel_array = right_search(pixel_to_test, bitmap_size.x)
				var right_search_result = right_search_pixel_array.size()
				add_temp_pixels_to_rect(right_search_pixel_array)
				
				var rect_size: Vector2
				rect_size.x = right_search_result + 1
				rect_size.y = bottom_search(pixel_to_test, right_search_result + column) + 1
				
				var rect_position = pixel_to_test
				var rect = Rect2(rect_position, rect_size)
				rects.append(rect)
				
				#--- testing
				#var color_rect = ColorRect.new()
				#var random_color = Color(randf(), randf(), randf(), 1)
				#color_rect.color = random_color
				#color_rect.size = rect_size
				#color_rect.position = Vector2(320+290 + rect_position.x, 184 + rect_position.y)
				#var objects_holder = get_tree().get_first_node_in_group("objects_holder")
				#objects_holder.add_child(color_rect)
	
	print(rects.size())
				
	
func test_pixel(pixel):
	var bit = bitmap.get_bit(pixel.x, pixel.y)
	return bit

func add_temp_pixels_to_rect(pixels: PackedVector2Array):
	for pixel in pixels:
		tested_pixels.append(pixel)
	pixels.clear()

func mark_pixel_as_inside_rect(pixel):
	tested_pixels.append(pixel)
	
func right_search(passed_pixel, right_extent):
	var pixels_in_rect: PackedVector2Array
	
	var current_column = passed_pixel.x
	var current_row = passed_pixel.y
	
	var farthest_right_column = current_column
	
	#for new_column in range(current_column + 1, right_extent + 1):
	for new_column in range(current_column, right_extent + 1):
		var new_pixel_to_test = Vector2(new_column, current_row)

		var bit = test_pixel(new_pixel_to_test)
		var in_rect = is_pixel_inside_rect(new_pixel_to_test)
		if new_pixel_to_test != passed_pixel:
			if bit and not in_rect:
				pixels_in_rect.append(new_pixel_to_test)
				#farthest_right_column = new_column
			else:
				return pixels_in_rect
					#return farthest_right_column
		#return farthest_right_column
	return pixels_in_rect

func bottom_search(passed_pixel, rect_size_x):
	var current_column = passed_pixel.x
	var current_row = passed_pixel.y
	var farthest_bottom_row = 0
	
	for new_row in range(current_row + 1, bitmap_size.y):
		var new_pixel_to_test = Vector2(current_column, new_row)

		var bit = test_pixel(new_pixel_to_test)
		var in_rect = is_pixel_inside_rect(new_pixel_to_test)
		if bit and not in_rect:
			var right_search_result = right_search(new_pixel_to_test, rect_size_x)
			var right_search_result_size = right_search_result.size()
			if right_search_result_size + current_column == rect_size_x:
				tested_pixels.append(Vector2(passed_pixel.x, passed_pixel.y + 1))
				add_temp_pixels_to_rect(right_search_result)
				farthest_bottom_row += 1
			else:
				return farthest_bottom_row
		else:
			return farthest_bottom_row
	return farthest_bottom_row

func is_pixel_inside_rect(passed_pixel):
	return passed_pixel in tested_pixels
	
	#for row in rows:
		#for column in columns:
			#print(str(column) + " " + str(row))
			#print(bitmap.get_bit(column, row))
			#var bit = bitmap.get_bit(column, row)
			#
			#if bit:
				#if Vector2(column, row) not in tested_pixels:
					#var farthest_right_pixel_column = column
					#var farthest_bottom_pixel_row = row
					#for pixel in range(column, columns):
						#bit = bitmap.get_bit(pixel, row)
						#if bit:
							#farthest_right_pixel_column = pixel
							#tested_pixels.append(Vector2(pixel, row))
						#else:
							#break
					#
					#var break_out_of_loop = false
					#for pixel in range(row + 1, rows):
						#bit = bitmap.get_bit(column, pixel)
						#if bit:
							#for next_pixel in range(column, farthest_right_pixel_column + 1):
								#var second_bit = bitmap.get_bit(next_pixel, pixel)
								#if second_bit:
									#if next_pixel == farthest_right_pixel_column:
										#farthest_bottom_pixel_row = pixel
								#else:
									#break_out_of_loop = true
									#break
						#
						#if break_out_of_loop:
							#break
								#
					#
					#print(Vector2(farthest_right_pixel_column, farthest_bottom_pixel_row))
								#
								#
				#
					#print("farthest right: " + str(farthest_right_pixel_column))
		
			


func _on_button_down():
	var alarm = Alarm.new()
	get_tree().current_scene.add_child(alarm)
	alarm.set_physics_process(true)
	alarm.timeout.connect(test_alarm)
	alarm.start(10)
	print('pressed')
	#keyboard_check()
	#print("pressed for no reason")

func test_alarm():
	print("worked!")
