
extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func create():
    #    status = 0
#    joy = false

    

#func draw():
    #    draw_set_font(global.my_font_small)
#    draw_set_color(c_yellow)
#    str_len = string_length("PRESS BUTTON FOR")*8
#    n = 160 - str_len
#    n = ceil(n / 2)
#    draw_text(n, 32, "PRESS BUTTON FOR")
#    draw_text(8, 96, "ESC TO KEEP SAME.")
#    draw_text(8, 104, "CURRENT: ")

#    if (not joystick_exists(1)):

#        draw_set_color(c_red)
#        draw_text(8, 88, "NO GAMEPAD FOUND!")


#    if (status == 0):

#        draw_set_font(global.my_font)
#        draw_set_color(c_white)
#        str_len = string_length("JUMP")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        draw_text(n, 40, "JUMP")
#        curr_val = global.joy_jump_val

#    elif (status == 1):

#        draw_set_font(global.my_font)
#        draw_set_color(c_white)
#        str_len = string_length("ACTION")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        draw_text(n, 40, "ACTION")
#        curr_val = global.joy_attack_val

#    elif (status == 2):

#        draw_set_font(global.my_font)
#        draw_set_color(c_white)
#        str_len = string_length("SWITCH")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        draw_text(n, 40, "SWITCH")
#        curr_val = global.joy_item_val

#    elif (status == 3):

#        draw_set_font(global.my_font)
#        draw_set_color(c_white)
#        str_len = string_length("RUN")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        draw_text(n, 40, "RUN")
#        curr_val = global.joy_run_val

#    elif (status == 4):

#        draw_set_font(global.my_font)
#        draw_set_color(c_white)
#        str_len = string_length("BOMB")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        draw_text(n, 40, "BOMB")
#        curr_val = global.joy_bomb_val

#    elif (status == 5):

#        draw_set_font(global.my_font)
#        draw_set_color(c_white)
#        str_len = string_length("ROPE")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        draw_text(n, 40, "ROPE")
#        curr_val = global.joy_rope_val

#    elif (status == 6):

#        draw_set_font(global.my_font)
#        draw_set_color(c_white)
#        str_len = string_length("FLARE")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        draw_text(n, 40, "FLARE")
#        curr_val = global.joy_flare_val

#    elif (status == 7):

#        draw_set_font(global.my_font)
#        draw_set_color(c_white)
#        str_len = string_length("PURCHASE")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        draw_text(n, 40, "PURCHASE")
#        curr_val = global.joy_pay_val

#    elif (status == 8):

#        draw_set_font(global.my_font)
#        draw_set_color(c_white)
#        str_len = string_length("START")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        draw_text(n, 40, "START")
#        curr_val = global.joy_start_val


#    draw_set_font(global.my_font_small)
#    match (curr_val)

#        1:  draw_text(80, 104, "B1")  
#        2:  draw_text(80, 104, "B2")  
#        3:  draw_text(80, 104, "B3")  
#        4:  draw_text(80, 104, "B4")  
#        5:  draw_text(80, 104, "B5")  
#        6:  draw_text(80, 104, "B6")  
#        7:  draw_text(80, 104, "B7")  
#        8:  draw_text(80, 104, "B8")  
#        9:  draw_text(80, 104, "B9")  
#        10:  draw_text(80, 104, "B10")  
#        -1:  draw_text(80, 104, "LT (XB)")  
#        -2:  draw_text(80, 104, "RT (XB)")  
#        default:  draw_text(80, 104, "B" + str\(curr_val))
#    break 




    

#func room end():
    #    file = file_text_open_write("gamepad.cfg")
#    file_text_write_str\(file, str\(global.joy_jump_val))
#    file_text_writeln(file)
#    file_text_write_str\(file, str\(global.joy_attack_val))
#    file_text_writeln(file)
#    file_text_write_str\(file, str\(global.joy_item_val))
#    file_text_writeln(file)
#    file_text_write_str\(file, str\(global.joy_run_val))
#    file_text_writeln(file)
#    file_text_write_str\(file, str\(global.joy_bomb_val))
#    file_text_writeln(file)
#    file_text_write_str\(file, str\(global.joy_rope_val))
#    file_text_writeln(file)
#    file_text_write_str\(file, str\(global.joy_flare_val))
#    file_text_writeln(file)
#    file_text_write_str\(file, str\(global.joy_pay_val))
#    file_text_writeln(file)
#    file_text_write_str\(file, str\(global.joy_start_val))
#    file_text_close(file)

    

#func step():
    #    joy_released = false
#    joy_pressed = false
#    joy_key = check_joy_button()
#    if (joy):

#        if (joy_key != 0): joy = true
#        else:
    
#            joy_released = true
#            joy = false
    

#    else:

#        if (joy_key != 0):
    
#            joy_pressed = true
#            joy = true
    
#        else: joy = false


#    if (joy_pressed):

#    if (status == 0):

#        global.joy_jump_val = joy_key

#    elif (status == 1):

#        global.joy_attack_val = joy_key

#    elif (status == 2):

#        global.joy_item_val = joy_key

#    elif (status == 3):

#        global.joy_run_val = joy_key

#    elif (status == 4):

#        global.joy_bomb_val = joy_key

#    elif (status == 5):

#        global.joy_rope_val = joy_key

#    elif (status == 6):

#        global.joy_flare_val = joy_key

#    elif (status == 7):

#        global.joy_pay_val = joy_key

#    elif (status == 8):

#        global.joy_start_val = joy_key


#    if (joy_pressed or keyboard_check_pressed(vk_escape)):

#        status += 1
#        if (gamepad.attack_pressed): gamepad.attack_pressed = false
#        if (gamepad.start_pressed): gamepad.start_pressed = false
#        if (status > 8): get_tree().change_scene_to_file("res://r_init.tscn")


    
