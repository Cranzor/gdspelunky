
extends Platform


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


func create():
	type = "tree leaves"
	if (gml.collision_point(position.x-16, position.y, "tree", 0, false)):

		sprite_index = "leaves_right"

	
#--- code is not used (commented out)
#func step():
	#    /*
#    if (position.x > view_xview[0]-16 and position.x < view_xview[0] + view_wview[0]+16 and:
#            position.y > view_yview[0]-16 and position.y < view_yview[0] + view_hview[0]+16)

#    if (not gml.collision_point(position.x-16, position.y, "tree_tile", 0, false) and not gml.collision_point(position.x+16, position.y, "tree_tile", 0, 0)):

#        gml.instance_destroy()


#    */
