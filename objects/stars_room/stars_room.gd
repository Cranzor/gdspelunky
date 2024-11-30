
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

#        n = gml.rand(0,3)
#        gml.instance_create(32 + n*80, 0, Objects.shopkeeper2)
#        if (kills >= 40):
    
#            alarm_0(100)
    
#        elif (kills >= 30):
    
#            alarm_0(125)
    
#        elif (kills >= 20):
    
#            alarm_0(150)
    
#        elif (kills >= 10):
    
#            alarm_0(175)
    
#        else: alarm_0(200)


    

#func alarm_1():
#    draw_status = 1
#    alarm_2(30)

    

#func alarm_10():
#    if (global.music): start_music()

    

#func alarm_11():
#    if (not player1.dead and gml.rand(1, 100) < kills):

#        n = gml.rand(0,3)
#        gml.instance_create(32 + n*80, 0, Objects.spider)


#    if (not player1.dead): alarm_11(20)

    

#func alarm_2():
#    draw_status = 2
#    alarm_3(10)

    

#func alarm_3():
#    draw_status = 3

    

#func create():
#    global.plife = 8
#    highscore = false
#    kills = 0
#    draw_status = 0
#    alarm_0(100)
#    alarm_1(30)
#    alarm_10(100)
#    alarm_11(110)

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
#    draw_sprite(s_shopkeeper_icon, -1, gml.view("xview")+64, gml.view("yview")+8)
#    draw_text(gml.view("xview")+64+16, gml.view("yview")+8, kills)
#    if (draw_status < 3):

#        draw_set_font(global.my_font_small)
#        draw_set_color(c_yellow)
#        str_len = string_length("SHOTGUN CHALLENGE BEGINS IN 3...")*8
#        n = 320 - str_len
#        n = ceil(n / 2)
#        draw_text(n, 216, "SHOTGUN CHALLENGE BEGINS IN " + str(3-draw_status) + "...")
