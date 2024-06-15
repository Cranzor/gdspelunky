extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	$Desert.sprite_index = "desert_night"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print($Desert.sprite_index)
