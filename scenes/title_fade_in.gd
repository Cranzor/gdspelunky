extends Node2D

@onready var draw_text: Node2D = $DrawText
@onready var draw_rectangle: ColorRect = $DrawRectangle

signal hide_all_but_title

func _ready() -> void:
	SignalBus.draw_title_rect.connect(_draw_title)

func _draw_title() -> void: #--- moved this code from screen object
	var title = gml.get_instance("title")
	gml.surface_set_target("screen")
	gml.draw_set_alpha(title.darkness)
	gml.draw_set_color(gml.c_black)

	draw_rectangle.draw_rectangle(0, 0, 320, 240, false) #--- changed screen variables to pixel counts
	if (title.state == 1):
	
		gml.draw_set_font(global.my_font_small)
		gml.draw_set_color(gml.c_white)
		draw_text.draw_text(88, 48, "DEREK YU PRESENTS")

	#---
	if gml.draw_alpha == 0:
		print("disconnect")
		SignalBus.draw_title_rect.disconnect(_draw_title)
