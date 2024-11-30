
extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func alarm_0():
#    /*
#    gml.instance_create(n, 128, Objects.basket)
#    gml.instance_create(n, 128, Objects.rim)
#    gml.instance_create(n, 128, Objects.rim_deflect)
#    obj = gml.instance_create(n+8, 128+8, Objects.poof)
#    obj.x_vel = -0.5
#    obj.y_vel = -0.5
#    obj = gml.instance_create(n+8, 128+8, Objects.poof)
#    obj.x_vel = 0.5
#    obj.y_vel = -0.5
#    obj = gml.instance_create(n+8, 128+8, Objects.poof)
#    obj.x_vel = 0.5
#    obj.y_vel = 0.5
#    obj = gml.instance_create(n+8, 128+8, Objects.poof)
#    obj.x_vel = -0.5
#    obj.y_vel = 0.5
#    */

#    if (timer == 60): alarm_11(1)

    

#func alarm_1():
#    draw_status = 1
#    alarm_2(30)

    

#func alarm_10():
#    if (timer < 0):

#        if (game.draw_status < 3):
    
#            game.draw_status = 3
    
    
#        Audio.stop_all_music()
    

    

#func alarm_11():
#    timer -= 1
#    if (timer == 0):

#        global.mini2 = moon_room.baskets
#        if (global.mini2 > 99): global.mini2 = 99
#        scr_update_highscores(2)
#        timer -= 1
#        game.draw_status = 1
#        with bat_target
    
#            obj = gml.instance_create(position.x+8, position.y, Objects.poof)
#            obj.x_vel = 0
#            obj.y_vel = -1
#            obj = gml.instance_create(position.x+8, position.y, Objects.poof)
#            obj.x_vel = 0
#            obj.y_vel = 1
        
#            gml.instance_destroy(self)
    
#        with entrance
    
#            gml.instance_create(position.x, position.y, Objects.x_scores)
#            gml.instance_destroy(self)
    
#        alarm_10(30)

#    else:
#        alarm_11(30)

    

#func alarm_2():
#    draw_status = 2
#    alarm_3(10)

    

#func alarm_3():
#    draw_status = 3
#    /*
#    obj = gml.instance_create(160, 0, Objects.poof)
#    obj.x_vel = 0
#    obj.y_vel = -1
#    obj = gml.instance_create(160, 0, Objects.poof)
#    obj.x_vel = 0
#    obj.y_vel = 1
#    */
#    gml.instance_create(160, -16, Objects.bat_target)
#    gml.instance_create(208, -64, Objects.bat_target)
#    gml.instance_create(256, -128, Objects.bat_target)

    

#func alarm_9():
#    if (global.music): start_music()

    

#func create():
#    global.plife = 8
#    highscore = false
#    baskets = 0
#    timer = 60
#    draw_status = 0
#    alarm_0(100)
#    alarm_1(30)
#    alarm_9(100)
#    global.arrows = 100

#    # DY:  To prevent the Tunnel Man from tearing up the whole level.
#    with brick

#        if (position.x <= 16 or position.x >= 288 or position.y <= 16 or position.y >= 208):
    
#            invincible = true
    


    

#func draw():
#    life = global.plife
#    if (life < 0): life = 0
#    draw_set_font(global.my_font)
#    draw_set_color(c_white)
#    draw_sprite(s_hoops_icon, -1, gml.view("xview")+8, gml.view("yview")+8)
#    draw_text(gml.view("xview")+24, gml.view("yview")+8, baskets)
#    draw_sprite(s_timer_icon, -1, gml.view("xview")+64, gml.view("yview")+8)
#    if (timer >= 0): draw_text(gml.view("xview")+64+16, gml.view("yview")+8, timer)
#    else: draw_text(gml.view("xview")+64+16, gml.view("yview")+8, "0")
#    if (draw_status < 3):

#        draw_set_font(global.my_font_small)
#        draw_set_color(c_yellow)
#        str_len = string_length("ARCHERY CHALLENGE BEGINS IN 3...")*8
#        n = 320 - str_len
#        n = ceil(n / 2)
#        draw_text(n, 216, "ARCHERY CHALLENGE BEGINS IN " + str(3-draw_status) + "...")
