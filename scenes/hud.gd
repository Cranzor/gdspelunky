extends CanvasLayer

@onready var bomb_icon = $BombIcon
@onready var sticky_bomb_icon = $StickyBombIcon
@onready var pickup_item = $PickupItem
@onready var item_icons = $ItemIcons
@onready var compass_arrows = $CompassArrows

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
