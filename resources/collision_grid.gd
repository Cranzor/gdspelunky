class_name CollisionGrid

func find_grid_position(global_position, object_size):
	var grid_position_in_pixels: Vector2
	var spacing = Vector2(12, 10)
	
	var top_left = global_position
	var top_right = Vector2(global_position.x + object_size.x, global_position.y)
	var bottom_left = Vector2(global_position.x, global_position.y + object_size.y)
	var bottom_right = Vector2(global_position.x + object_size.x, global_position.y + object_size.y)
	
	print(top_left)
	print(top_right)
	print(bottom_left)
	print(bottom_right)
	
	grid_position_in_pixels = get_grid_nearest_multiple_from_position(global_position, spacing)
	
	var top_left_multiple = get_grid_nearest_multiple_from_position(top_left, spacing)
	var top_right_multiple = get_grid_nearest_multiple_from_position(top_right, spacing)
	var bottom_left_multiple = get_grid_nearest_multiple_from_position(bottom_left, spacing)
	var bottom_right_multiple = get_grid_nearest_multiple_from_position(bottom_right, spacing)
	
	print(top_left_multiple)
	print(top_right_multiple)
	print(bottom_left_multiple)
	print(bottom_right_multiple)
	
	var all_points = [top_left_multiple, top_right_multiple, bottom_left_multiple, bottom_right_multiple]
	
	var grid_positions = []
	for point in all_points:
		var final_grid_position = calculate_grid_position(point, spacing)
		if final_grid_position not in grid_positions:
			grid_positions.append(final_grid_position)
		
	return grid_positions

func get_grid_nearest_multiple_from_position(position, spacing):
	var new_position: Vector2
	new_position.x = get_nearest_higher_multiple(position.x, spacing.x * 16)
	new_position.y = get_nearest_higher_multiple(position.y, spacing.y * 16)
	return new_position

func calculate_grid_position(grid_position, spacing):
	var block_in_pixels = 16
	grid_position.x = grid_position.x / block_in_pixels
	grid_position.y = grid_position.y / block_in_pixels
	
	grid_position.x = (grid_position.x / spacing.x) - 1
	grid_position.y = (grid_position.y / spacing.y) - 1
	
	#if object_name == "palm_tree_dark":
		#print(global_position)
		#print(grid_position)
	
	return grid_position

func generate_random_hash():
	var characters = '1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYS'
	var length = 16
	var word = ""
	var n_char = len(characters)
	for i in range(length):
		word += characters[randi_range(0, n_char - 1)]
	return word
	
func get_nearest_higher_multiple(input_number, multiple): #--- Adapted from here: https://www.geeksforgeeks.org/multiple-of-x-closest-to-n/
	var original_number = input_number
	if multiple > input_number:
		return multiple
	var z = int(multiple/2)
	input_number = input_number + z
	input_number = input_number - (int(input_number) % int(multiple))
	#--- If the nearest multiple is below, set it to the next higher one (for correct grid placement)
	if input_number < original_number:
		input_number += multiple
	return input_number
