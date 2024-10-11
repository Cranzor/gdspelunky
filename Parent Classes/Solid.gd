@icon("res://sprites/blocks/mines/brick_gold/brick_gold_0.png")
extends DrawnSprite
class_name Solid

var shop_wall
var treasure
var clean_death

var up
var down
var left
var right

func _ready():
	drawn_sprite_create()
	sprite
	solid = false
	visible = true
	depth = 100
	persistent = false
	parent = 'DrawnSprite'
	mask

func solid_create():
	drawn_sprite_create()
	invincible = false
	shop_wall = false
	type = "None"
	treasure = ""
	clean_death = false

func solid_destroy():
	pass
