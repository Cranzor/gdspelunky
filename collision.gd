extends Node

func can_land_on_platforms(node):
	#/*
	#Returns whether the current object is allowed to land on platforms.
	#Currently, only the players can land on platforms.
	#To make certain enemies able to land on platforms, edit this script.
	#*/
	
	var node_groups = node.get_groups()
	if node_groups.has('character'):
		return true

func can_push_moveable_solids(node):
	#/*
	#Returns whether the current object can push moveable solids.
	#Currently, it returns whether the current object is a player.
	#If you want certain enemies to be able to push moveable solids, edit this script.
	#*/
	var node_groups = node.get_groups()
	if node_groups.has('character'):
		return true
		
func get_id_collision_character():
	pass
func is_collision_character():
	pass
func is_collision_ladder():
	pass
func is_collision_platform():
	pass
func is_collision_solid():
	pass
func set_collision_bounds(node, left_x, top_y, right_x, bottom_y):
	#/*
	#Sets the collision bounds which are relative to the origin of the sprites.
	#0:left x
	#1:top y
	#2:right x
	#3:bottom y
	#*/
	
	var passed_node = node
	var collision_shape = node.get_node("Area2D/CollisionShape2D")
	collision_shape.position.x = 0
	collision_shape.position.y = 0
	
	
	var x1 = left_x
	var y1 = top_y
	var x2 = right_x
	var y2 = bottom_y
	
	var convex_polygon = ConvexPolygonShape2D.new()
	convex_polygon.points = PackedVector2Array([Vector2(x1, y1), Vector2(x1, y2), Vector2(x2, y2), Vector2(x2, y1)])
	collision_shape.shape = convex_polygon
	
#---Hidden---
func calculate_collision_bounds(x, y, node):
	pass
	#get node, get collision shape, and then get the size and add that to x and y
