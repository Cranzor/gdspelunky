
extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func create():
    #    global.clean_solids = true
#    window_set_cursor(cr_none)
#    drop_val = 0

#    GET_FILE_NAME = 0
#    edit = 1
#    INFO_NAME = 2
#    INFO_AUTHOR = 3
#    INFO_MUSIC = 4
#    INFO_LIFE = 5
#    INFO_BOMBS = 6
#    INFO_ROPE = 7
#    INFO_NEXT = 8
#    exit = 9
#    new = 10
#    EDIT_DOOR = 11
#    EDIT_MSG = 12
#    status = 0

#    level_name = ""
#    author = "anonymous"
#    music = "cave"
#    life_start = "4"
#    bomb_start = "4"
#    rope_start = "4"
#    next_level = "none"
#    text_edit = ""

#    for j in range(0, 32):

#        for i in range(0, 40):
    
#            level_array[i, j] = "0"
    


#    blocks = 0
#    enemies = 1
#    traps = 2
#    items = 3
#    drop_select = 0
#    if (global.tunnel1 == 0 and global.tunnel2 > 0): drop_max = 18
#    elif (global.tunnel1 > 0 and global.tunnel2 == 0): drop_max = 21
#    elif (global.tunnel1 == 0 and global.tunnel2 == 0): drop_max = 23
#    else: drop_max = 10

#    # dy:  debug
#    # dy:  drop_max = 23

#    block_array[0] = "@" # dy:  entrance
#    block_array[1] = "X" # dy:  exit
#    block_array[2] = "I" # dy:  sign
#    block_array[3] = "1" # dy:  mines
#    block_array[4] = "L" # dy:  ladder
#    block_array[5] = "P" # dy:  ladder platform
#    block_array[6] = "B" # dy:  push block
#    block_array[7] = "&" # dy:  web
#    block_array[8] = "r" # dy:  rock
#    block_array[9] = "j" # dy:  jar
#    block_array[10] = "k" # dy:  bones
#    block_array[11] = "2" # dy:  jungle
#    block_array[12] = "w" # dy:  water
#    block_array[13] = "v" # dy:  vine
#    block_array[14] = "t" # dy:  vine top
#    block_array[15] = "|" # dy:  tree trunk
#    block_array[16] = "position.x" # dy:  tree top
#    block_array[17] = ")" # dy:  tree leaves
#    block_array[18] = "q" # dy:  tree branch
#    block_array[19] = "3" # dy:  dark
#    block_array[20] = "d" # dy:  dark drop
#    block_array[21] = "i" # dy:  ice
#    block_array[22] = "4" # dy:  temple
#    block_array[23] = "l" # dy:  lava

#    enemy_array[0] = "b" # dy:  bat
#    enemy_array[1] = "n" # dy:  snake
#    enemy_array[2] = "s" # dy:  spider
#    enemy_array[3] = "S" # dy:  giant spider
#    enemy_array[4] = "K" # dy:  skeleton
#    enemy_array[5] = "h" # dy:  caveman
#    enemy_array[6] = "!" # dy:  shopkeeper
#    enemy_array[7] = "f" # dy:  frog
#    enemy_array[8] = "F" # dy:  fire frog
#    enemy_array[9] = "z" # dy:  zombie
#    enemy_array[10] = "A" # dy:  vampire
#    enemy_array[11] = "M" # dy:  man trap
#    enemy_array[12] = "m" # dy:  monkey
#    enemy_array[13] = "p" # dy:  piranha
#    enemy_array[14] = "" # dy:  mega mouth
#    enemy_array[15] = "a" # dy:  alien
#    enemy_array[16] = "U" # dy:  ufo
#    enemy_array[17] = "E" # dy:  alien boss
#    enemy_array[18] = "position.y" # dy:  yeti
#    enemy_array[19] = "Y" # dy:  yeti king
#    enemy_array[20] = "H" # dy:  hawkman
#    enemy_array[21] = "T" # dy:  tomb lord

#    trap_array[0] = "^" # dy:  spikes
#    trap_array[1] = "<" # dy:  arrow trap left
#    trap_array[2] = ">" # dy:  arrow trap right
#    trap_array[3] = "]" # dy:  spear trap top
#    trap_array[4] = "[" # dy:  spear trap bottom
#    trap_array[5] = "_" # dy:  spring trap
#    trap_array[6] = "+" # dy:  smash trap

