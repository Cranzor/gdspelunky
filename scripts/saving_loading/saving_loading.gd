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
	var path: String = "user://save.json"
	if !FileAccess.file_exists(path):
		save_game()
	var file: FileAccess = FileAccess.open(path, FileAccess.READ)
	var json = file.get_as_text()
	var saved_data = JSON.parse_string(json)
	handle_stats.set_values_from_stats(saved_data)
	for highscore in global.highscore:
		global.highscore[highscore] = saved_data["highscore" + str(highscore)]


static func save_settings() -> void:
	var game_settings: GameSettings = GameSettings.new()
	var settings_config: ConfigFile = ConfigFile.new()
	for setting in game_settings.default_setting_values:
		var value: Variant = game_settings.get(setting)
		settings_config.set_value("settings", setting, value)
	var path: String = "user://settings.cfg"
	settings_config.save(path)


static func load_settings() -> void:
	var game_settings: GameSettings = GameSettings.new()
	var settings_config: ConfigFile = ConfigFile.new()
	var path: String = "user://settings.cfg"
	if !FileAccess.file_exists(path):
		settings_config.save(path)
	var err: Error = settings_config.load("user://settings.cfg")
	if err == OK:
		for setting in game_settings.default_setting_values:
			var value: Variant = settings_config.get_value("settings", setting, game_settings.default_setting_values[setting])
			game_settings.set(setting, value)
