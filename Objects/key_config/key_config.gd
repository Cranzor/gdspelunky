
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

    

#func draw():
    #    draw_set_font(global.my_font_small)
#    draw_set_color(c_yellow)
#    str_len = string_length("press key for")*8
#    n = 160 - str_len
#    n = ceil(n / 2)
#    draw_text(n, 32, "press key for")
#    draw_text(8, 96, "esc to keep same.")
#    draw_text(8, 104, "current: ")

#    if (status == 0):

#        draw_set_font(global.my_font)
#        draw_set_color(c_white)
#        str_len = string_length("up")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        draw_text(n, 40, "up")
#        curr_val = global.key_up_val

#    elif (status == 1):

#        draw_set_font(global.my_font)
#        draw_set_color(c_white)
#        str_len = string_length("down")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        draw_text(n, 40, "down")
#        curr_val = global.key_down_val

#    elif (status == 2):

#        draw_set_font(global.my_font)
#        draw_set_color(c_white)
#        str_len = string_length("left")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        draw_text(n, 40, "left")
#        curr_val = global.key_left_val

#    elif (status == 3):

#        draw_set_font(global.my_font)
#        draw_set_color(c_white)
#        str_len = string_length("right")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        draw_text(n, 40, "right")
#        curr_val = global.key_right_val

#    elif (status == 4):

#        draw_set_font(global.my_font)
#        draw_set_color(c_white)
#        str_len = string_length("jump")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        draw_text(n, 40, "jump")
#        curr_val = global.key_jump_val

#    elif (status == 5):

#        draw_set_font(global.my_font)
#        draw_set_color(c_white)
#        str_len = string_length("action")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        draw_text(n, 40, "action")
#        curr_val = global.key_attack_val

#    elif (status == 6):

#        draw_set_font(global.my_font)
#        draw_set_color(c_white)
#        str_len = string_length("switch")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        draw_text(n, 40, "switch")
#        curr_val = global.key_item_val

#    elif (status == 7):

#        draw_set_font(global.my_font)
#        draw_set_color(c_white)
#        str_len = string_length("run")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        draw_text(n, 40, "run")
#        curr_val = global.key_run_val

#    elif (status == 8):

#        draw_set_font(global.my_font)
#        draw_set_color(c_white)
#        str_len = string_length("bomb")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        draw_text(n, 40, "bomb")
#        curr_val = global.key_bomb_val

#    elif (status == 9):

#        draw_set_font(global.my_font)
#        draw_set_color(c_white)
#        str_len = string_length("rope")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        draw_text(n, 40, "rope")
#        curr_val = global.key_rope_val

#    elif (status == 10):

#        draw_set_font(global.my_font)
#        draw_set_color(c_white)
#        str_len = string_length("flare")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        draw_text(n, 40, "flare")
#        curr_val = global.key_flare_val

#    elif (status == 11):

#        draw_set_font(global.my_font)
#        draw_set_color(c_white)
#        str_len = string_length("purchase")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        draw_text(n, 40, "purchase")
#        curr_val = global.key_pay_val


#    draw_set_font(global.my_font_small)
#    match (curr_val)