#    loot_array[0] = "$" # dy:  gold bar
#    loot_array[1] = "*" # dy:  gold bars
#    loot_array[2] = "#" # dy:  gold idol
#    loot_array[3] = "O" # dy:  crystal skull
#    loot_array[4] = "5" # dy:  emerald
#    loot_array[5] = "6" # dy:  sapphire
#    loot_array[6] = "7" # dy:  ruby
#    loot_array[7] = "8" # dy:  diamond
#    loot_array[8] = "c" # dy:  chest
#    loot_array[9] = "C" # dy:  crate
#    loot_array[10] = "D" # dy:  damsel
#    loot_array[11] = "." # dy:  bomb bag
#    loot_array[12] = ":" # dy:  bomb box
#    loot_array[13] = "u" # dy:  paste
#    loot_array[14] = "R" # dy:  rope pile
#    loot_array[15] = "`" # dy:  parachute
#    loot_array[16] = "o" # dy:  compass
#    loot_array[17] = "/" # dy:  machete
#    loot_array[18] = "~" # dy:  spring shoes
#    loot_array[19] = "V" # dy:  spike shoes
#    loot_array[20] = "" # dy:  bow
#    loot_array[21] = "-" # dy:  pistol
#    loot_array[22] = "=" # dy:  shotgun
#    loot_array[23] = "W" # dy:  web cannon
#    loot_array[24] = "%" # dy:  spectacles
#    loot_array[25] = "G" # dy:  gloves
#    loot_array[26] = "g" # dy:  mitt
#    loot_array[27] = "?" # dy:  teleporter
#    loot_array[28] = "(" # dy:  mattock
#    loot_array[29] = "\" # dy:  cape
#    loot_array[30] = "J" # dy:  jetpack

#    if (global.test_level != ""):

#        /*
#        status = edit
#        level_name = global.test_level
#        file = file_text_open_read("levels/" + string_lower(level_name)+".lvl")
#        if (file):
    
#            for j in range(0, 32):
        
#                str = file_text_read_str\(file)
#                for i in range(0, 40):
            
#                    level_array[i, j] = string_char_at(str, i+1)
#                    scr_create_tile(level_array[i, j], 16+i*16, 16+j*16)
            
#                file_text_readln(file)
        
#            author = file_text_read_str\(file)
#            file_text_readln(file)
#            music = file_text_read_str\(file)
#            file_text_readln(file)
#            life_start = file_text_read_str\(file)
#            file_text_readln(file)
#            bomb_start = file_text_read_str\(file)
#            file_text_readln(file)
#            rope_start = file_text_read_str\(file)
#            file_text_readln(file)
#            next_level = file_text_read_str\(file)
#            file_text_close(file)
    
#        */
    
#                status = edit
#                level_name = global.test_level
#                file = file_text_open_read("levels/test.tmp")
#                # dy:  file = file_text_open_read("levels/" + string_lower(level_name)+".lvl")
#                if (file):
            
#                    for j in range(0, 32):
                
#                        str = file_text_read_str\(file)
#                        for i in range(0, 40):
                    
#                            level_array[i, j] = string_char_at(str, i+1)
#                            # dy: scr_create_tile(level_array[i, j], 16+i*16, 16+j*16)
                    
#                        file_text_readln(file)
                
#                    author = file_text_read_str\(file)
#                    file_text_readln(file)
#                    music = file_text_read_str\(file)
#                    file_text_readln(file)
#                    life_start = file_text_read_str\(file)
#                    file_text_readln(file)
#                    bomb_start = file_text_read_str\(file)
#                    file_text_readln(file)
#                    rope_start = file_text_read_str\(file)
#                    file_text_readln(file)
#                    next_level = file_text_read_str\(file)
#                    exit_name"num = 0"
#                    if (not file_text_eof(file)):
                
#                        file_text_readln(file)
#                        exit_name"num = real(file_text_read_str\(file))"
                
#                    if (exit_name"num > 0):"
                
#                        file_text_readln(file)
#                        for (i = 0 i < exit_name"num i += 1)"
                    
