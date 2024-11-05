
extends Solid


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func alarm 0():
    #    arrow = gml.instance_create(position.x-16, position.y+4, Objects.arrow)
#    arrow.x_vel = -5

    

#func create():
    #    # action_inherited
#    super()

#    # main_code
#    fired = 0
#    fired_max = 50
#    prox = 4
#    invincible = false
#    image_speed = 0.5
#    # dy:  alarm_0(50)

    

#func destroy():
    #    if (not clean_death and not global.clean_solids):

#        rubble = gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0,8), position.y+8+randi_range(0,8)-randi_range(0,8), Objects.rubble)
#        rubble.sprite_index = "rubble_tan"
#        rubble = gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0,8), position.y+8+randi_range(0,8)-randi_range(0,8), Objects.rubble_small)
#        rubble.sprite_index = "rubble_tan_small"
#        rubble = gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0,8), position.y+8+randi_range(0,8)-randi_range(0,8), Objects.rubble_small)
#        rubble.sprite_index = "rubble_tan_small"


#    global.check_water = true

    

#func step():
    #    if (fired > 0): fired -= 1

#    range = 64

#    if (fired == 0 and abs(player1.position.y-position.y-8) < prox and player1.position.x < position.x and:
#        point_distance(position.x+8, position.y+8, player1.position.x, player1.position.y) < range)

#        gml.instance_create(position.x-16, position.y, Objects.spear"left)"
#        fired = fired_max


#    obj = instance_nearest(position.x, position.y, enemy)
#    if (obj): 
#    if (fired == 0 and abs(obj.position.y-position.y) < prox and obj.position.x < position.x and:
#        point_distance(position.x, position.y, obj.position.x, obj.position.y) < range)

#        gml.instance_create(position.x-16, position.y, Objects.spear"left)"
#        fired = fired_max


#    obj = instance_nearest(position.x, position.y, moveable_solid)
#    if (obj): 
#    if (fired == 0 and abs(obj.position.y-position.y) < prox and obj.position.x < position.x and:
#        point_distance(position.x, position.y, obj.position.x, obj.position.y) < range)

#        gml.instance_create(position.x-16, position.y, Objects.spear"left)"
#        fired = fired_max


#    obj = instance_nearest(position.x, position.y, item)
#    if (obj): 
#    if (fired == 0 and abs(obj.position.y-position.y-8) < prox and obj.position.x < position.x+8 and:
#        point_distance(position.x+8, position.y+8, obj.position.x, obj.position.y) < range)

#        gml.instance_create(position.x-16, position.y, Objects.spear"left)"
#        fired = fired_max


#    # dy:  right

#    if (fired == 0 and abs(player1.position.y-position.y-8) < prox and player1.position.x > position.x+8 and:
#        point_distance(position.x+8, position.y+8, player1.position.x, player1.position.y) < range)

#        spears = gml.instance_create(position.x+16, position.y, Objects.spear"left)"
#        spears.sprite_index = "spears_right"
#        fired = fired_max


#    obj = instance_nearest(position.x, position.y, enemy)
#    if (obj): 
#    if (fired == 0 and abs(obj.position.y-position.y) < prox and obj.position.x > position.x and:
#        point_distance(position.x, position.y, obj.position.x, obj.position.y) < range)

#        spears = gml.instance_create(position.x+16, position.y, Objects.spear"left)"
#        spears.sprite_index = "spears_right"
#        fired = fired_max


#    obj = instance_nearest(position.x, position.y, moveable_solid)
#    if (obj): 
#    if (fired == 0 and abs(obj.position.y-position.y) < prox and obj.position.x > position.x and:
#        point_distance(position.x, position.y, obj.position.x, obj.position.y) < range)

#        spears = gml.instance_create(position.x+16, position.y, Objects.spear"left)"
#        spears.sprite_index = "spears_right"
#        fired = fired_max


#    obj = instance_nearest(position.x, position.y, item)
#    if (obj): 
#    if (fired == 0 and abs(obj.position.y-position.y-8) < prox and obj.position.x > position.x+8 and:
#        point_distance(position.x+8, position.y+8, obj.position.x, obj.position.y) < range)

#        spears = gml.instance_create(position.x+16, position.y, Objects.spear"left)"
#        spears.sprite_index = "spears_right"
#        fired = fired_max


#    if ((position.x > view_xview[0]-8 and position.x < view_xview[0] + view_wview[0]+8 and:
#            position.y > view_yview[0]-8 and position.y < view_yview[0] + view_hview[0]+8))

#    if (not gml.collision_point(position.x, position.y+16, "solid", 0, 0)):

#        gml.instance_destroy()
