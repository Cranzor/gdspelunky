
extends Platform


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func create():
    #    # action_inherited
#    super()

#    # main_code
#    if (global.cemetary): sprite_index = "tree_branch_dead_r"

    

#func destroy():
    #    if (sprite_index != "tree_branch_dead_l and sprite_index != s_tree_branch_dead_r):"

#        rubble = gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0,8), position.y+8+randi_range(0,8)-randi_range(0,8), Objects.leaf)


    

#func step():
    #    if (position.x > view_xview[0]-16 and position.x < view_xview[0] + view_wview[0]+16 and:
#            position.y > view_yview[0]-16 and position.y < view_yview[0] + view_hview[0]+16)

#    if (not gml.collision_point(position.x-16, position.y, "tree", 0, 0) and not gml.collision_point(position.x+16, position.y, "tree", 0, 0)):

#        gml.instance_destroy()
