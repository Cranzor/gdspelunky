
extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func alarm_0():
#    if (not player1.dead):

#        i = player1.position.x
#        j = 32
#        if (i < 40): i = 40
#        if (i > 280): i = 280
#        if (not gml.collision_point(i, j, "solid", 0, 0)):
    
#            if (points >= 80):
        
#                if (gml.instance_exists("ghost")):  /* do nothing */ 
#                elif (player1.position.x > room_width/2): gml.instance_create(-32, 120-16, Objects.ghost)
#                else: gml.instance_create(320, 120-16, Objects.ghost)
        
#            elif (points >= 50):
        
#                obj = gml.instance_create(152, 32, Objects.vampire)
#                obj.status = 7
#                with obj
            
#                    obj = gml.instance_create(position.x+8, position.y+8, Objects.poof)
#                    obj.x_vel = -1
#                    obj.y_vel = 0
#                    obj = gml.instance_create(position.x+8, position.y+8, Objects.poof)
#                    obj.x_vel = 1
#                    obj.y_vel = 0
            
        
#            else:
        
#                obj = gml.instance_create(i, j, Objects.bomb)
#                obj.sprite_index = "bomb_armed"
#                obj.armed = true
#                with obj
            
#                    alarm_0(80)
#                    image_speed = 0.2
#                    obj = gml.instance_create(position.x, position.y, Objects.poof)
#                    obj.x_vel = -1
#                    obj.y_vel = 0
#                    obj = gml.instance_create(position.x, position.y, Objects.poof)
#                    obj.x_vel = 1
#                    obj.y_vel = 0
                   
#                # DY: obj.safe = true
#                obj.alarm_2(10)
        
#            alarm_0()gml.rand(100,200)
    
#        else:
#            alarm_0(1)


    

#func alarm_1():
#    draw_status = 1
#    alarm_2(30)

    

#func alarm_10():
#    if (global.music): start_music()

    

#func alarm_11():
#    if (not player1.dead):

#        if (points < 99): points += 1
#        alarm_11(30)


    

#func alarm_2():
#    draw_status = 2
#    alarm_3(10)

    

#func alarm_3():
#    draw_status = 3

    

#func create():
#    global.plife = 8
#    highscore = false
#    points = 0
#    draw_status = 0
#    alarm_0(100)+gml.rand(100,200)
#    alarm_1(30)
#    alarm_10(100)
#    alarm_11(100)

#    # DY:  To prevent the Tunnel Man from tearing up the whole level.
#    with brick

#        if (position.x <= 16 or position.x >= 288 or position.y <= 16 or position.y >= 208):
    
#            invincible = true
    


    

#func draw():
#    life = global.plife
#    if (life < 0): life = 0
#    draw_set_font(global.my_font)
#    draw_set_color(c_white)
#    draw_sprite(s_heart, -1, gml.view("xview")+8, gml.view("yview")+8)
#    draw_text(gml.view("xview")+24, gml.view("yview")+8, life)
#    draw_sprite(s_damsel_icon, -1, gml.view("xview")+64, gml.view("yview")+8)
#    draw_text(gml.view("xview")+64+16, gml.view("yview")+8, points)
#    if (draw_status < 3):

#        draw_set_font(global.my_font_small)
#        draw_set_color(c_yellow)
#        str_len = string_length("DAMSEL CHALLENGE BEGINS IN 3...")*8
#        n = 320 - str_len
#        n = ceil(n / 2)
#        draw_text(n, 216, "DAMSEL CHALLENGE BEGINS IN " + str(3-draw_status) + "...")


    

#func step():
#    if (game.draw_status == 0):

#        if (gml.instance_exists("damsel")):
    
#            if (damsel.hp < 1):
        
#                global.plife = 0
        
    
#        else:
    
#            global.plife = 0
