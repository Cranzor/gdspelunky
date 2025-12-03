extends Solid


func _ready():
	object_setup()


#--- Object functions


func create():
	# action_inherited
	super()

	# main_code
	#--- no code


func destroy():
	# action_inherited
	super()

	# main_code
	gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0,-8), position.y+8+randi_range(0,8)-randi_range(0,-8), Objects.rubble_dark, self) #--- [FLAG] looking at other scripts, "0-8" appears to be a mistake. will try to keep as is but may fix is behavior in Godot doesn't work correctly
	gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0,-8), position.y+8+randi_range(0,8)-randi_range(0,-8), Objects.rubble_dark_small, self)
	gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0,-8), position.y+8+randi_range(0,8)-randi_range(0,-8), Objects.rubble_dark_small, self)
