
extends DrawnSprite


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
#    shop_wall = false
#    type = "none"
#    treasure = ""
#    clean_death = false

    

#func destroy():
    #    if (shop_wall):

#        with shopkeeper
    
#            InLevel.scr_shopkeeper_anger(1)
    


#    if (gml.collision_point(position.x+8, position.y-1, "spikes", 0, 0)):

#        obj = gml.instance_place(position.x+8, position.y-1, spikes)
#        with obj  gml.instance_destroy() 

#    if (gml.collision_point(position.x+8, position.y-1, "tiki_torch", 0, 0)):

#        obj = gml.instance_place(position.x+8, position.y-1, tiki_torch)
#        with obj  gml.instance_destroy() 

#    if (gml.collision_point(position.x+8, position.y-1, "grave", 0, 0)):

#        obj = gml.instance_place(position.x+8, position.y-1, grave)
#        with obj  gml.instance_destroy() 

#    if (gml.collision_point(position.x+8, position.y+18, "lamp_red", 0, 0)):

#        obj = gml.instance_place(position.x+8, position.y+16, lamp_red)
#        with obj  gml.instance_create(position.x+8, position.y+12, Objects.lamp_red_item) gml.instance_destroy() 

#    if (gml.collision_point(position.x+8, position.y+18, "lamp", 0, 0)):

#        obj = gml.instance_place(position.x+8, position.y+16, lamp)
#        with obj  gml.instance_create(position.x+8, position.y+12, Objects.lamp_item) gml.instance_destroy() 


#    global.check_water = true
