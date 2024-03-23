extends Node2D

@export var brick_gold: Texture
@export var brick_gold_big: Texture

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	var n
	if (n == 1): pass

	n = randi_range(1,100)
	if (n < 20): $Sprite2D.texture = preload("res://brick_gold.png")
	elif (n < 30): $Sprite2D.texture = preload("res://brick_gold_big.png")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
