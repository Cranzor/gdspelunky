extends Node

var object_hash

func find_grid_position(global_position, object_size):
	var grid_position: Vector2
	
	var spacing = Vector2(12, 10)
	
	var top_left = global_position
	var top_right = Vector2(global_position.x + object_size.x, global_position.y)
	var bottom_left = Vector2(global_position.x, global_position.y + object_size.y)
	var bottom_right = Vector2(global_position.x + object_size.x, global_position.y + object_size.y)
	
	grid_position = get_grid_nearest_multiple_from_position(global_position, spacing)
	
	
	var top_left_multiple = get_grid_nearest_multiple_from_position(top_left, spacing)
	var top_right_multiple = get_grid_nearest_multiple_from_position(top_right, spacing)
	var bottom_left_multiple = get_grid_nearest_multiple_from_position(bottom_left, spacing)
	var bottom_right_multiple = get_grid_nearest_multiple_from_position(bottom_right, spacing)
	
	var all_points = [top_left_multiple, top_right_multiple, bottom_left_multiple, bottom_right_multiple]
	var points_with_multiples = {top_left_multiple : top_left, top_right_multiple : top_right, bottom_left_multiple : bottom_left, bottom_right_multiple : bottom_right}
	
	#if grid_position.x > global_position.x:
		#grid_position.x -= spacing.x * 16
	#if grid_position.y > global_position.y:
		#grid_position.y -= spacing.y * 16
	
	#grid_position = correct_for_value_higher_than_position(grid_position, global_position, spacing)
	
	var grid_positions = []
	for point in all_points:
		point = correct_for_value_higher_than_position(point, points_with_multiples[point], spacing)
		var final_grid_position = calculate_grid_position(point, spacing)
		if final_grid_position not in grid_positions:
			grid_positions.append(final_grid_position)
		
	
	#grid_position = calculate_grid_position(grid_position, spacing)
	return grid_position

func get_grid_nearest_multiple_from_position(position, spacing):
	var new_position: Vector2
	new_position.x = gml.get_nearest_multiple(position.x, spacing.x * 16)
	new_position.y = gml.get_nearest_multiple(position.y, spacing.y * 16)
	return new_position

func correct_for_value_higher_than_position(position, comparison, spacing):
	if position.x > comparison.x:
		position.x -= spacing.x * 16
	if position.y > comparison.y:
		position.y -= spacing.y * 16
	
	return position

func calculate_grid_position(grid_position, spacing):
	var block_in_pixels = 16
	grid_position.x = grid_position.x / block_in_pixels
	grid_position.y = grid_position.y / block_in_pixels
	
	grid_position.x = grid_position.x / spacing.x
	grid_position.y = grid_position.y / spacing.y
	
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
