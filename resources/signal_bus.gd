extends Node

signal game_paused(paused: bool)
signal game_unpaused
signal menu_screen_change_requested(requesting_screen, next_screen)
signal end_adventure
signal draw_title_rect
signal dark_level_started
signal dark_level_circle_color_updated(color: Color)
signal darkness_updated(darkess: float)
signal scene_changed
