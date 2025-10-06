extends Node

var handle_stats = preload("res://scripts/saving_loading/stats/handle_stats.gd").new()

func scr_read_stats():
	SavingLoading.load_game()

func scr_write_stats():
	handle_stats.write_stats_to_file()
