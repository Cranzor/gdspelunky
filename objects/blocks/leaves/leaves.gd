extends Platform


func _ready():
	object_setup()


#--- Object functions
var sprite_set


func create():
	if (global.cemetary): sprite_index = "leaves_dead"

	if (gml.collision_point(position.x-16, position.y, "tree", 0, 0) or gml.collision_point(position.x-16, position.y, "leaves", 0, 0)):

		if (global.cemetary): sprite_index = "leaves_dead_r"
		else: sprite_index = "leaves_right"


	sprite_set = false


func destroy():
	if (sprite_index != "leaves_dead" and sprite_index != "leaves_dead_r"):

		var rubble = gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0,8), position.y+8+randi_range(0,8)-randi_range(0,8), Objects.leaf, self)
		rubble = gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0,8), position.y+8+randi_range(0,8)-randi_range(0,8), Objects.leaf, self)


func step():
	if (not sprite_set):

		if ((gml.collision_point(position.x-16, position.y, "tree", 0, 0) or gml.collision_point(position.x-16, position.y, "leaves", 0, 0))and
		(gml.collision_point(position.x+16, position.y, "tree", 0, 0) or gml.collision_point(position.x+16, position.y, "leaves", 0, 0))):
	
			sprite_index = "leaves_top"
	


	if (position.x > gml.view("xview")-16 and position.x < gml.view("xview") + gml.view("wview")+16 and
		position.y > gml.view("yview")-16 and position.y < gml.view("yview") + gml.view("hview")+16):

		if (sprite_index == "leaves_top"):
	
			if ((not gml.collision_point(position.x-16, position.y, "tree", 0, 0) and not gml.collision_point(position.x-16, position.y, "leaves", 0, 0)) or
				(not gml.collision_point(position.x+16, position.y, "tree", 0, 0) and not gml.collision_point(position.x+16, position.y, "leaves", 0, 0))):
		
				gml.instance_destroy(self)
		
	
		elif (sprite_index == "leaves" or sprite_index == "leaves_dead"):
	
			if (not gml.collision_point(position.x+16, position.y, "tree", 0, 0) and not gml.collision_point(position.x+16, position.y, "leaves", 0, 0)):
		
				gml.instance_destroy(self)
		
	
		elif (sprite_index == "leaves_right" or sprite_index == "leaves_dead_r"):
	
			if (not gml.collision_point(position.x-16, position.y, "tree", 0, 0) and not gml.collision_point(position.x-16, position.y, "leaves", 0, 0)):
		
				gml.instance_destroy(self)
