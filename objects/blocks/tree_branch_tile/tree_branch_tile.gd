extends Platform


func _ready():
	object_setup()


#--- Object functions


func create():
	# action_inherited
	super()

	# main_code
	type = "tree branch"

	
#--- code is not used (commented out)
#func step():
	#    /*
#    if (position.x > view_xview[0]-16 and position.x < view_xview[0] + view_wview[0]+16 and:
#            position.y > view_yview[0]-16 and position.y < view_yview[0] + view_hview[0]+16)

#    if (not gml.collision_point(position.x-16, position.y, "tree_tile", 0, 0) and not gml.collision_point(position.x+16, position.y, "tree_tile", 0, 0)):

#        gml.instance_destroy()


#    */
