extends Node
class_name SavingLoading


static func save_game() -> void:
	var handle_stats = load("res://scripts/saving_loading/stats/handle_stats.gd").new()
	var saved_data: Dictionary = handle_stats.generate_dictionary()
	for highscore in global.highscore:
		saved_data["highscore" + str(highscore)] = global.highscore[highscore]
	var file: FileAccess = FileAccess.open("user://save.json", FileAccess.WRITE)
	var json = JSON.stringify(saved_data)
	file.store_string(json)
	file.close()


static func load_game() -> void:
	var handle_stats = load("res://scripts/saving_loading/stats/handle_stats.gd").new()
	var file: FileAccess = FileAccess.open("user://save.json", FileAccess.READ)
	var json = file.get_as_text()
	var saved_data = JSON.parse_string(json)
	handle_stats.set_values_from_stats(saved_data)
