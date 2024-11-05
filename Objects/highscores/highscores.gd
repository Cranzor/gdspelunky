
extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func create():
    #    with screen  can_pause = true 

#    global.curr_level = 1

#    shake_toggle = false
#    global.dark_level = false
#    global.snake_pit = false
#    global.message_timer = 0
#    global.mini1 = 0
#    global.mini2 = 0
#    global.mini3 = 0
#    global.ha"jordans = false"
#    global.arrows = 0

#    sun_gold = 200000
#    moon_gold = 600000
#    star"gold = 120"

#    t_money = highscore_value(1) - 9000000
#    t_time = highscore_value(2) - 8000000
#    t_kills = highscore_value(3) - 7000000
#    t_saves = highscore_value(4)-6000000

#    # dy:  debug
#    /*
#    t_money = 200000
#    t_time = 1
#    t_kills = 200
#    t_saves = 8
#    */

#    if (t_money >= 50000):

#        trophy = gml.instance_create(32, 32, Objects.trophy)
#        if (t_money >= 200000):
    
#            trophy.sprite_index = "gold_trophy"
#            gml.instance_create(32, 48, Objects.x_sun)
    
#        elif (t_money >= 100000):
    
#            trophy.sprite_index = "silver_trophy"
    
#        else:
    
#            trophy.sprite_index = "bronze_trophy"
    


#    if (t_time > 0 and t_time < 960):

#        trophy = gml.instance_create(64, 64, Objects.trophy)
#        if (t_time <= 960):
    
#            trophy.sprite_index = "bronze_trophy"
    
#        if (t_time <= 720):
    
#            trophy.sprite_index = "silver_trophy"
    
#        if (t_time <= 600):
    
#            trophy.sprite_index = "gold_trophy"
#            gml.instance_create(64, 80, Objects.x_moon)
    


#    if (t_kills >= 80):

#        trophy = gml.instance_create(32, 96, Objects.trophy)
#        if (t_kills >= 120):
    
#            trophy.sprite_index = "gold_trophy"
#            gml.instance_create(32, 112, Objects.x_stars)
    
#        elif (t_kills >= 100):
    
#            trophy.sprite_index = "silver_trophy"
    
#        else:
    
#            trophy.sprite_index = "bronze_trophy"
    


#    if (t_saves >= 4):

#        trophy = gml.instance_create(64, 128, Objects.trophy)
#        if (t_saves >= 8):
    
#            trophy.sprite_index = "gold_trophy"
#            gml.instance_create(64, 144, Objects.x_change)
    
#        elif (t_saves >= 6):
    
#            trophy.sprite_index = "silver_trophy"
    
#        else:
    
#            trophy.sprite_index = "bronze_trophy"
    


#    if (global.score"start == 1):"

#        player1.position.x = 32+8
#        player1.position.y = 48+8

#    elif (global.score"start == 2):"

#        player1.position.x = 64+8
#        player1.position.y = 80+8

#    elif (global.score"start == 3):"

#        player1.position.x = 32+8
#        player1.position.y = 112+8


#    if (global.new_money): gml.instance_create(272, 48, Objects.new)
#    if (global.new_kills): gml.instance_create(272, 64, Objects.new)
#    if (global.new_saves): gml.instance_create(272, 80, Objects.new)
#    if (global.new_time): gml.instance_create(272, 96, Objects.new)

    

#func draw():
    #    if (player1.position.y < 156):

#    draw_set_font(global.my_font_small)
#    draw_set_color(c_yellow)
#    draw_text(128+16, 32, "secret challenges")
#    draw_set_color(c_white)
#    t_mini1 = floor(highscore_value(10) / 10000)
#    t_mini2 = floor((highscore_value(10)-(t_mini1*10000)) / 100)
#    t_mini3 = floor(highscore_value(10)-(t_mini1*10000)-(t_mini2*100))
#    draw_text(128, 48, "sun:   " + str\(t_mini1))
#    draw_text(128, 64, "moon:  " + str\(t_mini2))
#    draw_text(128, 80, "stars: " + str\(t_mini3))

#    if (player1.position.y < 48+16):

#        draw_set_color(c_yellow)
#        draw_text(168, 96, "sun room")
#        draw_set_color(c_white)
#        if (t_money >= sun_gold):
    
#            if (false): # dy:  (global.i"tunnel_man)"
        
#                draw_text(128, 112, "no mattocks allowed!")
#                draw_text(128, 128, "this means you!")
#                draw_text(128, 144, "")
#                draw_text(128, 160, "")
        
#            else:
        
#                draw_text(128, 112, "keep yourself and")
#                draw_text(128, 128, "the damsel alive")
#                draw_text(128, 144, "for as long as")
#                draw_text(128, 160, "possible!")
        
    
#        else:
    