#                            exit_names[i] = file_text_read_str\(file)
#                            if (i < exit_name"num-1): file_text_readln(file)"
                    
                
#                    sign_name"num = 0"
#                    if (not file_text_eof(file)):
                
#                        file_text_readln(file)
#                        sign_name"num = real(file_text_read_str\(file))"
                
#                    if (sign_name"num > 0):"
                
#                        file_text_readln(file)
#                        for (i = 0 i < sign_name"num i += 1)"
                    
#                            sign_names[i] = file_text_read_str\(file)
#    		          if (i < sign_name"num-1): file_text_readln(file)"
                    
                
#                    file_text_close(file)
                
#                    # dy:  build level
#                    exit_name"id = 0"
#                    sign_name"id = 0"
#                    for j in range(0, 32):
                
#                        for i in range(0, 40):
                    
#                            scr_create_tile(level_array[i, j], 16+i*16, 16+j*16)
#                            if (level_array[i, j] == "X"):
                        
#                                obj = instance_position(16+i*16, 16+j*16, exit)
#                                if (obj):
                            
#                                    if (exit_name"num > 0):"
                                
#                                        obj.lead"to = exit_names[exit_names_id]"
#                                        exit_name"id += 1"
                                
                            
                        
#                            elif (level_array[i, j] == "@"):
                        
#                                obj = instance_position(16+i*16, 16+j*16, entrance)
#                                if (obj):
                            
#                                    if (exit_name"num > 0):"
                                
#                                        obj.lead"to = exit_names[exit_names_id]"
#                                        exit_name"id += 1"
                                
                            
                        
#                            elif (level_array[i, j] == "I"):
                        
#                                obj = instance_position(16+i*16, 16+j*16, msg_sign)
#                                if (obj):
                            
#                                    if (sign_name"num > 0):"
                                
#                                        obj.message = sign_names[sign_name"id]"
#                                        sign_name"id += 1"
                                
                            
                        
                    
                
            

#        window_set_cursor(cr_default)
#        cur"obj.visible = true"
#        gml.instance_create(position.x, position.y, Objects.edit_button)
#        gml.instance_create(position.x+320-32, position.y, Objects.new_button)
#        gml.instance_create(position.x+320-32, position.y, Objects.test_button)


    

#func draw():
    #    draw_set_font(global.my_font_small)
#    draw_set_color(c_white)

#    if (status == GET_FILE_NAME):

#        draw_text(view_xview[0]+9, view_yview[0]+116, "edit level: " + level_name)

#    elif (status == EDIT_DOOR):

#        draw_text(view_xview[0]+9, view_yview[0]+100, "label:")
#        draw_text(view_xview[0]+9, view_yview[0]+116, text_edit)

#    elif (status == EDIT_MSG):

#        draw_text(view_xview[0]+9, view_yview[0]+100, "message:")
#        draw_text(view_xview[0]+9, view_yview[0]+116, text_edit)

#    elif (status == INFO_NAME):

#        draw_text(view_xview[0]+9, view_yview[0]+116, "level name: " + level_name)

#    elif (status == INFO_AUTHOR):

#        draw_text(view_xview[0]+9, view_yview[0]+116, "author: " + author)

#    elif (status == INFO_MUSIC):

#        draw_text(view_xview[0]+9, view_yview[0]+116, "music: " + music)

#    elif (status == INFO_LIFE):

#        draw_text(view_xview[0]+9, view_yview[0]+116, "start life: " + life_start)

#    elif (status == INFO_BOMBS):

#        draw_text(view_xview[0]+9, view_yview[0]+116, "start bombs: " + bomb_start)

#    elif (status == INFO_ROPE):

#        draw_text(view_xview[0]+9, view_yview[0]+116, "start rope: " + rope_start)

#    elif (status == INFO_NEXT):

#        draw_text(view_xview[0]+9, view_yview[0]+116, "next level: " + next_level)

#    elif (status == exit or status == new):

#        str_len = string_length("save level? (Y/N)")*8
#        n = 320 - str_len
#        n = ceil(n / 2)
#        draw_text(view_xview[0]+n, view_yview[0]+116, "save level? (Y/N)")
    
#        m = 16
#        draw_set_color(c_yellow)
#        if not (gml.instance_exists("entrance")):
    
