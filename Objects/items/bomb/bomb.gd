
extends Item


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func alarm 0():
    #    image_speed = 1
#    alarm_1(40)

    

#func alarm 1():
    #    gml.instance_create(position.x, position.y, Objects.explosion)
#    if (global.graphics_high):

#        MiscScripts.scr_create_flame(position.x, position.y, 3)


#    if (held):

#        if (character): character.hold_item = 0

#    gml.instance_destroy()

    

#func create():
    #    # action_inherited
#    super()

#    # main_code
#    type = "Bomb"
#    PlatformEngine.make_active(self)
#    Collision.set_collision_bounds(self, -4, -4, 4, 4)

    

#func destroy():
    #    if (enemy_id):

#        enemy_id.bomb_id = 0


    

#func end step():
    #    # action_inherited
#    super()

#    # main_code
#    if (!gml.instance_exists("enemy_id")):

#        enemy_id = 0


#    if (enemy_id != 0):

#        position.x = enemy_id.position.x-sticky_x_diff
#        position.y = enemy_id.position.y-sticky_y_diff


    

#func step():
    #    # action_inherited
#    super()

#    # main_code
#    if (sprite_index = "bomb_armed): depth = 49"
#    if (sticky): depth = 1

#    if (armed and gml.instance_exists("shopkeeper")):

#        if ((global.room_path[[LevelGeneration.scr_get_room_x(position.x), LevelGeneration.scr_get_room_y(position.y)]] == 4 or:
#            global.room_path[[LevelGeneration.scr_get_room_x(position.x), LevelGeneration.scr_get_room_y(position.y)]] == 5) and
#            gml.distance_to_object(shopkeeper) < 96)
    
#            with shopkeeper
        
#                InLevel.scr_shopkeeper_anger(2)
