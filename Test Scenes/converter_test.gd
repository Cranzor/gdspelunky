extends Node2D

@export var object_size: Vector2
@export var depth: int

func _ready():
	#--- set up AnimatedSprite2D and default sprite

	var animated_sprite = AnimatedSprite2D.new()
	var sprite_frames = SpriteFrames.new()

	var default_sprite_textures = ['image 0', 'image 1', 'image 2', 'image 3']

	sprite_frames.add_animation("alien")
	sprite_frames.remove_animation("default")

	for texture in default_sprite_textures:
		var sprite_texture = load("res://Sprites/Enemies/alien.images" + "/" + texture + ".png")
		sprite_frames.add_frame("alien", sprite_texture)

	animated_sprite.sprite_frames = sprite_frames
	await get_tree().create_timer(2).timeout
	add_child(animated_sprite)
	animated_sprite.owner = get_tree().edited_scene_root
	animated_sprite.name = "AnimatedSprite2D"

	#--- add groups

	var groups = ['alien', 'enemy', 'drawn_sprite']

	for group in groups:
		add_to_group(group, true)

	#--- set size
	object_size = Vector2(16, 16)

	#--- set depth
	depth = 60
	z_index = depth
