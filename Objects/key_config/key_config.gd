extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func create():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="CREATE" id="0">
#      <actions>
#        <action id="603" library="1">
#          <!--action name: Code-->
#          <kind>CODE</kind>
#          <allow_relative>false</allow_relative>
#          <question>false</question>
#          <can_apply_to>true</can_apply_to>
#          <action_type>CODE</action_type>
#          <function_name/>
#          <relative>false</relative>
#          <not>false</not>
#          <applies_to>.self</applies_to>
#          <arguments>
#            <argument kind="STRING">status = 0</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func draw():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="DRAW" id="0">
#      <actions>
#        <action id="603" library="1">
#          <!--action name: Code-->
#          <kind>CODE</kind>
#          <allow_relative>false</allow_relative>
#          <question>false</question>
#          <can_apply_to>true</can_apply_to>
#          <action_type>CODE</action_type>
#          <function_name/>
#          <relative>false</relative>
#          <not>false</not>
#          <applies_to>.self</applies_to>
#          <arguments>
#            <argument kind="STRING">draw_set_font(global.my_font_small)
#    draw_set_color(c_yellow)
#    str_len = string_length("PRESS KEY FOR")*8
#    n = 160 - str_len
#    n = ceil(n / 2)
#    draw_text(n, 32, "PRESS KEY FOR")
#    draw_text(8, 96, "ESC TO KEEP SAME.")
#    draw_text(8, 104, "CURRENT: ")

#    if (status == 0):

#        draw_set_font(global.my_font)
#        draw_set_color(c_white)
#        str_len = string_length("UP")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        draw_text(n, 40, "UP")
#        curr_val = global.key_up_val

#    elif (status == 1):

#        draw_set_font(global.my_font)
#        draw_set_color(c_white)
#        str_len = string_length("DOWN")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        draw_text(n, 40, "DOWN")
#        curr_val = global.key_down_val

#    elif (status == 2):

#        draw_set_font(global.my_font)
#        draw_set_color(c_white)
#        str_len = string_length("LEFT")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        draw_text(n, 40, "LEFT")
#        curr_val = global.key_left_val

#    elif (status == 3):

#        draw_set_font(global.my_font)
#        draw_set_color(c_white)
#        str_len = string_length("RIGHT")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        draw_text(n, 40, "RIGHT")
#        curr_val = global.key_right_val

#    elif (status == 4):

#        draw_set_font(global.my_font)
#        draw_set_color(c_white)
#        str_len = string_length("JUMP")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        draw_text(n, 40, "JUMP")
#        curr_val = global.key_jump_val

#    elif (status == 5):

#        draw_set_font(global.my_font)
#        draw_set_color(c_white)
#        str_len = string_length("ACTION")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        draw_text(n, 40, "ACTION")
#        curr_val = global.key_attack_val

#    elif (status == 6):

#        draw_set_font(global.my_font)
#        draw_set_color(c_white)
#        str_len = string_length("SWITCH")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        draw_text(n, 40, "SWITCH")
#        curr_val = global.key_item_val

#    elif (status == 7):

#        draw_set_font(global.my_font)
#        draw_set_color(c_white)
#        str_len = string_length("RUN")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        draw_text(n, 40, "RUN")
#        curr_val = global.key_run_val

#    elif (status == 8):

#        draw_set_font(global.my_font)
#        draw_set_color(c_white)
#        str_len = string_length("BOMB")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        draw_text(n, 40, "BOMB")
#        curr_val = global.key_bomb_val

#    elif (status == 9):

#        draw_set_font(global.my_font)
#        draw_set_color(c_white)
#        str_len = string_length("ROPE")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        draw_text(n, 40, "ROPE")
#        curr_val = global.key_rope_val

#    elif (status == 10):

#        draw_set_font(global.my_font)
#        draw_set_color(c_white)
#        str_len = string_length("FLARE")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        draw_text(n, 40, "FLARE")
#        curr_val = global.key_flare_val

#    elif (status == 11):

#        draw_set_font(global.my_font)
#        draw_set_color(c_white)
#        str_len = string_length("PURCHASE")*16
#        n = 160 - str_len
#        n = ceil(n / 2)
#        draw_text(n, 40, "PURCHASE")
#        curr_val = global.key_pay_val


#    draw_set_font(global.my_font_small)
#    match (curr_val)

#        vk_up:  draw_text(80, 104, "UP ARR")
#    break 
#        vk_down:  draw_text(80, 104, "DOWN ARR")
#    break 
#        vk_left:  draw_text(80, 104, "LEFT ARR")
#    break 
#        vk_right:  draw_text(80, 104, "RIGHT ARR")
#    break 
#        vk_shift:  draw_text(80, 104, "SHIFT")
#    break 
#        vk_control:  draw_text(80, 104, "CTRL")
#    break 
#        vk_alt:  draw_text(80, 104, "ALT")
#    break 
#        vk_space:  draw_text(80, 104, "SPACE")
#    break 
#        vk_enter:  draw_text(80, 104, "ENTER")
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
#        default:  draw_text(80, 104, "KEY " + str\(curr_val))
#    break 


#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func key any key pressed():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="KEYPRESS" id="1">
#      <actions>
#        <action id="603" library="1">
#          <!--action name: Code-->
#          <kind>CODE</kind>
#          <allow_relative>false</allow_relative>
#          <question>false</question>
#          <can_apply_to>true</can_apply_to>
#          <action_type>CODE</action_type>
#          <function_name/>
#          <relative>false</relative>
#          <not>false</not>
#          <applies_to>.self</applies_to>
#          <arguments>
#            <argument kind="STRING">if (keyboard_key != vk_escape):

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
#    if (status > 11): get_tree().change_scene_to_file("res://r_init.tscn")</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func room end():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="OTHER" id="5">
#      <actions>
#        <action id="603" library="1">
#          <!--action name: Code-->
#          <kind>CODE</kind>
#          <allow_relative>false</allow_relative>
#          <question>false</question>
#          <can_apply_to>true</can_apply_to>
#          <action_type>CODE</action_type>
#          <function_name/>
#          <relative>false</relative>
#          <not>false</not>
#          <applies_to>.self</applies_to>
#          <arguments>
#            <argument kind="STRING">file = file_text_open_write("keys.cfg")
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
#    file_text_close(file)</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    
