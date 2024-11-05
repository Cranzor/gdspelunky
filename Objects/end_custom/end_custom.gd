
extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func alarm 0():
    #    draw_status = 1
#    alarm_1(50)
#    play_music(global.mus_victory, false)
#    with menu

#        visible = true


    

#func alarm 1():
    #    draw_status = 2
#    alarm_2(50)

    

#func alarm 11():
    #    draw_status = 4
#    Audio.play_sound(global.snd_thump)
#    global.money += 50000
#    money_count += 50000
#    alarm_3(50)

    

#func alarm 2():
    #    draw_status = 3

    

#func alarm 3():
    #    draw_status = 5
#    alarm_4(10)

    

#func alarm 4():
    #    draw_status = 6
#    alarm_5(10)

    

#func alarm 5():
    #    draw_status = 7

    

#func create():
    #    draw_status = 0
#    money_count = 0
#    fade_out = false
#    fade_level = 0

#    poop = false

#    alarm_0(50)

#    with menu

#        visible = false


    

#func draw():
    #    if (draw_status > 0):

#        draw_set_font(global.my_font)
#        draw_set_color(c_yellow)
#        draw_text(64, 32, "YOU MADE IT!")

#    if (draw_status > 1):

#        draw_set_font(global.my_fontSmall)
#        draw_set_color(c_yellow)
#        draw_text(64, 64, "FINAL SCORE:")

#    if (draw_status > 2):

#        draw_set_font(global.my_font)
#        draw_set_color(c_white)
#        draw_text(64, 72, "$" + str\(money_count))

#    if (draw_status > 4):

#        s = global.time
#        s = floor(s / 1000)
#        m = 0
#        while (s > 59):
    
#            s -= 60
#            m += 1
    

#        draw_set_font(global.my_fontSmall)
#        draw_set_color(c_yellow)
#        draw_text(64, 96, "TIME: ")
#        draw_set_color(c_white)
#        if (s < 10): draw_text(96+24, 96, str\(m) + ":0" + str\(s))
#        else: draw_text(96+24, 96, str\(m) + ":" + str\(s))

#    if (draw_status > 5):

#        draw_set_font(global.my_fontSmall)
#        draw_set_color(c_yellow)
#        draw_text(64, 96+8, "KILLS: ")
#        draw_set_color(c_white)
#        draw_text(96+24, 96+8, global.kills)

#    if (draw_status > 6):

#        draw_set_font(global.my_fontSmall)
#        draw_set_color(c_yellow)
#        draw_text(64, 96+16, "SAVES: ")
#        draw_set_color(c_white)
#        draw_text(96+24, 96+16, global.damsels)


#    if (fade_out):

#        draw_set_color(c_black)
#        draw_set_alpha(fade_level)
#        draw_rectangle(0, 0, 320, 240, false)
#        draw_set_alpha(1)


#    if (draw_status == 8):

#        draw_set_font(global.my_fontSmall)
#        draw_set_color(c_white)
#        str_len = string_length("YOU SHALL BE REMEMBERED AS A HERO.")*8
#        n = 320 - str_len
#        n = ceil(n / 2)
#        draw_text(n, 116, str\("YOU SHALL BE REMEMBERED AS A HERO."))


    

#func step():
    #    if (keyboard_check_pressed(vk_enter) or:
#        keyboard_check_pressed(vk_escape) or
#        ControlScripts.check_attack_pressed() or
#        ControlScripts.check_start_pressed())

#        if (draw_status == 7):
    
#            if (money_count < global.money):
        
#                money_count = global.money
        
#            else:
        
#                fade_out = true
        
    
#        elif (draw_status == 8):
    
#            if (gamepad.attack_pressed): gamepad.attack_pressed = false
#            if (gamepad.start_pressed): gamepad.start_pressed = false
#            MiscScripts.scr_clear_globals()
#            get_tree().change_scene_to_file("res://r_highscores.tscn")
    


#    if (draw_status > 2):

#        money_diff = global.money - money_count
#        if (money_diff > 1000):
#            money_count += 1000
#        elif (money_diff > 100):
#            money_count += 100
#        else:
#            money_count += money_diff
        
#        if (draw_status == 3 and money_diff == 0 and not poop):
       
#            alarm_11(50)
#            poop = true
    


#    if (fade_out):

#        if (fade_level < 1): fade_level += 0.1
#        else: draw_status = 8


    
