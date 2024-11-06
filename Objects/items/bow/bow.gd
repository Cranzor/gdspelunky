
extends Item


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
#    type = "Bow"
#    PlatformEngine.make_active(self)
#    Collision.set_collision_bounds(self, -4, -4, 4, 4)
#    cost = 1000
#    shop_desc = "BOW AND ARROWS"
#    buy_message = "BOW AND ARROWS FOR $" + str(cost) + "."
#    image_speed = 0

    

#func step():
    #    # action_inherited
#    super()

#    # main_code
#    if (held):

#        if (player1.facing == 18): sprite_index = "bow_left"
#        else: sprite_index = "bow_right"
#    /*
#        if (check_left() and not check_right()): sprite_index = "bow_left"
#        if (check_right() and not check_left()): sprite_index = "bow_right"
#    */    
#        if (player1.bow_strength >= 10): image_index = 3
#        elif (player1.bow_strength > 6): image_index = 2
#        elif (player1.bow_strength > 2): image_index = 1
#        else: image_index = 0

#    else:

#        image_index = 0
