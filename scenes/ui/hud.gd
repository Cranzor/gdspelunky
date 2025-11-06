extends CanvasLayer

@onready var bomb_icon = $InGame/BombIcon
@onready var sticky_bomb_icon = $InGame/StickyBombIcon
@onready var pickup_item = $InGame/PickupItem
@onready var item_icons = $InGame/ItemIcons
@onready var compass_arrows = $InGame/CompassArrows
@onready var hud_text = $InGame/HUDText
@onready var global_message = $InGame/GlobalMessage
@onready var in_game = $InGame
@onready var pause_screen = $PauseScreen
@onready var title_fade_in = $TitleFadeIn
@onready var new_pause_menu: Control = $NewPauseMenu
@onready var pause_handling: PauseHandling = load("res://scenes/ui/pause_handling.gd").new()

#--- change this to update in gm_loop
func _physics_process(delta: float) -> void:
	var player1 = gml.get_instance("player1")
	if global.draw_hud and player1:
		show()
		item_icons.draw_icons()
		pickup_item.draw_pickup_item()
	elif gml.room_get_name() == "title":
		handle_title_hud()
	else:
		show()
		in_game.hide()
	
	if global.has_sticky_bombs:
		bomb_icon.hide()
		sticky_bomb_icon.show()
	else:
		bomb_icon.show()
		sticky_bomb_icon.hide()
	
	compass_arrows.hide()
	draw_compass_arrow()
	draw_hud_text()
	draw_global_message_text()


func _ready() -> void:
	pause_handling.classic_pause_screen = pause_screen
	pause_handling.new_pause_menu = new_pause_menu
	SignalBus.connect("game_unpaused", _game_unpaused)
	SignalBus.connect("end_adventure", _end_adventure)


func draw_compass_arrow() -> void:
	if global.has_compass and InLevel.is_level() and gml.instance_exists("player1"):
		if (global.exit_y > gml.view_yview + 240):
			if (global.exit_x < gml.view_xview):
				if global.message_timer > 0: compass_arrows.draw_compass_arrow(Vector2(0, 224), "compass_small_ll")
				else: compass_arrows.draw_compass_arrow(Vector2(0, 224), "compass_ll")
			elif (global.exit_x > gml.view_xview+320-16):
				if (global.message_timer > 0): compass_arrows.draw_compass_arrow(Vector2(304, 224), "compass_small_lr")
				else: compass_arrows.draw_compass_arrow(Vector2(304, 224), "compass_lr")
			else:
				if (global.message_timer > 0): compass_arrows.draw_compass_arrow(Vector2(global.exit_x - gml.view_xview, 224), "compass_small_down")
				else: compass_arrows.draw_compass_arrow(Vector2(global.exit_x - gml.view_xview, 224), "compass_down")
		elif (global.exit_x < gml.view_xview):
			if global.message_timer: compass_arrows.draw_compass_arrow(Vector2(0, global.exit_y - gml.view_yview), "compass_small_left")
			else: compass_arrows.draw_compass_arrow(Vector2(0, global.exit_y - gml.view_yview), "compass_left")
		elif (global.exit_x > gml.view_xview+320-16):
			if global.message_timer > 0: compass_arrows.draw_compass_arrow(Vector2(304, global.exit_y - gml.view_yview), "compass_small_right")
			else: compass_arrows.draw_compass_arrow(Vector2(304, global.exit_y - gml.view_yview), "compass_right")


func draw_hud_text(): #--- moving this from screen object as it's more appropriate here
	gml.draw_set_font(global.my_font)
	gml.draw_set_color(gml.c_white)
	var life_x = 8
	var bomb_x = 64
	var rope_x = 120
	var money_x = 176
	var life = global.plife
	if (life < 0): life = 0
	hud_text.draw_text(life_x+16, 8, str(life), "life")
	hud_text.draw_text(bomb_x+16, 8, str(global.bombs), "global_bombs")
	hud_text.draw_text(rope_x+16, 8, str(global.rope), "global_rope")
	hud_text.draw_text(money_x+16, 8, str(global.money), "global_money")
	
	if (global.collect > 0):
		gml.draw_set_font(global.my_font_small)
		gml.draw_set_color(gml.c_yellow)
		hud_text.draw_text(money_x, 8+16, "+" + str(global.collect), "global_collect")


func draw_global_message_text(): #--- moved from screen object
	if (global.message_timer > 0):
		gml.draw_set_font(global.my_font_small)
		gml.draw_set_color(gml.c_white)
		var str_len = gml.string_length(global.message)*8
		var n = 320 - str_len
		n = ceil(n / 2)
		hud_text.draw_text(n, 216, str(global.message), "global_message")

		var text_color = gml.c_white
		if (not InLevel.is_room("tutorial")): gml.draw_set_color(gml.c_yellow)
		str_len = gml.string_length(global.message2)*8
		n = 320 - str_len
		n = ceil(n / 2)
		hud_text.draw_text(n, 224, str(global.message2), "global_message2")

		global.message_timer -= 1


func handle_title_hud():
	in_game.hide()
	title_fade_in.show()
	show()


func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("start"):
		pause_handling.pause_button_pressed(event)


func _game_unpaused() -> void:
	pause_handling.pause_handling()


func _end_adventure() -> void:
	pause_handling.end_adventure()
