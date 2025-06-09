extends CanvasLayer

var sprites = Sprites.new()
@onready var bomb_icon = $BombIcon
@onready var sticky_bomb_icon = $StickyBombIcon
@onready var pickup_item = $PickupItem

#--- change this to update in gm_loop
func _physics_process(delta: float) -> void:
	if global.has_sticky_bombs:
		bomb_icon.hide()
		sticky_bomb_icon.show()
	else:
		bomb_icon.show()
		sticky_bomb_icon.hide()

	var player1 = gml.get_instance("player1")
	if player1:
		var pickup_item_type = player1.pickup_item_type
		if pickup_item_type:
			pickup_item.offset = get_sprite_offset(pickup_item_type)
			pickup_item.play(pickup_item_type)
			pickup_item.show()
		else:
			pickup_item.hide()
	else:
		pickup_item.hide()
		

func get_sprite_offset(sprite_name: String) -> Vector2:
	var origin: Vector2 = Sprites.sprite_database[sprite_name]["origin"]
	var offset: Vector2 = -origin
	return offset
