extends Label

@onready var player = get_parent()
var animated_sprite: AnimatedSprite2D

# Called when the node enters the scene tree for the first time.
func _ready():
	animated_sprite = player.get_node("Node").get_node("AnimatedSprite2D")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	text = str(player.sprite_index).to_upper()
	#print(str(animated_sprite.animation) + str(animated_sprite.offset) + str(animated_sprite.flip_h))
