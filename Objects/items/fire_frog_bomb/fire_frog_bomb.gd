
extends Item


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func alarm 1():
    #    gml.instance_create(position.x, position.y, Objects.explosion)
#    MiscScripts.scr_create_blood(position.x, position.y, 3)
#    if (global.graphics_high):

#        MiscScripts.scr_create_flame(position.x, position.y, 3)


#    if (held):

#        if (character): character.hold_item = 0

#    gml.instance_destroy()

    

#func create():
    #    # action_inherited
#    super()

#    # main_code
#    type = "Fire Frog Bomb"
#    PlatformEngine.make_active(self)
#    Collision.set_collision_bounds(self, -6, -4, 6, 8)
#    alarm_1(120)
#    heavy = true
#    bloodless = false
#    swimming = false

    

#func step():
    #    # action_inherited
#    super()

#    # main_code
#    if (armed and gml.instance_exists("shopkeeper")):

#        if ((global.room_path[[LevelGeneration.scr_get_room_x(position.x), LevelGeneration.scr_get_room_y(position.y)]] == 4 or:
#            global.room_path[[LevelGeneration.scr_get_room_x(position.x), LevelGeneration.scr_get_room_y(position.y)]] == 5) and
#            gml.distance_to_object(shopkeeper) < 96)
    
#            with shopkeeper
        
#                InLevel.scr_shopkeeper_anger(2)
        
    


#    if (gml.collision_point(position.x, position.y, "water_swim", -1, -1)):

#        if (not swimming):
    
#            gml.instance_create(position.x, position.y, Objects.splash)
#            swimming = true
#            Audio.play_sound(global.snd_splash)
    

#    else:

#        swimming = false
