
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
#    str_len = string_length("press button for")*8
#    n = 160 - str_len
#    n = ceil(n / 2)
#    draw_text(n, 32, "press button for")
#    draw_text(8, 96, "esc to keep same.")
#    draw_text(8, 104, "current: ")

#    if (not joystick_exists(1)):

#        draw_set_color(c_red)
#        draw_text(8, 88, "no gamepad found!")


#    if (status == 0):

#        draw_set_font(global.my_font)
#        draw_set_color(c_white)
#        str_len = string_length("jump")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        draw_text(n, 40, "jump")
#        curr_val = global.joy_jump_val

#    elif (status == 1):

#        draw_set_font(global.my_font)
#        draw_set_color(c_white)
#        str_len = string_length("action")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        draw_text(n, 40, "action")
#        curr_val = global.joy_attack_val

#    elif (status == 2):

#        draw_set_font(global.my_font)
#        draw_set_color(c_white)
#        str_len = string_length("switch")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        draw_text(n, 40, "switch")
#        curr_val = global.joy_item_val

#    elif (status == 3):

#        draw_set_font(global.my_font)
#        draw_set_color(c_white)
#        str_len = string_length("run")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        draw_text(n, 40, "run")
#        curr_val = global.joy_run_val

#    elif (status == 4):

#        draw_set_font(global.my_font)
#        draw_set_color(c_white)
#        str_len = string_length("bomb")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        draw_text(n, 40, "bomb")
#        curr_val = global.joy_bomb_val

#    elif (status == 5):

#        draw_set_font(global.my_font)
#        draw_set_color(c_white)
#        str_len = string_length("rope")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        draw_text(n, 40, "rope")
#        curr_val = global.joy_rope_val

#    elif (status == 6):

#        draw_set_font(global.my_font)
#        draw_set_color(c_white)
#        str_len = string_length("flare")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        draw_text(n, 40, "flare")
#        curr_val = global.joy_flare_val

#    elif (status == 7):

#        draw_set_font(global.my_font)
#        draw_set_color(c_white)
#        str_len = string_length("purchase")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        draw_text(n, 40, "purchase")
#        curr_val = global.joy_pay_val

#    elif (status == 8):

#        draw_set_font(global.my_font)
#        draw_set_color(c_white)
#        str_len = string_length("start")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        draw_text(n, 40, "start")
#        curr_val = global.joy_start_val


#    draw_set_font(global.my_font_small)
#    match (curr_val)

#        1:  draw_text(80, 104, "b1")  
#        2:  draw_text(80, 104, "b2")  
#        3:  draw_text(80, 104, "b3")  
#        4:  draw_text(80, 104, "b4")  
#        5:  draw_text(80, 104, "b5")  
#        6:  draw_text(80, 104, "b6")  
#        7:  draw_text(80, 104, "b7")  
#        8:  draw_text(80, 104, "b8")  
#        9:  draw_text(80, 104, "b9")  
#        10:  draw_text(80, 104, "b10")  
#        -1:  draw_text(80, 104, "lt (xb)")  
#        -2:  draw_text(80, 104, "rt (xb)")  
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
