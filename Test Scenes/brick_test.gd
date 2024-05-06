extends Solid

@export var brick_gold: Texture
@export var brick_gold_big: Texture
var up
var down
var left
var right

# Called when the node enters the scene tree for the first time.
func _ready():
	type = "Brick" #--- 'type' exists in DrawnSprite, so setting this here
	
	randomize()
	var n
	if (n == 1): pass

	n = randi_range(1,100)
	if (n < 20): $Sprite2D.texture = preload("res://brick_gold.png")
	elif (n < 30): $Sprite2D.texture = preload("res://brick_gold_big.png")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
