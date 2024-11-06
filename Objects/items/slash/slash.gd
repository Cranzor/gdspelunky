
extends Whip


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func animation_end():
    #    gml.instance_destroy()

    

#func create():
    #    # action_inherited
#    super()

#    # main_code
#    type = "Machete"
#    damage = 2
#    image_speed = 1
#    puncture = true

    

#func step():
    #    if (gml.instance_number(character) == 0):

#        gml.instance_destroy()

#    if (sprite_index = "slash_right):"

#        position.x = character.position.x+16
#        position.y = character.position.y

#    elif (sprite_index = "slash_left):"

#        position.x = character.position.x-16
#        position.y = character.position.y