#        vk_up:  draw_text(80, 104, "up arr")
#    break 
#        vk_down:  draw_text(80, 104, "down arr")
#    break 
#        vk_left:  draw_text(80, 104, "left arr")
#    break 
#        vk_right:  draw_text(80, 104, "right arr")
#    break 
#        vk_shift:  draw_text(80, 104, "shift")
#    break 
#        vk_control:  draw_text(80, 104, "ctrl")
#    break 
#        vk_alt:  draw_text(80, 104, "alt")
#    break 
#        vk_space:  draw_text(80, 104, "space")
#    break 
#        vk_enter:  draw_text(80, 104, "enter")
#    break 
#        ord("A"):  draw_text(80, 104, "A")
#    break 
#        ord("B"):  draw_text(80, 104, "B")
#    break 
#        ord("C"):  draw_text(80, 104, "C")
#    break 
#        ord("D"):  draw_text(80, 104, "D")
#    break 
#        ord("E"):  draw_text(80, 104, "E")
#    break 
#        ord("F"):  draw_text(80, 104, "F")
#    break 
#        ord("G"):  draw_text(80, 104, "G")
#    break 
#        ord("H"):  draw_text(80, 104, "H")
#    break 
#        ord("I"):  draw_text(80, 104, "I")
#    break 
#        ord("J"):  draw_text(80, 104, "J")
#    break 
#        ord("K"):  draw_text(80, 104, "K")
#    break 
#        ord("L"):  draw_text(80, 104, "L")
#    break 
#        ord("M"):  draw_text(80, 104, "M")
#    break 
#        ord("N"):  draw_text(80, 104, "N")
#    break 
#        ord("O"):  draw_text(80, 104, "O")
#    break 
#        ord("P"):  draw_text(80, 104, "P")
#    break 
#        ord("Q"):  draw_text(80, 104, "Q")
#    break 
#        ord("R"):  draw_text(80, 104, "R")
#    break 
#        ord("S"):  draw_text(80, 104, "S")
#    break 
#        ord("T"):  draw_text(80, 104, "T")
#    break 
#        ord("U"):  draw_text(80, 104, "U")
#    break 
#        ord("V"):  draw_text(80, 104, "V")
#    break 
#        ord("W"):  draw_text(80, 104, "W")
#    break 
#        ord("X"):  draw_text(80, 104, "X")
#    break 
#        ord("Y"):  draw_text(80, 104, "Y")
#    break 
#        ord("Z"):  draw_text(80, 104, "Z")
#    break 
#        default:  draw_text(80, 104, "key " + str\(curr_val))
#    break 




    

#func key any key pressed():
    #    if (keyboard_key != vk_escape):

#    if (status == 0):

#        global.key_up_val = keyboard_key

#    elif (status == 1):

#        global.key_down_val = keyboard_key

#    elif (status == 2):

#        global.key_left_val = keyboard_key

#    elif (status == 3):

#        global.key_right_val = keyboard_key

#    elif (status == 4):

#        global.key_jump_val = keyboard_key

#    elif (status == 5):

#        global.key_attack_val = keyboard_key

#    elif (status == 6):

#        global.key_item_val = keyboard_key

#    elif (status == 7):

#        global.key_run_val = keyboard_key

#    elif (status == 8):

#        global.key_bomb_val = keyboard_key

#    elif (status == 9):

#        global.key_rope_val = keyboard_key

#    elif (status == 10):

#        global.key_flare_val = keyboard_key

#    elif (status == 11):

#        global.key_pay_val = keyboard_key



#    status += 1
#    if (status > 11): get_tree().change_scene_to_file("res://r_init.tscn")

    

#func room end():
    #    file = file_text_open_write("keys.cfg")
#    file_text_write_str\(file, str\(global.key_up_val))
#    file_text_writeln(file)
#    file_text_write_str\(file, str\(global.key_down_val))
#    file_text_writeln(file)
#    file_text_write_str\(file, str\(global.key_left_val))
#    file_text_writeln(file)
#    file_text_write_str\(file, str\(global.key_right_val))
#    file_text_writeln(file)
#    file_text_write_str\(file, str\(global.key_jump_val))
#    file_text_writeln(file)
#    file_text_write_str\(file, str\(global.key_attack_val))
#    file_text_writeln(file)
#    file_text_write_str\(file, str\(global.key_item_val))
#    file_text_writeln(file)
#    file_text_write_str\(file, str\(global.key_run_val))
#    file_text_writeln(file)
#    file_text_write_str\(file, str\(global.key_bomb_val))
#    file_text_writeln(file)
#    file_text_write_str\(file, str\(global.key_rope_val))
#    file_text_writeln(file)
#    file_text_write_str\(file, str\(global.key_flare_val))
#    file_text_writeln(file)
#    file_text_write_str\(file, str\(global.key_pay_val))
#    file_text_close(file)
