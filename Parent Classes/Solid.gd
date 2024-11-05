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

func create():
	super()
	invincible = false
	shop_wall = false
	type = "None"
	treasure = ""
	clean_death = false

func destroy(): #--- have to implement
	pass
