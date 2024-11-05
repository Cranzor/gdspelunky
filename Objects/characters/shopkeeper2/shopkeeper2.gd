
extends Shopkeeper


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
#    status = attack
#    ha"gun = false"
#    death_timer = 200

    

#func step():
    #    # action_inherited
#    super()

#    # main_code
#    if (status == dead):

#        if (death_timer > 0): death_timer -= 1
#        else:
    
#            MiscScripts.scr_create_blood(position.x+8, position.y+8, 3)
#            gml.instance_destroy()
