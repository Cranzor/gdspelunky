
extends Solid


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func alarm 0():
    #    arrow = gml.instance_create(position.x+16, position.y+4, Objects.arrow)
#    arrow.x_vel = 5

    

#func alarm 1():
    #    if (not InLevel.i"room("r_level_editor")):"

#        x_act = position.x-1
#        while (not gml.collision_point(x_act, position.y+8, "solid", 0, 0)):
    
#            if (position.x - x_act > 96):
#    break
#            x_act -= 1
    
#        if (x_act > position.x-16):  x_act = position.x-16 
#        obj = gml.instance_create(x_act, position.y, Objects.arrow_trap_test)
#        obj.image_xscale = ceil(((position.x-1)-x_act)/16)
#        obj.trap_id = id


    

#func create():
    #    # action_inherited
#    super()

#    # main_code
#    type = "Arrow Trap"
#    facing = 0
#    fired = 0
#    invincible = false
#    x_act = 0 # DY:  activate distance
#    # DY: alarm_0(50)
#    alarm_1(1)

    

#func destroy():
    #    if (not clean_death and not global.clean_solids):

#        rubble = gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0,8), position.y+8+randi_range(0,8)-randi_range(0,8), Objects.rubble)
#        rubble.sprite_index = "rubble_tan"
#        rubble = gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0,8), position.y+8+randi_range(0,8)-randi_range(0,8), Objects.rubble_small)
#        rubble.sprite_index = "rubble_tan_small"
#        rubble = gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0,8), position.y+8+randi_range(0,8)-randi_range(0,8), Objects.rubble_small)
#        rubble.sprite_index = "rubble_tan_small"
#        if (fired == 0): gml.instance_create(position.x+8, position.y+8, Objects.arrow)


    

#func step():
    #    firing = false
#    if (fired == 0):

#        /*
#        if (collision_line(position.x+8, position.y+8, (position.x+8)-x_act, position.y+8, item, 0, 0)):
    
#            obj = collision_line(position.x+8, position.y+8, (position.x+8)-x_act, position.y+8, item, 0, 0)
#            if (abs(obj.x_vel) > 0 or abs(obj.y_vel) > 0): firing = true
#            if (obj.type == "Rope"): firing = true
    
    
#        if (collision_line(position.x+8, position.y+8, (position.x+8)-x_act, position.y+8, treasure, 0, 0)):
    
#            obj = collision_line(position.x+8, position.y+8, (position.x+8)-x_act, position.y+8, treasure, 0, 0)
#            if (abs(obj.x_vel) > 0 or abs(obj.y_vel) > 0): firing = true
    
    
#        if (collision_line(position.x+8, position.y+8, (position.x+8)-x_act, position.y+8, enemy, 0, 0)):
    
#            obj = collision_line(position.x+8, position.y+8, (position.x+8)-x_act, position.y+8, enemy, 0, 0)
#            if (abs(obj.x_vel) > 0 or abs(obj.y_vel) > 0): firing = true
    
    
#        if (collision_line(position.x+8, position.y+8, (position.x+8)-x_act, position.y+8, moveable_solid, 0, 0)):
    
#            obj = collision_line(position.x+8, position.y+8, (position.x+8)-x_act, position.y+8, moveable_solid, 0, 0)
#            if (abs(obj.x_vel) > 0 or abs(obj.y_vel) > 0): firing = true
    
    
#        if (collision_line(position.x+8, position.y+8, (position.x+8)-x_act, position.y+8, player1, 0, 0)):
    
#            obj = collision_line(position.x+8, position.y+8, (position.x+8)-x_act, position.y+8, player1, 0, 0)
#            if (abs(obj.x_vel) > 0 or abs(obj.y_vel) > 0): firing = true
    
    
#        if (firing):
    
#            arrow = gml.instance_create(position.x-2, position.y+4, Objects.arrow)
#            arrow.x_vel = -8
#            fired += 1
#            Audio.play_sound(global.snd_arrow_trap)
    
#        */