#            str_len = string_length("warning: no entrance!")*8
#            n = 320 - str_len
#            n = ceil(n / 2)
#            draw_text(view_xview[0]+n, view_yview[0]+116+m, "warning: no entrance!")
#            m += 8
    
    
#        if not (gml.instance_exists("exit")):
    
#            str_len = string_length("warning: no exit!")*8
#            n = 320 - str_len
#            n = ceil(n / 2)
#            draw_text(view_xview[0]+n, view_yview[0]+116+m, "warning: no exit!")
    

#    else:

#        # dy: draw_text(view_xview[0], view_yview[0], str\(mouse_x) + ", " + str\(mouse_y))
#        if (view_yview[0] == 0):
    
#            draw_text(view_xview[0]+40, view_yview[0]+view_hview[0]-32, level_name + " by " + author)
#            draw_text(view_xview[0]+40, view_yview[0]+view_hview[0]-24, str\(cur"obj.position.x) + ", " + str\(curs_obj.position.y))"
    
#        else:
    
#            draw_text(view_xview[0]+40, view_yview[0]+16, level_name + " by " + author)
#            draw_text(view_xview[0]+40, view_yview[0]+24, str\(cur"obj.position.x) + ", " + str\(curs_obj.position.y))"
    


    

#func key 1 pressed():
    #    # dy:  blocks
#    if (status == 1):

#        drop_select = 0
#        if (global.tunnel1 == 0 and global.tunnel2 > 0): drop_max = 18
#        elif (global.tunnel1 > 0 and global.tunnel2 == 0): drop_max = 21
#        elif (global.tunnel1 == 0 and global.tunnel2 == 0): drop_max = 23
#        else: drop_max = 10
#        drop_val = 0
#        cur"obj.sprite_index = s_entrance"


    

#func key 2 pressed():
    #    # dy:  monsters
#    if (status == 1):

#        drop_select = 1
#        if (global.tunnel1 == 0 and global.tunnel2 > 0): drop_max = 14
#        elif (global.tunnel1 > 0 and global.tunnel2 == 0): drop_max = 19
#        elif (global.tunnel1 == 0 and global.tunnel2 == 0): drop_max = 21
#        else: drop_max = 6
#        drop_val = 0
#        cur"obj.sprite_index = s_bat_left"


    

#func key 3 pressed():
    #    # dy:  traps
#    if (status == 1):

#        drop_select = 2
#        if (global.tunnel1 == 0 and global.tunnel2 > 0): drop_max = 4
#        elif (global.tunnel1 > 0 and global.tunnel2 == 0): drop_max = 5
#        elif (global.tunnel1 == 0 and global.tunnel2 == 0): drop_max = 6
#        else: drop_max = 2
#        drop_val = 0
#        cur"obj.sprite_index = s_spikes"


    

#func key 4 pressed():
    #    # dy:  items
#    if (status == 1):

#        drop_select = 3
#        drop_max = 30
#        drop_val = 0
#        cur"obj.sprite_index = s_gold_bar_tile"


    

#func key a pressed():
    #    if (status == 1):

#        drop_val -= 1
#        if (drop_val < 0): drop_val = drop_max

#        scr_set_cursor_tile()


    

#func key any key pressed():
    #    if (status == GET_FILE_NAME):

#        if (keyboard_key == vk_enter):
    
#            if (level_name != ""):
        
#                status = edit
#                file = file_text_open_read("levels/" + string_lower(level_name)+".lvl")
#                if (file):
            
#                    for j in range(0, 32):
                
#                        str = file_text_read_str\(file)
#                        for i in range(0, 40):
                    
#                            level_array[i, j] = string_char_at(str, i+1)
#                            # dy: scr_create_tile(level_array[i, j], 16+i*16, 16+j*16)
                    
#                        file_text_readln(file)
                
#                    author = file_text_read_str\(file)
#                    file_text_readln(file)
#                    music = file_text_read_str\(file)
#                    file_text_readln(file)
#                    life_start = file_text_read_str\(file)
#                    file_text_readln(file)
#                    bomb_start = file_text_read_str\(file)
#                    file_text_readln(file)
#                    rope_start = file_text_read_str\(file)
#                    file_text_readln(file)
#                    next_level = file_text_read_str\(file)
#                    exit_name"num = 0"
#                    if (not file_text_eof(file)):
                
