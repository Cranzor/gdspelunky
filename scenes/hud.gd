extends CanvasLayer

@onready var bomb_icon = $BombIcon
@onready var sticky_bomb_icon = $StickyBombIcon
@onready var pickup_item = $PickupItem
@onready var item_icons = $ItemIcons

#--- change this to update in gm_loop
func _physics_process(delta: float) -> void:
	var player1 = gml.get_instance("player1")
	if global.draw_hud and player1:
		show()
		item_icons.draw_icons()
		pickup_item.draw_pickup_item()
	else:
		hide()
	
	if global.has_sticky_bombs:
		bomb_icon.hide()
		sticky_bomb_icon.show()
	else:
		bomb_icon.show()
		sticky_bomb_icon.hide()
	
