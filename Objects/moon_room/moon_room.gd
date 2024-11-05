
extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func alarm 0():
    #    /*
#    gml.instance_create(n, 128, "basket")
#    gml.instance_create(n, 128, "rim")
#    gml.instance_create(n, 128, "rimDeflect")
#    obj = gml.instance_create(n+8, 128+8, "poof")
#    obj.x_vel = -0.5
#    obj.y_vel = -0.5
#    obj = gml.instance_create(n+8, 128+8, "poof")
#    obj.x_vel = 0.5
#    obj.y_vel = -0.5
#    obj = gml.instance_create(n+8, 128+8, "poof")
#    obj.x_vel = 0.5
#    obj.y_vel = 0.5
#    obj = gml.instance_create(n+8, 128+8, "poof")
#    obj.x_vel = -0.5
#    obj.y_vel = 0.5
#    */

#    if (timer == 60): alarm_11(1)

    

#func alarm 1():
    #    draw_status = 1
#    alarm_2(30)

    

#func alarm 10():
    #    if (timer < 0):

#        if (game.draw_status < 3):
    
#            game.draw_status = 3
    
    
#        Audio.stop_all_music()
    

    

#func alarm 11():
    #    timer -= 1
#    if (timer == 0):

#        global.mini2 = moon_room.baskets
#        if (global.mini2 > 99): global.mini2 = 99
#        scr_update_highscores(2)
#        timer -= 1
#        game.draw_status = 1
#        with bat_target
    
#            obj = gml.instance_create(position.x+8, position.y, "poof")
#            obj.x_vel = 0
#            obj.y_vel = -1
#            obj = gml.instance_create(position.x+8, position.y, "poof")
#            obj.x_vel = 0
#            obj.y_vel = 1
        
#            gml.instance_destroy()
    
#        with entrance
    
#            gml.instance_create(position.x, position.y, "x_scores")
#            gml.instance_destroy()
    
#        alarm_10(30)

#    else:
#        alarm_11(30)

    

#func alarm 2():
    #    draw_status = 2
#    alarm_3(10)

    

#func alarm 3():
    #    draw_status = 3
#    /*
#    obj = gml.instance_create(160, 0, "poof")
#    obj.x_vel = 0
#    obj.y_vel = -1
#    obj = gml.instance_create(160, 0, "poof")
#    obj.x_vel = 0
#    obj.y_vel = 1
#    */
#    gml.instance_create(160, -16, "bat_target")
#    gml.instance_create(208, -64, "bat_target")
#    gml.instance_create(256, -128, "bat_target")

    

#func alarm 9():
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
#    draw_sprite(s_hoops_icon, -1, view_xview[0]+8, view_yview[0]+8)
#    draw_text(view_xview[0]+24, view_yview[0]+8, baskets)
#    draw_sprite(s_timer_icon, -1, view_xview[0]+64, view_yview[0]+8)
#    if (timer >= 0): draw_text(view_xview[0]+64+16, view_yview[0]+8, timer)
#    else: draw_text(view_xview[0]+64+16, view_yview[0]+8, "0")
#    if (draw_status < 3):

#        draw_set_font(global.my_fontSmall)
#        draw_set_color(c_yellow)
#        str_len = string_length("ARCHERY CHALLENGE BEGINS IN 3...")*8
#        n = 320 - str_len
#        n = ceil(n / 2)
#        draw_text(n, 216, "ARCHERY CHALLENGE BEGINS IN " + str\(3-draw_status) + "...")


    