#                        file_text_readln(file)
#                        exit_name"num = real(file_text_read_str\(file))"
                
#                    if (exit_name"num > 0):"
                
#                        file_text_readln(file)
#                        for (i = 0 i < exit_name"num i += 1)"
                    
#                            exit_names[i] = file_text_read_str\(file)
#                            if (i < exit_name"num-1): file_text_readln(file)"
                    
                
#                    sign_name"num = 0"
#                    if (not file_text_eof(file)):
                
#                        file_text_readln(file)
#                        sign_name"num = real(file_text_read_str\(file))"
                
#                    if (sign_name"num > 0):"
                
#                        file_text_readln(file)
#                        for (i = 0 i < sign_name"num i += 1)"
                    
#                            sign_names[i] = file_text_read_str\(file)
#    		          if (i < sign_name"num-1): file_text_readln(file)"
                    
                
#                    file_text_close(file)
                
#                    # dy:  build level
#                    exit_name"id = 0"
#                    sign_name"id = 0"
#                    for j in range(0, 32):
                
#                        for i in range(0, 40):
                    
#                            scr_create_tile(level_array[i, j], 16+i*16, 16+j*16)
#                            if (level_array[i, j] == "X"):
                        
#                                obj = instance_position(16+i*16, 16+j*16, exit)
#                                if (obj):
                            
#                                    if (exit_name"num > 0):"
                                
#                                        obj.lead"to = exit_names[exit_names_id]"
#                                        exit_name"id += 1"
                                
                            
                        
#                            elif (level_array[i, j] == "@"):
                        
#                                obj = instance_position(16+i*16, 16+j*16, entrance)
#                                if (obj):
                            
#                                    if (exit_name"num > 0):"
                                
#                                        obj.lead"to = exit_names[exit_names_id]"
#                                        exit_name"id += 1"
                                
                            
                        
#                            elif (level_array[i, j] == "I"):
                        
#                                obj = instance_position(16+i*16, 16+j*16, msg_sign)
#                                if (obj):
                            
#                                    if (sign_name"num > 0):"
                                
#                                        obj.message = sign_names[sign_name"id]"
#                                        sign_name"id += 1"
                                
                            
                        
                    
                
            
#                window_set_cursor(cr_default)
#                cur"obj.visible = true"
#                gml.instance_create(position.x+16, position.y, Objects.edit_button)
#                gml.instance_create(position.x+320-32, position.y, Objects.new_button)
#                gml.instance_create(position.x+320-48, position.y, Objects.test_button)
        
    
#        elif (keyboard_key == vk_backspace or keyboard_key == vk_delete):
    
#            # dy: level_name += "del"
#            level_name = string_delete(level_name, string_length(level_name), 1)
    
#        else: level_name += scr_get_char(keyboard_key)

#    elif (status == edit):

#        if (keyboard_key == ord('E')):
    
    
#            if (mouse_x > 16 and:
#                mouse_x < room_width-16 and
#                mouse_y > 16 and
#                mouse_y < room_height-16 and
#                cur"obj.position.x >= 16 and"
#                cur"obj.position.x < room_width-16 and"
#                cur"obj.position.y >= 16 and"
#                cur"obj.position.y < room_height-16)"
        
#                obj = instance_position(cur"obj.position.x+8, curs_obj.position.y+12, drawn_sprite)"
#                if (obj):
            
#                    if (obj.type == "exit"):
                
#                        text_edit = obj.lead"to"
#                        level_editor.status = EDIT_DOOR
#                        with new_button  gml.instance_destroy() 
#                        with test_button  gml.instance_destroy() 
#                        with edit_button  gml.instance_destroy() 
#                        # dy: level_array[floor(cur"obj.position.x/16)-1, floor(curs_obj.position.y/16)-1] = "0""
                
#                    elif (obj.type == "message sign"):
                
#                        text_edit = obj.message
#                        level_editor.status = EDIT_MSG
#                        with new_button  gml.instance_destroy() 
#                        with test_button  gml.instance_destroy() 
#                        with edit_button  gml.instance_destroy() 
#                        # dy: level_array[floor(cur"obj.position.x/16)-1, floor(curs_obj.position.y/16)-1] = "0""
                
            
        
    

