extends Sprite2D

@export var brick_textures: Array[Texture2D]
@export var lush_textures: Array[Texture2D]
@export var dark_textures: Array[Texture2D]
@export var temple_textures: Array[Texture2D]

@onready var room_to_textures: Dictionary = {
	"title" : brick_textures,
	"transition1" : brick_textures,
	"transition1x" : brick_textures,
	"transition2" : lush_textures,
}

var texture_size_in_blocks: Vector2 = Vector2(10, 8)
var block_size: Vector2 = Vector2(16, 16)
var default_region_size = Vector2(320, 240)

func _ready() -> void:
	var room_name: String = gml.room_get_name()
	if room_name in room_to_textures:
		generate_texture(room_name)
		set_size(2)


func generate_texture(room_name: StringName) -> void:
	var texture_size_in_pixels: Vector2 = texture_size_in_blocks * block_size
	var composite_image: Image = Image.create_empty(texture_size_in_pixels.x, texture_size_in_pixels.y, false, Image.FORMAT_RGBA8)
	var textures_to_use: Array[Texture2D] = room_to_textures[room_name]
	
	var x: int = 0
	var y: int = 0
	
	for block in texture_size_in_blocks.x * texture_size_in_blocks.y:
		var block_coords: Vector2 = Vector2(x, y)
		var block_image: Image = textures_to_use[0].get_image()
		
		var n: int = randi_range(1, 100)
		if n < 20: block_image = textures_to_use[1].get_image()
		elif n < 30: block_image = textures_to_use[2].get_image()
		
		composite_image.blit_rect(block_image, Rect2i(Vector2.ZERO, block_size), Vector2(x, y) * block_size)
		
		x += 1
		if x > texture_size_in_blocks.x -1:
			x = 0
			y += 1
	
	var composite_texture: Texture2D = ImageTexture.create_from_image(composite_image)
	texture = composite_texture
	

func set_size(multipier: int):
	var pixels: int = multipier * default_region_size.x
	offset.x = -pixels
	var screens: int = multipier * 2 + 1
	region_rect = Rect2(0, 0, default_region_size.x * screens, 240)
