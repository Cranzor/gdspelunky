
extends MoveableSolid


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
#    invincible = false
#    Collision.set_collision_bounds(0, 0, 16, 16)
#    if (global.city_of_gold): sprite_index = "gold_block"
#    clean_death = false

    

#func destroy():
    #    if (not clean_death and not global.clean_solids):

#        for repetition in range(1, 3):
    
#            gml.instance_create(position.x+randi_range(0,16), position.y+randi_range(0,16), Objects.drip)
    


    

#func step():
    #    # action_inherited
#    super()

#    # main_code
#    if (gml.collision_point(position.x+8, position.y+16, "lava", 0, 0) and not gml.collision_point(position.x+8, position.y+17, "solid", 0, 0)):

#        y_vel = 0
#        my_grav = 0
#        position.y += 0.05

#    if (position.y > 576): gml.instance_destroy()
