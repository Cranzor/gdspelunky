
extends DrawnSprite


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func animation_end():
    #    if (sprite_index == "skeleton_create_l):"

#        gml.instance_create(position.x, position.y, Objects.skeleton)
#        gml.instance_destroy()


    

#func create():
    #    # action_inherited
#    super()

#    # main_code
#    y_vel = 0
#    y_acc = 0.2

    

#func step():
    #    if ((position.x > view_xview[0]-16 and position.x < view_xview[0] + view_wview[0] and:
#            position.y > view_yview[0]-16 and position.y < view_yview[0] + view_hview[0]))

#    if (not gml.collision_point(position.x+8, position.y+16, "solid", 0, 0)):

#        position.y += y_vel
#        y_vel += y_acc


#    if (gml.collision_point(position.x+8, position.y+15, "solid", 0, 0)):

#        position.y -= 1


#    if (abs(player1.position.y-(position.y+8)) < 8 and abs(player1.position.x-(position.x+8)) < 64):

#        sprite_index = "skeleton_create_l"