#    elif (status == EDIT_DOOR):

#        if (keyboard_key == vk_enter):
    
#            obj.lead"to = text_edit"
#            status = edit
#            window_set_cursor(cr_default)
#            cur"obj.visible = true"
#            gml.instance_create(position.x+16, position.y, Objects.edit_button)
#            gml.instance_create(position.x+320-48, position.y, Objects.new_button)
#            gml.instance_create(position.x+320-48, position.y, Objects.test_button)
    
#        elif (keyboard_key == vk_backspace or keyboard_key == vk_delete):
    
#            text_edit = string_delete(text_edit, string_length(text_edit), 1)
    
#        elif (string_length(text_edit) < 38): text_edit += scr_get_char(keyboard_key)

#    elif (status == EDIT_MSG):

#        if (keyboard_key == vk_enter):
    
#            obj.message = text_edit
#            status = edit
#            window_set_cursor(cr_default)
#            cur"obj.visible = true"
#            gml.instance_create(position.x+16, position.y, Objects.edit_button)
#            gml.instance_create(position.x+320-48, position.y, Objects.new_button)
#            gml.instance_create(position.x+320-48, position.y, Objects.test_button)
    
#        elif (keyboard_key == vk_backspace or keyboard_key == vk_delete):
    
#            text_edit = string_delete(text_edit , string_length(text_edit), 1)
    
#        elif (string_length(text_edit) < 38):text_edit += scr_get_char(keyboard_key)


#    elif (status == INFO_NAME):

#        if (keyboard_key == vk_enter):
    
#            if (level_name != ""):
        
#                status = INFO_AUTHOR
#                window_set_cursor(cr_default)
#                cur"obj.visible = true"
        
    
#        elif (keyboard_key == vk_backspace or keyboard_key == vk_delete):
    
#            level_name = string_delete(level_name, string_length(level_name), 1)
    
#        else: level_name += scr_get_char(keyboard_key)

#    elif (status == INFO_AUTHOR):

#        if (keyboard_key == vk_enter):
    
#            if (author != ""):
        
#                status = INFO_MUSIC
#                window_set_cursor(cr_default)
#                cur"obj.visible = true"
        
    
#        elif (keyboard_key == vk_backspace or keyboard_key == vk_delete):
    
#            author = string_delete(author, string_length(author), 1)
    
#        else: author += scr_get_char(keyboard_key)

#    elif (status == INFO_MUSIC):

#        if (keyboard_key == vk_enter):
    
#            if (music != ""):
        
#                status = INFO_LIFE
#                window_set_cursor(cr_default)
#                cur"obj.visible = true"
        
    
#        elif (keyboard_key == vk_backspace or keyboard_key == vk_delete):
    
#            music = string_delete(music, string_length(music), 1)
    
#        else: music += scr_get_char(keyboard_key)

#    elif (status == INFO_LIFE):

#        if (keyboard_key == vk_enter):
    
#            if (life_start != ""):
        
#                status = INFO_BOMBS
#                window_set_cursor(cr_default)
#                cur"obj.visible = true"
        
    
#        elif (keyboard_key == vk_backspace or keyboard_key == vk_delete):
    
#            life_start = string_delete(life_start, string_length(life_start), 1)
    
#        else: life_start += scr_get_char(keyboard_key)

#    elif (status == INFO_BOMBS):

#        if (keyboard_key == vk_enter):
    
#            if (bomb_start != ""):
        
#                status = INFO_ROPE
#                window_set_cursor(cr_default)
#                cur"obj.visible = true"
        
    
#        elif (keyboard_key == vk_backspace or keyboard_key == vk_delete):
    
#            bomb_start = string_delete(bomb_start, string_length(bomb_start), 1)
    
#        else: bomb_start += scr_get_char(keyboard_key)

#    elif (status == INFO_ROPE):

#        if (keyboard_key == vk_enter):
    
#            if (rope_start != ""):
        
#                status = INFO_NEXT
#                window_set_cursor(cr_default)
#                cur"obj.visible = true"
        
    
#        elif (keyboard_key == vk_backspace or keyboard_key == vk_delete):
    
