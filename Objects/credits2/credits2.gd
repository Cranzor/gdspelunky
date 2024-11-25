
extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func alarm 0():
    #    gml.instance_create(320, 144, Objects.camel)
#    gml.instance_create(320+64, 144-16, Objects.caravan)

    

#func alarm 1():
    #    if (scrolling):

#    if (gml.rand(1,8) == 1): gml.instance_create(-16, 176, Objects.shrub_scroll)
#    elif (gml.rand(1,12) == 1): gml.instance_create(-32, 176-112, Objects.palm_tree_scroll)

#    gml.instance_create(-16, 176, Objects.desert_top_scroll)
#    gml.instance_create(-16, 192, Objects.desert_scroll2)
#    gml.instance_create(-16, 208, Objects.desert_scroll)
#    gml.instance_create(-16, 224, Objects.desert_scroll)
#    with desert_scroll  scroll = true 
#    with desert_scroll2  scroll = true 
#    with desert_top_scroll  scroll = true 
#    with shrub_scroll  scroll = true 
#    with palm_tree_scroll  scroll = true 
#    alarm_1(16)


    

#func alarm 11():
    #    draw_status = 0

    

#func alarm 2():
    #    draw_status = 1
#    alarm_11(140)
#    alarm_3(180)

    

#func alarm 3():
    #    draw_status = 2
#    alarm_11(140)
#    alarm_4(180)

    

#func alarm 4():
    #    draw_status = 3
#    alarm_11(140)
#    alarm_5(180)

    

#func alarm 5():
    #    draw_status = 4
#    alarm_11(140)
#    alarm_6(180)

    

#func alarm 6():
    #    draw_status = 5
#    alarm_11(240)
#    alarm_7(280)

    

#func alarm 7():
    #    draw_status = 6
#    alarm_11(240)
#    alarm_8(280)

    

#func alarm 8():
    #    scrolling = false
#    with desert_scroll  scroll = false 
#    with desert_scroll2  scroll = false 
#    with desert_top_scroll  scroll = false 
#    with palm_tree_scroll  scroll = false 
#    with shrub_scroll  scroll = false 
#    camel.status = 2
#    caravan.status = 2

    

#func create():
    #    fade_in = true
#    fade_out = false
#    fade_level = 1

#    draw_status = 0
#    scroll_start = false
#    scrolling = false
#    screen.can_pause = false

#    Audio.stop_all_music()


    

#func draw():
    #    if (draw_status == 1):

#        draw_set_font(global.my_font)
#        draw_set_color(c_yellow)
#        draw_text(16, 16, "SPELUNKY")

#    elif (draw_status == 2):

#        draw_set_font(global.my_font_small)
#        draw_set_color(c_yellow)
#        draw_text(16, 16, "A GAME BY")
#        # DY:  draw_set_font(global.my_font_small)
#        draw_set_color(c_white)
#        draw_text(64, 32, "DEREK YU")

#    elif (draw_status == 3):

#        draw_set_font(global.my_font_small)
#        draw_set_color(c_yellow)
#        draw_text(16, 16, "PLATFORM ENGINE")
#        draw_set_color(c_white)
#        draw_text(16, 24, "MARTIN PIECYK")
#        draw_set_color(c_yellow)
#        draw_text(16, 40, "SOUND EFFECTS MADE USING")
#        draw_set_color(c_white)
#        draw_text(16, 48, "DR PETTER'S SFXR")
#        draw_set_color(c_yellow)
#        draw_text(16, 64, "SCREEN SCALING CODE")
#        draw_set_color(c_white)
#        draw_text(16, 72, "CHEVYRAY")

#    elif (draw_status == 4):

#        draw_set_font(global.my_font_small)
#        draw_set_color(c_yellow)
#        draw_text(16, 16, "MUSIC BY")
#        draw_set_color(c_white)
#        draw_text(32, 32, "GEORGE BUZINKAI")
#        draw_text(32, 48, "JONATHAN PERRY")

#    elif (draw_status == 5):

#        draw_set_font(global.my_font_small)
#        draw_set_color(c_yellow)
#        draw_text(16, 16, "BETA TESTING BY")
#        draw_set_color(c_white)
#        draw_text(16, 24, "ANNABELLE K.")
#        draw_text(16, 32, "BENZIDO")
#        draw_text(16, 40, "CHUTUP")
#        draw_text(16, 48, "CORPUS")
#        draw_text(16, 56, "GENERALVALTER")
#        draw_text(16, 64, "GUERT")
#        draw_text(16, 72, "GRAHAM GORING")
#        draw_text(16, 80, "HAOWAN")
#        draw_text(16, 88, "HIDEOUS")
#        draw_text(16, 96, "INANE")
#        # DY: 
#        draw_text(128, 24, "INCREPARE")
#        draw_text(128, 32, "KAO")
#        draw_text(128, 40, "MARK JOHNS")
#        draw_text(128, 48, "MELLY")
#        draw_text(128, 56, "PAUL ERES")
#        draw_text(128, 64, "SUPER JOE")
#        draw_text(128, 72, "TANTAN")
#        draw_text(128, 80, "TEAM QUIGGAN")
#        draw_text(128, 88, "TERRY")
#        draw_text(128, 96, "XION")
#        draw_text(128, 104, "ZAPHOS")

#    elif (draw_status == 6):

#        draw_set_font(global.my_font_small)
#        draw_set_color(c_yellow)
#        draw_text(16, 16, "THANKS FOR PLAYING!")
#        # DY:  draw_set_font(global.my_font_small)
#        draw_set_color(c_white)
#        draw_text(32, 32, "SEE YOU NEXT ADVENTURE!")


#    if (fade_in or fade_out):

#        draw_set_color(c_black)
#        draw_set_alpha(fade_level)
#        draw_rectangle(0, 0, 320, 240, false)
#        draw_set_alpha(1)




    

#func step():
    #    if (keyboard_check_pressed(vk_enter) or:
#        keyboard_check_pressed(vk_escape) or
#        check_attack())

#        if (gml.instance_exists("camel")):
    
#            if (fade_in):
        
#                fade_level = 0
        
#            else:
        
#                if (gamepad.attack_pressed): gamepad.attack_pressed = false
#                if (gamepad.start_pressed): gamepad.start_pressed = false
#                fade_out = true
        
    


#    if (gml.instance_exists("camel")):

#        if (camel.position.x <= 160 and not scroll_start):
    
#            with desert_scroll
        
#                scroll = true
        
#            alarm_1(1)
#            alarm_2(20)
#            scroll_start = true
#            scrolling = true
    


#    if (fade_in):

#        if (fade_level > 0): fade_level -= 0.1
#        else:
    
#            fade_in = false
#            alarm_0(20)
    

#    elif (fade_out):

#        if (fade_level < 1): fade_level += 0.1
#        else:
    
#            Audio.stop_all_music()
#            scr_update_highscores(1)
#            MiscScripts.scr_clear_globals()
#            global.draw_hud = false
#            global.game_start = false
#            get_tree().change_scene_to_file("res://r_highscores.tscn")
