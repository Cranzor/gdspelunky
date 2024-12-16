
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
#    gml.draw_set_font(global.my_font_small)
#    gml.draw_set_color(gml.c_yellow)
#    str_len = string_length("PRESS KEY FOR")*8
#    n = 160 - str_len
#    n = ceil(n / 2)
#    gml.draw_text(n, 32, "PRESS KEY FOR")
#    gml.draw_text(8, 96, "ESC TO KEEP SAME.")
#    gml.draw_text(8, 104, "CURRENT: ")

#    if (status == 0):

#        gml.draw_set_font(global.my_font)
#        gml.draw_set_color(gml.c_white)
#        str_len = string_length("UP")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        gml.draw_text(n, 40, "UP")
#        curr_val = global.key_up_val

#    elif (status == 1):

#        gml.draw_set_font(global.my_font)
#        gml.draw_set_color(gml.c_white)
#        str_len = string_length("DOWN")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        gml.draw_text(n, 40, "DOWN")
#        curr_val = global.key_down_val

#    elif (status == 2):

#        gml.draw_set_font(global.my_font)
#        gml.draw_set_color(gml.c_white)
#        str_len = string_length("LEFT")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        gml.draw_text(n, 40, "LEFT")
#        curr_val = global.key_left_val

#    elif (status == 3):

#        gml.draw_set_font(global.my_font)
#        gml.draw_set_color(gml.c_white)
#        str_len = string_length("RIGHT")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        gml.draw_text(n, 40, "RIGHT")
#        curr_val = global.key_right_val

#    elif (status == 4):

#        gml.draw_set_font(global.my_font)
#        gml.draw_set_color(gml.c_white)
#        str_len = string_length("JUMP")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        gml.draw_text(n, 40, "JUMP")
#        curr_val = global.key_jump_val

#    elif (status == 5):

#        gml.draw_set_font(global.my_font)
#        gml.draw_set_color(gml.c_white)
#        str_len = string_length("ACTION")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        gml.draw_text(n, 40, "ACTION")
#        curr_val = global.key_attack_val

#    elif (status == 6):

#        gml.draw_set_font(global.my_font)
#        gml.draw_set_color(gml.c_white)
#        str_len = string_length("SWITCH")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        gml.draw_text(n, 40, "SWITCH")
#        curr_val = global.key_item_val

#    elif (status == 7):

#        gml.draw_set_font(global.my_font)
#        gml.draw_set_color(gml.c_white)
#        str_len = string_length("RUN")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        gml.draw_text(n, 40, "RUN")
#        curr_val = global.key_run_val

#    elif (status == 8):

#        gml.draw_set_font(global.my_font)
#        gml.draw_set_color(gml.c_white)
#        str_len = string_length("BOMB")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        gml.draw_text(n, 40, "BOMB")
#        curr_val = global.key_bomb_val

#    elif (status == 9):

#        gml.draw_set_font(global.my_font)
#        gml.draw_set_color(gml.c_white)
#        str_len = string_length("ROPE")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        gml.draw_text(n, 40, "ROPE")
#        curr_val = global.key_rope_val

#    elif (status == 10):

#        gml.draw_set_font(global.my_font)
#        gml.draw_set_color(gml.c_white)
#        str_len = string_length("FLARE")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        gml.draw_text(n, 40, "FLARE")
#        curr_val = global.key_flare_val

#    elif (status == 11):

#        gml.draw_set_font(global.my_font)
#        gml.draw_set_color(gml.c_white)
#        str_len = string_length("PURCHASE")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        gml.draw_text(n, 40, "PURCHASE")
#        curr_val = global.key_pay_val


#    gml.draw_set_font(global.my_font_small)
#    match (curr_val)

#        vk_up:  gml.draw_text(80, 104, "UP ARR")
#    break 
#        vk_down:  gml.draw_text(80, 104, "DOWN ARR")
#    break 
#        vk_left:  gml.draw_text(80, 104, "LEFT ARR")
#    break 
#        vk_right:  gml.draw_text(80, 104, "RIGHT ARR")
#    break 
#        vk_shift:  gml.draw_text(80, 104, "SHIFT")
#    break 
#        vk_control:  gml.draw_text(80, 104, "CTRL")
#    break 
#        vk_alt:  gml.draw_text(80, 104, "ALT")
#    break 
#        vk_space:  gml.draw_text(80, 104, "SPACE")
#    break 
#        vk_enter:  gml.draw_text(80, 104, "ENTER")
#    break 
#        ord("A"):  gml.draw_text(80, 104, "A")
#    break 
#        ord("B"):  gml.draw_text(80, 104, "B")
#    break 
#        ord("C"):  gml.draw_text(80, 104, "C")
#    break 
#        ord("D"):  gml.draw_text(80, 104, "D")
#    break 
#        ord("E"):  gml.draw_text(80, 104, "E")
#    break 
#        ord("F"):  gml.draw_text(80, 104, "F")
#    break 
#        ord("G"):  gml.draw_text(80, 104, "G")
#    break 
#        ord("H"):  gml.draw_text(80, 104, "H")
#    break 
#        ord("I"):  gml.draw_text(80, 104, "I")
#    break 
#        ord("J"):  gml.draw_text(80, 104, "J")
#    break 
#        ord("K"):  gml.draw_text(80, 104, "K")
#    break 
#        ord("L"):  gml.draw_text(80, 104, "L")
#    break 
#        ord("M"):  gml.draw_text(80, 104, "M")
#    break 
#        ord("N"):  gml.draw_text(80, 104, "N")
#    break 
#        ord("O"):  gml.draw_text(80, 104, "O")
#    break 
#        ord("P"):  gml.draw_text(80, 104, "P")
#    break 
#        ord("Q"):  gml.draw_text(80, 104, "Q")
#    break 
#        ord("R"):  gml.draw_text(80, 104, "R")
#    break 
#        ord("S"):  gml.draw_text(80, 104, "S")
#    break 
#        ord("T"):  gml.draw_text(80, 104, "T")
#    break 
#        ord("U"):  gml.draw_text(80, 104, "U")
#    break 
#        ord("V"):  gml.draw_text(80, 104, "V")
#    break 
#        ord("W"):  gml.draw_text(80, 104, "W")
#    break 
#        ord("X"):  gml.draw_text(80, 104, "X")
#    break 
#        ord("Y"):  gml.draw_text(80, 104, "Y")
#    break 
#        ord("Z"):  gml.draw_text(80, 104, "Z")
#    break 
#        default:  gml.draw_text(80, 104, "KEY " + str(curr_val))
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
#    file_text_write_str(file, str(global.key_up_val))
#    file_text_writeln(file)
#    file_text_write_str(file, str(global.key_down_val))
#    file_text_writeln(file)
#    file_text_write_str(file, str(global.key_left_val))
#    file_text_writeln(file)
#    file_text_write_str(file, str(global.key_right_val))
#    file_text_writeln(file)
#    file_text_write_str(file, str(global.key_jump_val))
#    file_text_writeln(file)
#    file_text_write_str(file, str(global.key_attack_val))
#    file_text_writeln(file)
#    file_text_write_str(file, str(global.key_item_val))
#    file_text_writeln(file)
#    file_text_write_str(file, str(global.key_run_val))
#    file_text_writeln(file)
#    file_text_write_str(file, str(global.key_bomb_val))
#    file_text_writeln(file)
#    file_text_write_str(file, str(global.key_rope_val))
#    file_text_writeln(file)
#    file_text_write_str(file, str(global.key_flare_val))
#    file_text_writeln(file)
#    file_text_write_str(file, str(global.key_pay_val))
#    file_text_close(file)
