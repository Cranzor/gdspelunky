extends Node2D

@export var object_size: Vector2
@export var depth: int

func _ready():
	#--- set up AnimatedSprite2D and default sprite

	var animated_sprite = AnimatedSprite2D.new()
	var sprite_frames = SpriteFrames.new()

	var default_sprite_textures = ['image 0']

	sprite_frames.add_animation("olmec_start1")
	sprite_frames.remove_animation("default")

	for texture in default_sprite_textures:
		var sprite_texture = load("res://Sprites/Enemies/Olmec/olmec_start1.images" + "/" + texture + ".png")
		sprite_frames.add_frame("olmec_start1", sprite_texture)

	animated_sprite.sprite_frames = sprite_frames
	await get_tree().create_timer(2).timeout
	add_child(animated_sprite)
	animated_sprite.owner = get_tree().edited_scene_root
	animated_sprite.name = "AnimatedSprite2D"

	#--- add groups

	var groups = ['olmec', 'moving_solid', 'solid', 'drawn_sprite']

	for group in groups:
		add_to_group(group, true)

	#--- set size
	object_size = Vector2(64, 64)

	#--- set depth
	depth = 40
	z_index = depth
