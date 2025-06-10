extends AnimatedSprite2D

var sprites = Sprites.new()
var objects = ObjectDatabase.new()
enum {HUD, DUMMY}
@export_enum("HUD", "DUMMY") var type: int

func _ready() -> void:
	if type == HUD:
		position = Vector2(16, 32)
	elif type == DUMMY:
		position = Vector2(4, 2)
	
	if global.pickup_item and type == DUMMY:
		draw_pickup_item()


func draw_pickup_item():
	if type == HUD:
		var player1 = gml.get_instance("player1")
		var pickup_item_type = player1.pickup_item_type
		if pickup_item_type:
			set_sprite(pickup_item_type)
		else:
			hide()

	elif type == DUMMY:
		var pickup_item_type = global.pickup_item
		if pickup_item_type:
			set_sprite(pickup_item_type)
		else:
			hide()

func get_sprite_offset(sprite_name: String) -> Vector2:
	var origin: Vector2 = Sprites.sprite_database[sprite_name]["origin"]
	var offset: Vector2 = -origin
	return offset


func set_sprite(pickup_item_type):
	var type_without_spaces: String = pickup_item_type.replace(" ", "_")
	var sprite_name: String = objects.object_database[type_without_spaces]["sprite"]
	offset = get_sprite_offset(sprite_name)
	var sprite_frames_node: SpriteFrames = sprite_frames
	if sprite_frames_node.has_animation(sprite_name):
		play(sprite_name)
		show()
	else:
		hide()
