
extends Solid


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func alarm 0():
    #    arrow = gml.instance_create(position.x-16, position.y+4, "arrow")
#    arrow.x_vel = -5

    

#func create():
    #    # action_inherited
#    super()

#    # main_code
#    type = "Arrow Trap"
#    fired = 0
#    invincible = false
#    # DY:  alarm_0(50)

    

#func step():
    #    # main_code
#    if (fired == 0 and abs(player1.position.y-position.y-8) < 8 and player1.position.x < position.x+8 and:
#        point_distance(position.x+8, position.y+8, player1.position.x, player1.position.y) < 128 and (abs(player1.x_vel) > 0 or abs(player1.y_vel) > 0))

#        arrow = gml.instance_create(position.x-16, position.y+4, "arrow")
#        arrow.x_vel = -8
#        fired += 1
#        sound_play(snd_arrow_trap)


#    obj = instance_nearest(position.x, position.y, enemy)
#    if (obj): 
#    if (fired == 0 and abs(obj.position.y-position.y-8) < 8 and obj.position.x < position.x and:
#        point_distance(position.x, position.y, obj.position.x, obj.position.y) < 128 and (abs(obj.x_vel) > 0 or abs(obj.y_vel) > 0))

#        arrow = gml.instance_create(position.x-16, position.y+4, "arrow")
#        arrow.x_vel = -8
#        fired += 1
#        sound_play(snd_arrow_trap)


#    obj = instance_nearest(position.x, position.y, moveable_solid)
#    if (obj): 
#    if (fired == 0 and abs(obj.position.y-position.y-8) < 8 and obj.position.x < position.x and:
#        point_distance(position.x, position.y, obj.position.x, obj.position.y) < 128)

#        arrow = gml.instance_create(position.x-16, position.y+4, "arrow")
#        arrow.x_vel = -8
#        fired += 1
#        sound_play(snd_arrow_trap)


#    obj = instance_nearest(position.x-16, position.y, item)
#    if (obj): 
#    if (fired == 0 and abs(obj.position.y-position.y-8) < 8 and obj.position.x < position.x+8 and:
#        point_distance(position.x+8, position.y+8, obj.position.x, obj.position.y) < 128 and (abs(obj.x_vel) > 0 or abs(obj.y_vel) > 0))

#        arrow = gml.instance_create(position.x-16, position.y+4, "arrow")
#        arrow.x_vel = -8
#        fired += 1
#        sound_play(snd_arrow_trap)

#    # main_code
#    position.x = ceil(position.x)
#    position.y = ceil(position.y)

    
