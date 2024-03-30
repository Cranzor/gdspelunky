extends Node

#For tile_add
@export_dir var bg_folder
@export var bg_holder_path: String
var bg_dict = {'background_clouds': 0 , 'background_night' : 1, 'bg_alien_ship' : 2, 'bg_alien_ship2' : 3, 'bg_alien_ship3' : 4, 'bg_cave' : 5, 'bg_cave_top' : 6,
	'bg_cave_top2' : 7, 'bg_cave_top3' : 8, 'bg_cave_top4' : 9, 'bg_clouds' : 10, 'bg_dice_sign' : 11, 'bg_extras' : 12, 'bg_extras_ice' : 13, 'bg_extras_lush' : 14,
	'bg_extras_temple' : 15, 'bg_hmm' : 16, 'bg_kali_body' : 17, 'bg_kali_heads' : 18, 'bg_lady_xoc' : 19, 'bg_sky' : 20, 'bg_statues' : 21, 'bg_temp' : 22, 'bg_temple' : 23,
	'bg_tiki' : 24, 'bg_tiki_arms' : 25, 'bg_title' : 26, 'bg_trees' : 27, 'bg_wanted' : 28}
	


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func string_char_at(str,index):
	var char = str[index - 1]
	return char

func string_delete(str,index,count):
	str.erase(index, count)
	return str
	
func string_insert(substr,str,index):
	str.insert(index, substr)
	return str
	
func instance_exists(obj):
	var existence = get_tree().get_nodes_in_group(str(obj))
	if existence == []:
		return false
	else:
		return true

#-----------------------Have to work on
func instance_create(x,y,obj): #should return the node as this is used in scripts
	var instance = obj.instantiate()
	add_child(instance)
	instance.position.x = x
	instance.position.y = y
	return instance

func collision_point(x,y,obj: String,prec,notme): #temporary to resolve errors. works fine for now since RoomGen checks that this is false. can't implement until objects have collision
	#"This function tests whether at point (x,y) there is a collision with entities of object obj."
	pass

#Always adds bg elements
func tile_add(background,left,top,width,height,x,y,depth): #return value of tile as well. left: left to right value in pixels. top: top to bottom in pixels
	var tile_set_name = str(background)
	var tile_id = bg_dict[tile_set_name]
	var coords = Vector2(0, -1)
	var size = Vector2(1, 1)
	var coords_array = []
	y = y / 16
	x = x / 16
	
	if left == 0:
		pass
	else:
		coords.x = left / 16
		
	if top == 0:
		pass
	else:
		coords.y = top / 16 - 1
		
	if width == 16:
		pass
	else:
		size.x = width / 16
	
	if height == 16:
		pass
	else:
		size.y = height / 16
	
	var cur_scene = get_tree().current_scene
	var bg_elements = cur_scene.get_node('BgElements')
	
	#coords.y -= 1
	print(coords.y)
	for i in range(0, size.y):
		y = y + 1
		coords.y += 1
		for j in range(0, size.x):
			bg_elements.set_cell(0, Vector2i(x + j, y - 1), tile_id, Vector2i(coords.x + j, coords.y))

func distance_tobject(obj, x, y):
	if instance_exists(obj) == true:
		get_tree().get_nodes_in_group(str(obj))
		#var distance = 
		
func instance_place(x,y,obj): #' Returns the id of the instance of type obj met when the current instance is placed at position (x,y). obj can be an object or the keyword all. If it does not exist, the special object noone is returned.'
	pass
	
func instance_destroy(): #'Destroys current instance'
	pass
#---------------------------------------
func background_index(background: String): #Changing this to a function
	pass

func get_all_instances(group: String): #Replacement for 'with' keyword
	pass

#------------------------
func singleton_test():
	var bg_holder_list = get_tree().get_nodes_in_group('BgHolder')
	var bg_holder = bg_holder_list[0]
	var tile_map = TileMap.new()
	bg_holder.add_child(tile_map)
	bg_holder


#-------Support functions
