extends Node2D

@onready var background1: Sprite2D = $Background1
@onready var background2: Sprite2D = $Background2
@export var brick_textures: Array[Texture2D]
@export var lush_textures: Array[Texture2D]
@export var dark_textures: Array[Texture2D]
@export var temple_textures: Array[Texture2D]

@onready var room_to_textures: Dictionary = {
	"transition1x" : [brick_textures, lush_textures],
	"transition2" : [lush_textures],
	"transition2x" : [lush_textures, dark_textures],
	"transition3" : [dark_textures],
	"transition3x" : [dark_textures, temple_textures],
	"transition4" : [temple_textures],
	"other" : [brick_textures],
}

var texture_size_in_blocks: Vector2 = Vector2(10, 8)
var block_size: Vector2 = Vector2(16, 16)
var default_region_size = Vector2(320, 240)


func _ready() -> void:
	var room_name: String = gml.room_get_name()
	set_up_background(room_name)


func set_up_background(room_name: StringName) -> void:
	var level_textures: Array
	if room_name not in room_to_textures: level_textures = room_to_textures["other"]
	else: level_textures = room_to_textures[room_name]
	var composite_texture: Texture2D = generate_texture(level_textures[0])
	background1.texture = composite_texture
	
	if room_name == "title": #--- special handling for title screen (see set_size() function)
		background2.texture = composite_texture
		set_size(2, room_name, true)
	elif level_textures.size() == 1:
		set_size(2, room_name)
	elif level_textures.size() > 1:
		composite_texture = generate_texture(level_textures[1])
		background2.texture = composite_texture
		set_size(2, room_name, true)


func generate_texture(textures_to_use: Array[Texture2D]):
	var texture_size_in_pixels: Vector2 = texture_size_in_blocks * block_size
	var composite_image: Image = Image.create_empty(texture_size_in_pixels.x, texture_size_in_pixels.y, false, Image.FORMAT_RGBA8)


	var x: int = 0
	var y: int = 0
	
	for block in texture_size_in_blocks.x * texture_size_in_blocks.y:
		var block_coords: Vector2 = Vector2(x, y)
		var block_image: Image = textures_to_use[0].get_image()
		
		if textures_to_use == brick_textures:
			var n = randi_range(1,10)
			if (n == 1): block_image = textures_to_use[3].get_image()
		
		var n: int = randi_range(1, 100)
		if n < 20: block_image = textures_to_use[1].get_image()
		elif n < 30: block_image = textures_to_use[2].get_image()
		
		if textures_to_use == temple_textures and global.city_of_gold:
			block_image = textures_to_use[3].get_image()
		
		composite_image.blit_rect(block_image, Rect2i(Vector2.ZERO, block_size), Vector2(x, y) * block_size)
		
		x += 1
		if x > texture_size_in_blocks.x -1:
			x = 0
			y += 1
	
	var composite_texture: Texture2D = ImageTexture.create_from_image(composite_image)
	return composite_texture


func set_size(multipier: int, room_name: StringName, both_displayed: bool = false):
	var room_height: int = int(Rooms.room_database[room_name]["room"]["size"]["height"])
	var pixels: int = multipier * default_region_size.x
	background1.offset.x = -pixels
	if not both_displayed:
		var screens: int = multipier * 2 + 1
		background1.region_rect = Rect2(0, 0, default_region_size.x * screens, room_height)
	else:
		var background1_screens: int = multipier + 1
		background1.region_rect = Rect2(0, 0, default_region_size.x * background1_screens, room_height)
		var background2_screens: int = multipier
		background2.offset.x = default_region_size.x
		background2.region_rect = Rect2(0, 0, default_region_size.x * background2_screens, room_height)
		#--- title screen has special handling to cover the shortcut area if it's not unlocked
		#--- the condition for not covering it is taken from the title object (when creating ladders). format with "pass" is just for clarity
		if room_name == "title":
			if (global.tunnel1 == 0 or (global.tunnel1 > 0 and global.tunnel2 == 0)): pass
			else: background1.z_index = 10