#            rope_start = string_delete(rope_start, string_length(rope_start), 1)
    
#        else: rope_start += scr_get_char(keyboard_key)

#    elif (status == INFO_NEXT):

#        if (keyboard_key == vk_enter):
    
#            if (next_level != ""):
        
#                status = edit
#                window_set_cursor(cr_default)
#                cur"obj.visible = true"
#                gml.instance_create(position.x+16, position.y, Objects.edit_button)
#                gml.instance_create(position.x+320-48, position.y, Objects.new_button)
#                gml.instance_create(position.x+320-48, position.y, Objects.test_button)
        
    
#        elif (keyboard_key == vk_backspace or keyboard_key == vk_delete):
    
#            next_level = string_delete(next_level , string_length(next_level), 1)
    
#        else: next_level += scr_get_char(keyboard_key)


    

#func key escape pressed():
    #    if (status == edit):

#        status = exit

#    elif (status == exit or status == EDIT_DOOR or status == EDIT_MSG):

#        status = edit
#        gml.instance_create(position.x, position.y, Objects.edit_button)
#        gml.instance_create(position.x+320-32, position.y, Objects.new_button)
#        gml.instance_create(position.x+320-32, position.y, Objects.test_button)

#    else:

#        global.title_start = 2
#        get_tree().change_scene_to_file("res://r_title.tscn")


    

#func key n pressed():
    #    if (status == exit):

#        global.title_start = 2
#        if (file_exists("levels/test.tmp")): file_delete("levels/test.tmp")
#        get_tree().change_scene_to_file("res://r_title.tscn")

#    elif (status == new):

#        global.test_level = ""
#        room_restart()


    

#func key s pressed():
    #    if (status == 1):

#        drop_val += 1
#        if (drop_val > drop_max): drop_val = 0

#        scr_set_cursor_tile()


    

#func key y pressed():
    #    if (status == exit or status == new):

#        file_delete(level_name)
#        exit_names[0] = ""
#        exit_name"id = 0"
#        sign_names[0] = ""
#        sign_name"id = 0"
#        file = file_text_open_write("levels/" + string_lower(level_name)+".lvl")
#        for j in range(0, 32):
    
#            for i in range(0, 40):
        
#                file_text_write_str\(file, level_array[i, j])
#                if (level_array[i, j] == "X" or level_array[i, j] == "@"):
            
#                    obj = instance_position(16+i*16, 16+j*16, exit)
#                    if (not obj): obj = instance_position(16+i*16, 16+j*16, entrance)
#                    if (obj):
                
#                        exit_names[exit_name"id] = obj.leads_to"
#                        exit_name"id += 1"
                
            
#                elif (level_array[i, j] == "I"):
            
#                    obj = instance_position(16+i*16, 16+j*16, msg_sign)
#                    if (obj):
                
#                        sign_names[sign_name"id] = obj.message"
#                        sign_name"id += 1"
                
            
        
#            file_text_writeln(file)
    
#        file_text_write_str\(file, author)
#        file_text_writeln(file)
#        file_text_write_str\(file, music)
#        file_text_writeln(file)
#        file_text_write_str\(file, life_start)
#        file_text_writeln(file)
#        file_text_write_str\(file, bomb_start)
#        file_text_writeln(file)
#        file_text_write_str\(file, rope_start)
#        file_text_writeln(file)
#        file_text_write_str\(file, next_level)
#        file_text_writeln(file)
#        file_text_write_str\(file, str\(exit_name"id))"
#        if (exit_name"id > 0): file_text_writeln(file)"
#        for (i = 0 i < exit_name"id i += 1)"
    
#            file_text_write_str\(file, exit_names[i])
#            if (i < exit_name"id): file_text_writeln(file)"
    
#        file_text_write_str\(file, str\(sign_name"id))"
#        if (sign_name"id > 0): file_text_writeln(file)"
#        for (i = 0 i < sign_name"id i += 1)"
    
#            file_text_write_str\(file, sign_names[i])
#            if (i < sign_name"id-1): file_text_writeln(file)"
    
#        file_text_close(file)


#    if (status == exit):

#        global.title_start = 2
#        if (file_exists("levels/test.tmp")): file_delete("levels/test.tmp")
#        get_tree().change_scene_to_file("res://r_title.tscn")

