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
		
func get_id_collision_character(): # --- doesn't seem to be used anywhere
	pass
	
func is_collision_character(): # --- doesn't seem to be used anywhere
	pass
	
func is_collision_ladder(node):
	#/*
	#Returns whether the object invoking this script is colliding with a ladder.
	#return
	#0:no collision
	#1:collision
	#*/
	
	var all_points_exact = calculate_collision_bounds(node)
	var lb = all_points_exact.w
	var tb = all_points_exact.x
	var rb = all_points_exact.y
	var bb = all_points_exact.z
	
	if (await gml.collision_rectangle(lb+8,tb+8,rb-8,bb-8,'ladder_top',1,1) > 0):
		return true
	else: return await gml.collision_rectangle(lb+8,tb+8,rb-8,bb-8,'ladder',1,1)>0
	
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
func calculate_collision_bounds(node):
	var passed_node = node
	var collision_shape = node.get_node("Area2D/CollisionShape2D")
	var points = collision_shape.shape.points
	
	var lb = node.position.x + points[0][0]
	var tb = node.position.y + points[0][1]
	var rb = node.position.x + points[2][0]
	var bb = node.position.y + points[1][1]
	
	var all_points_exact = Vector4(lb, tb, rb, bb)
	return(all_points_exact)