#            draw_text(128, 112, "locked.")
    

#    elif (player1.position.y < 80+16):

#        draw_set_color(c_yellow)
#        draw_text(168, 96, "moon room")
#        draw_set_color(c_white)
#        if (t_time > 0 and t_time <= moon_gold):
    
#            if (false): # dy:  (global.i"tunnel_man)"
        
#                draw_text(128, 112, "no mattocks allowed!")
#                draw_text(128, 128, "this means you!")
#                draw_text(128, 144, "")
#                draw_text(128, 160, "")
        
#            else:
        
#                draw_text(128, 112, "shoot the moving")
#                draw_text(128, 128, "targets with your")
#                draw_text(128, 144, "bow and arrows!")
        
    
#        else:
    
#            draw_text(128, 112, "locked.")
    

#    elif (player1.position.y < 112+16):

#        draw_set_color(c_yellow)
#        draw_text(168, 96, "stars room")
#        draw_set_color(c_white)
#        if (t_kills >= star"gold):"
    
#            if (false): # dy:  (global.i"tunnel_man)"
        
#                draw_text(128, 112, "no mattocks allowed!")
#                draw_text(128, 128, "this means you!")
#                draw_text(128, 144, "")
#                draw_text(128, 160, "")
        
#            else:
        
#                draw_text(128, 112, "kill as many angry")
#                draw_text(128, 128, "shopkeeps as you can")
#                draw_text(128, 144, "before they get you!")
        
    
#        else:
    
#            draw_text(128, 112, "locked.")
    

#    elif (player1.position.y < 160):

#        draw_set_color(c_yellow)
#        draw_text(160, 96, "changing room")
#        draw_set_color(c_white)
#        if (t_saves >= 8):
    
#            draw_text(128, 112, "lady in red...")
    
#        else:
    
#            draw_text(128, 112, "locked.")
    
#        with new
    
#            visible = false
    



#    else:

#    with new

#        visible = true

#    draw_set_font(global.my_font_small)
#    draw_set_color(c_yellow)
#    draw_text(160, 32, "top defilers")
#    draw_set_color(c_white)
#    draw_text(128, 48, "money:  " + str\(highscore_value(1)-9000000))
#    draw_text(128, 64, "kills:  " + str\(highscore_value(3)-7000000))
#    draw_text(128, 80, "saves:  " + str\(highscore_value(4)-6000000))
#    # dy:  only display time if won:
#    if (highscore_value(6)-4000000 > 0):

#        s = highscore_value(2)-8000000
#        # dy:  s = floor(s / 1000)
#        m = 0
#        while (s > 59):
    
#            s -= 60
#            m += 1
    
    
#        draw_set_color(c_white)
#        draw_text(128, 96, "time: ")
#        if (s < 10): draw_text(128+64, 96, str\(m) + ":0" + str\(s))
#        else: draw_text(128+64, 96, str\(m) + ":" + str\(s))

#    draw_set_color(c_yellow)
#    draw_text(168, 112, "statistics")
#    draw_set_color(c_white)
#    draw_text(128, 128, "plays:  " + str\(highscore_value(5)-5000000))
#    draw_text(128, 144, "deaths: " + str\(highscore_value(7)-3000000))
#    draw_text(128, 160, "wins:   " + str\(highscore_value(6)-4000000))

#    block = instance_nearest(160, 240, push_block)
#    if (not button_highscore.pushed and block.position.x > 160):

#        draw_set_font(global.my_font_small)
#        draw_set_color(c_yellow)
#        str_len = string_length("this will clear everything!")*8
#        n = 320 - str_len
#        n = ceil(n / 2)
#        draw_text(n, 216, str\("this will clear everything!"))


    

#func key q pressed():
    #    /*highscore_clear()
#    highscore_add("money", 9000000)
#    highscore_add("time", 8000000)
#    highscore_add("kills", 7000000)
#    highscore_add("saves", 6000000)
#    highscore_add("plays", 5000000)
#    highscore_add("wins", 4000000)
#    highscore_add("deaths", 3000000)*/

    

#func step():
    #    # dy:  shake the screen
#    if (global.shake > 0):

#        # dy: view_xview[0] = view_xview[0] + randi_range(0,3) - randi_range(0,3)
#        # dy: view_yview[0] = view_yview[0] + randi_range(0,3) - randi_range(0,3)
#        # dy: if (view_yview[0] > 16): view_yview[0] = 16 - randi_range(0,8)
#        # dy: if (view_yview[0] < 0): view_yview[0] = 0 + randi_range(0,8)
#        if (shake_toggle): view_yview[0] = view_yview[0] + randi_range(1,8)
#        else: view_yview[0] = 0
#        shake_toggle = not shake_toggle
#        global.shake -= 1

#    else:

#        view_xview[0] = 0
#        view_yview[0] = 0