#    elif (status == new):

#        global.test_level = ""
#        room_restart()


    

#func mouse wheel down():
    #    if (status == 1):

#        drop_val -= 1
#        if (drop_val < 0): drop_val = drop_max

#        scr_set_cursor_tile()


    

#func mouse wheel up():
    #    if (status == 1):

#        drop_val += 1
#        if (drop_val > drop_max): drop_val = 0

#        scr_set_cursor_tile()


    

#func step():
    #    if (status == edit):  cur"obj.visible = true window_set_cursor(cr_default) "
#    else:  cur"obj.visible = false window_set_cursor(cr_none) "

#    if (status == edit and mouse_x > view_xview[0] and mouse_x < view_xview[0]+320 and:
#        mouse_y > view_yview[0] and mouse_y < view_yview[0]+240)

#        if (mouse_x > view_xview[0]+320-16 and view_xview[0] < room_width-320): view_xview[0] += 4
#        elif (mouse_x < view_xview[0]+16 and view_xview[0] > 0): view_xview[0] -= 4

#        if (mouse_y > view_yview[0]+240-16 and view_yview[0] < room_height-240): view_yview[0] += 4
#        elif (mouse_y < view_yview[0]+16 and view_yview[0] > 0): view_yview[0] -= 4

#    if (ControlScripts.check_attack_pressed()):

#        scr_test_level()
#        get_tree().change_scene_to_file("res://r_load_level.tscn")
    
#    elif (mouse_x > 16 and:
#        mouse_x < room_width-16 and
#        mouse_y > 16 and
#        mouse_y < room_height-16 and
#        cur"obj.position.x >= 16 and"
#        cur"obj.position.x < room_width-16 and"
#        cur"obj.position.y >= 16 and"
#        cur"obj.position.y < room_height-16)"

#        if (mouse_check_button(mb_left) and:
#            not gml.collision_point(mouse_x, mouse_y, "edit_button", 0, 0) and
#            not gml.collision_point(mouse_x, mouse_y, "new_button", 0, 0) and
#            not gml.collision_point(mouse_x, mouse_y, "test_button", 0, 0))
    
#            if (drop_select == blocks):
        
#                scr_create_tile(block_array[drop_val], cur"obj.position.x, curs_obj.position.y)"
#                level_array[floor(cur"obj.position.x/16)-1, floor(curs_obj.position.y/16)-1] = block_array[drop_val]"
        
#            elif (drop_select == enemies):
        
#                scr_create_tile(enemy_array[drop_val], cur"obj.position.x, curs_obj.position.y)"
#                level_array[floor(cur"obj.position.x/16)-1, floor(curs_obj.position.y/16)-1] = enemy_array[drop_val]"
        
#            elif (drop_select == traps):
        
#                scr_create_tile(trap_array[drop_val], cur"obj.position.x, curs_obj.position.y)"
#                level_array[floor(cur"obj.position.x/16)-1, floor(curs_obj.position.y/16)-1] = trap_array[drop_val]"
        
#            elif (drop_select == items):
        
#                scr_create_tile(loot_array[drop_val], cur"obj.position.x, curs_obj.position.y)"
#                level_array[floor(cur"obj.position.x/16)-1, floor(curs_obj.position.y/16)-1] = loot_array[drop_val]"
        
    
#        elif (mouse_check_button(mb_right)):
    
#            obj = gml.collision_rectangle(cur"obj.position.x, curs_obj.position.y, curs_obj.position.x+15,  curs_obj.position.y+15, "drawn_sprite", 0, 0) # dy:  instance_position(curs_obj.position.x+8, curs_obj.position.y+12, drawn_sprite)"
#            # dy:  if (not obj): obj = instance_position(cur"obj.position.x+8, curs_obj.position.y+4, drawn_sprite)"
#            if (obj):
        
#                with obj
            
#                    if (type == "giant spider" or type == "tomb lord"):
                
#                        if (position.x == cur"obj.position.x and position.y == curs_obj.position.y):"
                    
#                            gml.instance_destroy()
                    
                
#                    else: gml.instance_destroy()
            
        
#            level_array[floor(cur"obj.position.x/16)-1, floor(curs_obj.position.y/16)-1] = "0""
