
extends Solid


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func alarm 0():
    #    arrow = gml.instance_create(position.x+16, position.y+4, "arrow")
#    arrow.x_vel = 5

    

#func alarm 1():
    #    x_act = position.x+16
#    while (not gml.collision_point(x_act, position.y+8, "solid", 0, 0)):

#        if (x_act - position.x > 96):
#    break
#        x_act += 1

#    x_act -= (position.x+8)

    

#func create():
    #    # action_inherited
#    super()

#    # main_code
#    type = "Arrow Trap"
#    fired = 100+randi_range(100)
#    invincible = false
#    x_act = 0 # DY:  activate distance
#    # DY: alarm_0(50)
#    # DY: alarm_1(1)

    

#func destroy():
    #    if (not clean_death and not global.clean_solids):

#        rubble = gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0,8), position.y+8+randi_range(0,8)-randi_range(0,8), "rubble")
#        rubble.sprite_index = s_rubble_tan
#        rubble = gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0,8), position.y+8+randi_range(0,8)-randi_range(0,8), "rubbleSmall")
#        rubble.sprite_index = s_rubble_tanSmall
#        rubble = gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0,8), position.y+8+randi_range(0,8)-randi_range(0,8), "rubbleSmall")
#        rubble.sprite_index = s_rubble_tanSmall


    

#func step():
    #    firing = false
#    if (fired > 0): fired -= 1
#    elif (not player1.dead):
    
#            arrow = gml.instance_create(position.x+18, position.y+4, "arrow")
#            arrow.x_vel = 8
#            fired = randi_range(100,200)
#            Audio.play_sound(global.snd_arrow_trap)


    
