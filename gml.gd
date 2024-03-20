extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func string_char_at(str,index):
	var char = str[index]
	return char

func string_delete(str,index,count):
	str.erase(index, count)
	return str
	
func string_insert(substr,str,index):
	str.insert(substr, index)
	return str

func instance_create(x,y,obj): #should return the node as this is used in scripts
	var instance = obj.instantiate()
	add_child(instance)
	instance.position.x = x
	instance.position.y = y

func collision_point(x, y, z, u, v): #temporary to resolve errors
	pass
	
func tile_add(x, y, z, u, v, a, b, c): #temporary to resolve errors
	pass
	
func scr_generate_item()
