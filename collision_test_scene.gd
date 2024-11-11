extends Node2D


func _ready():
	gml.instance_create(0, 0, Objects.gold_door)
	gml.instance_create(16, 0, Objects.ice)
	#gml.instance_create(100, 10, Objects.sceptre)
