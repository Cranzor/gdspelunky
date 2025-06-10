extends CanvasLayer

var sprites = Sprites.new()
var objects = ObjectDatabase.new()
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
	else:
		hide()
	
	if global.has_sticky_bombs:
		bomb_icon.hide()
		sticky_bomb_icon.show()
	else:
		bomb_icon.show()
		sticky_bomb_icon.hide()


	if player1:
		var pickup_item_type = player1.pickup_item_type
		if pickup_item_type:
			var type_without_spaces: String = pickup_item_type.replace(" ", "_")
			var sprite_name: String = objects.object_database[type_without_spaces]["sprite"]
			pickup_item.offset = get_sprite_offset(sprite_name)
			var sprite_frames: SpriteFrames = pickup_item.sprite_frames
			if sprite_frames.has_animation(sprite_name):
				pickup_item.play(sprite_name)
				pickup_item.show()
			else:
				pickup_item.hide()
		else:
			pickup_item.hide()
	else:
		pickup_item.hide()
	

func get_sprite_offset(sprite_name: String) -> Vector2:
	var origin: Vector2 = Sprites.sprite_database[sprite_name]["origin"]
	var offset: Vector2 = -origin
	return offset
