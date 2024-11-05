
extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func create():
    #    global.clean_solids = false
#    global.message = ""
#    global.message2 = ""
#    window_set_cursor(cr_default)
#    global.keep_score = false
#    global.curr_level = 1
#    level_loaded = false

#    msg = "press escape to return to title."
#    msg_timer = 0

#    GET_FILE_NAME = 0
#    status = 0
#    black_out = false
#    if (global.custom_level):

#        status = 1
#        black_out = true

#    else:

#        life_start = "4"
#        bomb_start = "4"
#        rope_start = "4"
#        gml.instance_create(256, 64, Objects.load_button)
#        global.prev_custom_level = ""


#    level_name = global.first_custom_level
#    author = "anonymous"
#    music = "cave"
#    next_level = ""

#    for j in range(0, 32):

#        for i in range(0, 40):
    
#            level_array[i, j] = "0"
    


#    # dy:  load level list
#    if (not global.custom_level):

#        temp_file = file_find_first("levels\*.lvl", 0)
#        while (temp_file != ""):
    
#            if (string_char_at(temp_file, 0) != "!"):
        
           
#    break
        
#            temp_file = file_find_next()
    
#        level_list[0] = ""
#        level_list[0] = temp_file
#        level_list[0] = string_delete(level_list[0], string_length(level_list[0])-3, 4)
#        num_levels = 1
#        while (level_list[num_levels-1] != ""):
    
#            temp_file = file_find_next()
#            if (temp_file != ""):
        
#                if (string_char_at(temp_file, 0) != "!"):
            
#                    level_list[num_levels] = temp_file
#                    level_list[num_levels] = string_delete(level_list[num_levels], string_length(level_list[num_levels])-3, 4)
#                    num_levels += 1
            
        
#            else:
        
           
#    break
        
    
#        if (level_list[0] == ""): num_levels = 0

#        page = 1
#        num_pages = ceil(num_levels / 10)

#        instance_deactivate_object(page_up)
#        if (num_pages <= 1): instance_deactivate_object(page_down)


#    if (global.custom_level and not level_loaded):

#        scr_load_level(-1)

#    else: screen.enabled = false


    

#func draw():
    #    draw_set_font(global.my_font_small)
#    draw_set_color(c_white)

#    if (status == GET_FILE_NAME):

#        draw_text(view_xview[0]+32, view_yview[0]+64, "load level: " + level_name)
#        draw_set_color(c_yellow)
#        draw_text(view_xview[0]+40, view_yview[0]+96, "levels")
#        draw_text(view_xview[0]+224, view_yview[0]+96, str\(page) + "/" + str\(num_pages))
#        if (msg_timer > 0):
    
#            draw_set_color(c_red)
#            draw_text(view_xview[0]+32, view_yview[0]+224, "no such level exists!")
    
#        else: draw_text(view_xview[0]+32, view_yview[0]+224, "press escape to return to title.")
#        draw_set_color(c_white)
#        n = 112
#        m = 0
#        i = (page-1)*10
#        while (m < 10 and i+m < num_levels):
    
#            draw_text(view_xview[0]+40, view_yview[0]+n, string_upper(level_list[i+m]))
#            n += 8
#            m += 1
    


#    if (black_out):

#        draw_set_color(c_black)
#        draw_rectangle(0, 0, 320, 240, false)


    

#func key any key pressed():
    #    if (status == GET_FILE_NAME):

#        if (keyboard_key == vk_escape):
    
#            global.game_start = false
#            global.title_start = 2
#            get_tree().change_scene_to_file("res://r_title.tscn")
    
#        elif (keyboard_key == vk_enter):
    
#            global.first_custom_level = level_name
#            scr_load_level()
    
#        elif (keyboard_key == vk_backspace or keyboard_key == vk_delete):
    
#            # dy: level_name += "del"
#            level_name = string_delete(level_name, string_length(level_name), 1)
#            with menu_sel  sprite_index = "menu_sel_off "
    
#        else:
    
#            level_name += scr_get_char(keyboard_key)
#            with menu_sel  sprite_index = "menu_sel_off "
    


    

#func step():
    #    if (msg_timer > 0): msg_timer -= 1
#    else: msg = "press escape to return to title."

#    /*
#    if (status == GET_FILE_NAME):

#        if (ControlScripts.check_start_pressed() or gamepad.attack_pressed):
    
#            if (level_name != ""):
        
#                global.first_custom_level = level_name
#                scr_load_level()
        
    

#    */
