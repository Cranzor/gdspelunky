extends CanvasLayer

@onready var bomb_icon = $InGame/BombIcon
@onready var sticky_bomb_icon = $InGame/StickyBombIcon
@onready var pickup_item = $InGame/PickupItem
@onready var item_icons = $InGame/ItemIcons
@onready var compass_arrows = $InGame/CompassArrows
@onready var draw_text = $InGame/DrawText


#--- change this to update in gm_loop
func _physics_process(delta: float) -> void:
	var player1 = gml.get_instance("player1")
	if global.draw_hud and player1:
		show()
		item_icons.draw_icons()
		pickup_item.draw_pickup_item()
	else:
		propagate_call("hide")
	
	if global.has_sticky_bombs:
		bomb_icon.hide()
		sticky_bomb_icon.show()
	else:
		bomb_icon.show()
		sticky_bomb_icon.hide()
	
	compass_arrows.hide()
	draw_compass_arrow()
	draw_hud_text()
	

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
	draw_text.draw_text(life_x+16, 8, str(life), "life")
	draw_text.draw_text(bomb_x+16, 8, str(global.bombs), "global_bombs")
	draw_text.draw_text(rope_x+16, 8, str(global.rope), "global_rope")
	draw_text.draw_text(money_x+16, 8, str(global.money), "global_money")
	
	if (global.collect > 0):
		gml.draw_set_font(global.my_font_small)
		gml.draw_set_color(gml.c_yellow)
		draw_text.draw_text(money_x, 8+16, "+" + str(global.collect), "global_collect")
