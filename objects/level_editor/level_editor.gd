
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
#    EDIT = 1
#    INFO_NAME = 2
#    INFO_AUTHOR = 3
#    INFO_MUSIC = 4
#    INFO_LIFE = 5
#    INFO_BOMBS = 6
#    INFO_ROPE = 7
#    INFO_NEXT = 8
#    EXIT = 9
#    NEW = 10
#    EDIT_DOOR = 11
#    EDIT_MSG = 12
#    status = 0

#    level_name = ""
#    author = "ANONYMOUS"
#    music = "CAVE"
#    life_start = "4"
#    bomb_start = "4"
#    rope_start = "4"
#    next_level = "NONE"
#    text_edit = ""

#    for j in range(0, 32):

#        for i in range(0, 40):
	
#            level_array[i, j] = "0"
	


#    BLOCKS = 0
#    ENEMIES = 1
#    TRAPS = 2
#    ITEMS = 3
#    drop_select = 0
#    if (global.tunnel1 == 0 and global.tunnel2 > 0): drop_max = 18
#    elif (global.tunnel1 > 0 and global.tunnel2 == 0): drop_max = 21
#    elif (global.tunnel1 == 0 and global.tunnel2 == 0): drop_max = 23
#    else: drop_max = 10

#    # DY:  DEBUG
#    # DY:  drop_max = 23

#    block_array[0] = "@" # DY:  Entrance
#    block_array[1] = "X" # DY:  Exit
#    block_array[2] = "I" # DY:  Sign
#    block_array[3] = "1" # DY:  Mines
#    block_array[4] = "L" # DY:  Ladder
#    block_array[5] = "P" # DY:  Ladder Platform
#    block_array[6] = "B" # DY:  Push Block
#    block_array[7] = "&" # DY:  Web
#    block_array[8] = "r" # DY:  Rock
#    block_array[9] = "j" # DY:  Jar
#    block_array[10] = "k" # DY:  Bones
#    block_array[11] = "2" # DY:  Jungle
#    block_array[12] = "w" # DY:  Water
#    block_array[13] = "v" # DY:  Vine
#    block_array[14] = "t" # DY:  Vine Top
#    block_array[15] = "|" # DY:  Tree Trunk
#    block_array[16] = "position.x" # DY:  Tree Top
#    block_array[17] = ")" # DY:  Tree Leaves
#    block_array[18] = "q" # DY:  Tree Branch
#    block_array[19] = "3" # DY:  Dark
#    block_array[20] = "d" # DY:  Dark Drop
#    block_array[21] = "i" # DY:  Ice
#    block_array[22] = "4" # DY:  Temple
#    block_array[23] = "l" # DY:  Lava

#    enemy_array[0] = "b" # DY:  Bat
#    enemy_array[1] = "n" # DY:  Snake
#    enemy_array[2] = "s" # DY:  Spider
#    enemy_array[3] = "S" # DY:  Giant Spider
#    enemy_array[4] = "K" # DY:  Skeleton
#    enemy_array[5] = "h" # DY:  Caveman
#    enemy_array[6] = "!" # DY:  Shopkeeper
#    enemy_array[7] = "f" # DY:  Frog
#    enemy_array[8] = "F" # DY:  Fire Frog
#    enemy_array[9] = "z" # DY:  Zombie
#    enemy_array[10] = "A" # DY:  Vampire
#    enemy_array[11] = "M" # DY:  Man Trap
#    enemy_array[12] = "m" # DY:  Monkey
#    enemy_array[13] = "p" # DY:  Piranha
#    enemy_array[14] = "" # DY:  Mega Mouth
#    enemy_array[15] = "a" # DY:  Alien
#    enemy_array[16] = "U" # DY:  UFO
#    enemy_array[17] = "E" # DY:  Alien Boss
#    enemy_array[18] = "position.y" # DY:  Yeti
#    enemy_array[19] = "Y" # DY:  Yeti King
#    enemy_array[20] = "H" # DY:  Hawkman
#    enemy_array[21] = "T" # DY:  Tomb Lord

#    trap_array[0] = "^" # DY:  Spikes
#    trap_array[1] = "<" # DY:  Arrow Trap Left
#    trap_array[2] = ">" # DY:  Arrow Trap Right
#    trap_array[3] = "]" # DY:  Spear Trap Top
#    trap_array[4] = "[" # DY:  Spear Trap Bottom
#    trap_array[5] = "_" # DY:  Spring Trap
#    trap_array[6] = "+" # DY:  Smash Trap

#    loot_array[0] = "$" # DY:  Gold Bar
#    loot_array[1] = "*" # DY:  Gold Bars
#    loot_array[2] = "#" # DY:  Gold Idol
#    loot_array[3] = "O" # DY:  Crystal Skull
#    loot_array[4] = "5" # DY:  Emerald
#    loot_array[5] = "6" # DY:  Sapphire
#    loot_array[6] = "7" # DY:  Ruby
#    loot_array[7] = "8" # DY:  Diamond
#    loot_array[8] = "c" # DY:  Chest
#    loot_array[9] = "C" # DY:  Crate
#    loot_array[10] = "D" # DY:  Damsel
#    loot_array[11] = "." # DY:  Bomb Bag
#    loot_array[12] = ":" # DY:  Bomb Box
#    loot_array[13] = "u" # DY:  Paste
#    loot_array[14] = "R" # DY:  Rope Pile
#    loot_array[15] = "`" # DY:  Parachute
#    loot_array[16] = "o" # DY:  Compass
#    loot_array[17] = "/" # DY:  Machete
#    loot_array[18] = "~" # DY:  Spring Shoes
#    loot_array[19] = "V" # DY:  Spike Shoes
#    loot_array[20] = "" # DY:  Bow
#    loot_array[21] = "-" # DY:  Pistol
#    loot_array[22] = "=" # DY:  Shotgun
#    loot_array[23] = "W" # DY:  Web Cannon
#    loot_array[24] = "%" # DY:  Spectacles
#    loot_array[25] = "G" # DY:  Gloves
#    loot_array[26] = "g" # DY:  Mitt
#    loot_array[27] = "?" # DY:  Teleporter
#    loot_array[28] = "(" # DY:  Mattock
#    loot_array[29] = "\" # DY:  Cape
#    loot_array[30] = "J" # DY:  Jetpack

#    if (global.test_level != ""):

#        /*
#        status = EDIT
#        level_name = global.test_level
#        file = file_text_open_read("levels/" + string_lower(level_name)+".lvl")
#        if (file):
	
#            for j in range(0, 32):
		
#                str = file_text_read_str(file)
#                for i in range(0, 40):
			
#                    level_array[i, j] = string_char_at(str, i+1)
#                    scr_create_tile(level_array[i, j], 16+i*16, 16+j*16)
			
#                file_text_readln(file)
		
#            author = file_text_read_str(file)
#            file_text_readln(file)
#            music = file_text_read_str(file)
#            file_text_readln(file)
#            life_start = file_text_read_str(file)
#            file_text_readln(file)
#            bomb_start = file_text_read_str(file)
#            file_text_readln(file)
#            rope_start = file_text_read_str(file)
#            file_text_readln(file)
#            next_level = file_text_read_str(file)
#            file_text_close(file)
	
#        */
	
#                status = EDIT
#                level_name = global.test_level
#                file = file_text_open_read("levels/test.tmp")
#                # DY:  file = file_text_open_read("levels/" + string_lower(level_name)+".lvl")
#                if (file):
			
#                    for j in range(0, 32):
				
#                        str = file_text_read_str(file)
#                        for i in range(0, 40):
					
#                            level_array[i, j] = string_char_at(str, i+1)
#                            # DY: scr_create_tile(level_array[i, j], 16+i*16, 16+j*16)
					
#                        file_text_readln(file)
				
#                    author = file_text_read_str(file)
#                    file_text_readln(file)
#                    music = file_text_read_str(file)
#                    file_text_readln(file)
#                    life_start = file_text_read_str(file)
#                    file_text_readln(file)
#                    bomb_start = file_text_read_str(file)
#                    file_text_readln(file)
#                    rope_start = file_text_read_str(file)
#                    file_text_readln(file)
#                    next_level = file_text_read_str(file)
#                    exit_names_num = 0
#                    if (not file_text_eof(file)):
				
#                        file_text_readln(file)
#                        exit_names_num = real(file_text_read_str(file))
				
#                    if (exit_names_num > 0):
				
#                        file_text_readln(file)
#                        for (i = 0 i < exit_names_num i += 1)
					
#                            exit_names[i] = file_text_read_str(file)
#                            if (i < exit_names_num-1): file_text_readln(file)
					
				
#                    sign_names_num = 0
#                    if (not file_text_eof(file)):
				
#                        file_text_readln(file)
#                        sign_names_num = real(file_text_read_str(file))
				
#                    if (sign_names_num > 0):
				
#                        file_text_readln(file)
#                        for (i = 0 i < sign_names_num i += 1)
					
#                            sign_names[i] = file_text_read_str(file)
#    		          if (i < sign_names_num-1): file_text_readln(file)
					
				
#                    file_text_close(file)
				
#                    # DY:  build level
#                    exit_names_id = 0
#                    sign_names_id = 0
#                    for j in range(0, 32):
				
#                        for i in range(0, 40):
					
#                            scr_create_tile(level_array[i, j], 16+i*16, 16+j*16)
#                            if (level_array[i, j] == "X"):
						
#                                obj = instance_position(16+i*16, 16+j*16, exit)
#                                if (obj):
							
#                                    if (exit_names_num > 0):
								
#                                        obj.leads_to = exit_names[exit_names_id]
#                                        exit_names_id += 1
								
							
						
#                            elif (level_array[i, j] == "@"):
						
#                                obj = instance_position(16+i*16, 16+j*16, entrance)
#                                if (obj):
							
#                                    if (exit_names_num > 0):
								
#                                        obj.leads_to = exit_names[exit_names_id]
#                                        exit_names_id += 1
								
							
						
#                            elif (level_array[i, j] == "I"):
						
#                                obj = instance_position(16+i*16, 16+j*16, msg_sign)
#                                if (obj):
							
#                                    if (sign_names_num > 0):
								
#                                        obj.message = sign_names[sign_names_id]
#                                        sign_names_id += 1
								
							
						
					
				
			

#        window_set_cursor(cr_default)
#        curs_obj.visible = true
#        gml.instance_create(position.x, position.y, Objects.edit_button)
#        gml.instance_create(position.x+320-32, position.y, Objects.new_button)
#        gml.instance_create(position.x+320-32, position.y, Objects.test_button)


	

#func draw():
#    gml.draw_set_font(global.my_font_small)
#    gml.draw_set_color(gml.c_white)

#    if (status == GET_FILE_NAME):

#        gml.draw_text(gml.view("xview")+9, gml.view("yview")+116, "EDIT LEVEL: " + level_name)

#    elif (status == EDIT_DOOR):

#        gml.draw_text(gml.view("xview")+9, gml.view("yview")+100, "LABEL:")
#        gml.draw_text(gml.view("xview")+9, gml.view("yview")+116, text_edit)

#    elif (status == EDIT_MSG):

#        gml.draw_text(gml.view("xview")+9, gml.view("yview")+100, "MESSAGE:")
#        gml.draw_text(gml.view("xview")+9, gml.view("yview")+116, text_edit)

#    elif (status == INFO_NAME):

#        gml.draw_text(gml.view("xview")+9, gml.view("yview")+116, "LEVEL NAME: " + level_name)

#    elif (status == INFO_AUTHOR):

#        gml.draw_text(gml.view("xview")+9, gml.view("yview")+116, "AUTHOR: " + author)

#    elif (status == INFO_MUSIC):

#        gml.draw_text(gml.view("xview")+9, gml.view("yview")+116, "MUSIC: " + music)

#    elif (status == INFO_LIFE):

#        gml.draw_text(gml.view("xview")+9, gml.view("yview")+116, "START LIFE: " + life_start)

#    elif (status == INFO_BOMBS):

#        gml.draw_text(gml.view("xview")+9, gml.view("yview")+116, "START BOMBS: " + bomb_start)

#    elif (status == INFO_ROPE):

#        gml.draw_text(gml.view("xview")+9, gml.view("yview")+116, "START ROPE: " + rope_start)

#    elif (status == INFO_NEXT):

#        gml.draw_text(gml.view("xview")+9, gml.view("yview")+116, "NEXT LEVEL: " + next_level)

#    elif (status == EXIT or status == NEW):

#        str_len = string_length("SAVE LEVEL? (Y/N)")*8
#        n = 320 - str_len
#        n = ceil(n / 2)
#        gml.draw_text(gml.view("xview")+n, gml.view("yview")+116, "SAVE LEVEL? (Y/N)")
	
#        m = 16
#        gml.draw_set_color(gml.c_yellow)
#        if not (gml.instance_exists("entrance")):
	
#            str_len = string_length("WARNING: NO ENTRANCE!")*8
#            n = 320 - str_len
#            n = ceil(n / 2)
#            gml.draw_text(gml.view("xview")+n, gml.view("yview")+116+m, "WARNING: NO ENTRANCE!")
#            m += 8
	
	
#        if not (gml.instance_exists("exit")):
	
#            str_len = string_length("WARNING: NO EXIT!")*8
#            n = 320 - str_len
#            n = ceil(n / 2)
#            gml.draw_text(gml.view("xview")+n, gml.view("yview")+116+m, "WARNING: NO EXIT!")
	

#    else:

#        # DY: gml.draw_text(gml.view("xview"), gml.view("yview"), str(mouse_x) + ", " + str(mouse_y))
#        if (gml.view("yview") == 0):
	
#            gml.draw_text(gml.view("xview")+40, gml.view("yview")+gml.view("hview")-32, level_name + " BY " + author)
#            gml.draw_text(gml.view("xview")+40, gml.view("yview")+gml.view("hview")-24, str(curs_obj.position.x) + ", " + str(curs_obj.position.y))
	
#        else:
	
#            gml.draw_text(gml.view("xview")+40, gml.view("yview")+16, level_name + " BY " + author)
#            gml.draw_text(gml.view("xview")+40, gml.view("yview")+24, str(curs_obj.position.x) + ", " + str(curs_obj.position.y))
	


	

#func key 1 pressed():
#    # DY:  Blocks
#    if (status == 1):

#        drop_select = 0
#        if (global.tunnel1 == 0 and global.tunnel2 > 0): drop_max = 18
#        elif (global.tunnel1 > 0 and global.tunnel2 == 0): drop_max = 21
#        elif (global.tunnel1 == 0 and global.tunnel2 == 0): drop_max = 23
#        else: drop_max = 10
#        drop_val = 0
#        curs_obj.sprite_index = "entrance"


	

#func key 2 pressed():
#    # DY:  Monsters
#    if (status == 1):

#        drop_select = 1
#        if (global.tunnel1 == 0 and global.tunnel2 > 0): drop_max = 14
#        elif (global.tunnel1 > 0 and global.tunnel2 == 0): drop_max = 19
#        elif (global.tunnel1 == 0 and global.tunnel2 == 0): drop_max = 21
#        else: drop_max = 6
#        drop_val = 0
#        curs_obj.sprite_index = "bat_left"


	

#func key 3 pressed():
#    # DY:  Traps
#    if (status == 1):

#        drop_select = 2
#        if (global.tunnel1 == 0 and global.tunnel2 > 0): drop_max = 4
#        elif (global.tunnel1 > 0 and global.tunnel2 == 0): drop_max = 5
#        elif (global.tunnel1 == 0 and global.tunnel2 == 0): drop_max = 6
#        else: drop_max = 2
#        drop_val = 0
#        curs_obj.sprite_index = "spikes"


	

#func key 4 pressed():
#    # DY:  Items
#    if (status == 1):

#        drop_select = 3
#        drop_max = 30
#        drop_val = 0
#        curs_obj.sprite_index = "gold_bar_tile"


	

#func key a pressed():
#    if (status == 1):

#        drop_val -= 1
#        if (drop_val < 0): drop_val = drop_max

#        scr_set_cursor_tile()


	

#func key any key pressed():
#    if (status == GET_FILE_NAME):

#        if (keyboard_key == vk_enter):
	
#            if (level_name != ""):
		
#                status = EDIT
#                file = file_text_open_read("levels/" + string_lower(level_name)+".lvl")
#                if (file):
			
#                    for j in range(0, 32):
				
#                        str = file_text_read_str(file)
#                        for i in range(0, 40):
					
#                            level_array[i, j] = string_char_at(str, i+1)
#                            # DY: scr_create_tile(level_array[i, j], 16+i*16, 16+j*16)
					
#                        file_text_readln(file)
				
#                    author = file_text_read_str(file)
#                    file_text_readln(file)
#                    music = file_text_read_str(file)
#                    file_text_readln(file)
#                    life_start = file_text_read_str(file)
#                    file_text_readln(file)
#                    bomb_start = file_text_read_str(file)
#                    file_text_readln(file)
#                    rope_start = file_text_read_str(file)
#                    file_text_readln(file)
#                    next_level = file_text_read_str(file)
#                    exit_names_num = 0
#                    if (not file_text_eof(file)):
				
#                        file_text_readln(file)
#                        exit_names_num = real(file_text_read_str(file))
				
#                    if (exit_names_num > 0):
				
#                        file_text_readln(file)
#                        for (i = 0 i < exit_names_num i += 1)
					
#                            exit_names[i] = file_text_read_str(file)
#                            if (i < exit_names_num-1): file_text_readln(file)
					
				
#                    sign_names_num = 0
#                    if (not file_text_eof(file)):
				
#                        file_text_readln(file)
#                        sign_names_num = real(file_text_read_str(file))
				
#                    if (sign_names_num > 0):
				
#                        file_text_readln(file)
#                        for (i = 0 i < sign_names_num i += 1)
					
#                            sign_names[i] = file_text_read_str(file)
#    		          if (i < sign_names_num-1): file_text_readln(file)
					
				
#                    file_text_close(file)
				
#                    # DY:  build level
#                    exit_names_id = 0
#                    sign_names_id = 0
#                    for j in range(0, 32):
				
#                        for i in range(0, 40):
					
#                            scr_create_tile(level_array[i, j], 16+i*16, 16+j*16)
#                            if (level_array[i, j] == "X"):
						
#                                obj = instance_position(16+i*16, 16+j*16, exit)
#                                if (obj):
							
#                                    if (exit_names_num > 0):
								
#                                        obj.leads_to = exit_names[exit_names_id]
#                                        exit_names_id += 1
								
							
						
#                            elif (level_array[i, j] == "@"):
						
#                                obj = instance_position(16+i*16, 16+j*16, entrance)
#                                if (obj):
							
#                                    if (exit_names_num > 0):
								
#                                        obj.leads_to = exit_names[exit_names_id]
#                                        exit_names_id += 1
								
							
						
#                            elif (level_array[i, j] == "I"):
						
#                                obj = instance_position(16+i*16, 16+j*16, msg_sign)
#                                if (obj):
							
#                                    if (sign_names_num > 0):
								
#                                        obj.message = sign_names[sign_names_id]
#                                        sign_names_id += 1
								
							
						
					
				
			
#                window_set_cursor(cr_default)
#                curs_obj.visible = true
#                gml.instance_create(position.x+16, position.y, Objects.edit_button)
#                gml.instance_create(position.x+320-32, position.y, Objects.new_button)
#                gml.instance_create(position.x+320-48, position.y, Objects.test_button)
		
	
#        elif (keyboard_key == vk_backspace or keyboard_key == vk_delete):
	
#            # DY: level_name += "DEL"
#            level_name = string_delete(level_name, string_length(level_name), 1)
	
#        else: level_name += scr_get_char(keyboard_key)

#    elif (status == EDIT):

#        if (keyboard_key == ord('E')):
	
	
#            if (mouse_x > 16 and:
#                mouse_x < room_width-16 and
#                mouse_y > 16 and
#                mouse_y < room_height-16 and
#                curs_obj.position.x >= 16 and
#                curs_obj.position.x < room_width-16 and
#                curs_obj.position.y >= 16 and
#                curs_obj.position.y < room_height-16)
		
#                obj = instance_position(curs_obj.position.x+8, curs_obj.position.y+12, drawn_sprite)
#                if (obj):
			
#                    if (obj.type == "Exit"):
				
#                        text_edit = obj.leads_to
#                        level_editor.status = EDIT_DOOR
#                        with new_button  gml.instance_destroy(self) 
#                        with test_button  gml.instance_destroy(self) 
#                        with edit_button  gml.instance_destroy(self) 
#                        # DY: level_array[floor(curs_obj.position.x/16)-1, floor(curs_obj.position.y/16)-1] = "0"
				
#                    elif (obj.type == "Message Sign"):
				
#                        text_edit = obj.message
#                        level_editor.status = EDIT_MSG
#                        with new_button  gml.instance_destroy(self) 
#                        with test_button  gml.instance_destroy(self) 
#                        with edit_button  gml.instance_destroy(self) 
#                        # DY: level_array[floor(curs_obj.position.x/16)-1, floor(curs_obj.position.y/16)-1] = "0"
				
			
		
	

#    elif (status == EDIT_DOOR):

#        if (keyboard_key == vk_enter):
	
#            obj.leads_to = text_edit
#            status = EDIT
#            window_set_cursor(cr_default)
#            curs_obj.visible = true
#            gml.instance_create(position.x+16, position.y, Objects.edit_button)
#            gml.instance_create(position.x+320-48, position.y, Objects.new_button)
#            gml.instance_create(position.x+320-48, position.y, Objects.test_button)
	
#        elif (keyboard_key == vk_backspace or keyboard_key == vk_delete):
	
#            text_edit = string_delete(text_edit, string_length(text_edit), 1)
	
#        elif (string_length(text_edit) < 38): text_edit += scr_get_char(keyboard_key)

#    elif (status == EDIT_MSG):

#        if (keyboard_key == vk_enter):
	
#            obj.message = text_edit
#            status = EDIT
#            window_set_cursor(cr_default)
#            curs_obj.visible = true
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
#                curs_obj.visible = true
		
	
#        elif (keyboard_key == vk_backspace or keyboard_key == vk_delete):
	
#            level_name = string_delete(level_name, string_length(level_name), 1)
	
#        else: level_name += scr_get_char(keyboard_key)

#    elif (status == INFO_AUTHOR):

#        if (keyboard_key == vk_enter):
	
#            if (author != ""):
		
#                status = INFO_MUSIC
#                window_set_cursor(cr_default)
#                curs_obj.visible = true
		
	
#        elif (keyboard_key == vk_backspace or keyboard_key == vk_delete):
	
#            author = string_delete(author, string_length(author), 1)
	
#        else: author += scr_get_char(keyboard_key)

#    elif (status == INFO_MUSIC):

#        if (keyboard_key == vk_enter):
	
#            if (music != ""):
		
#                status = INFO_LIFE
#                window_set_cursor(cr_default)
#                curs_obj.visible = true
		
	
#        elif (keyboard_key == vk_backspace or keyboard_key == vk_delete):
	
#            music = string_delete(music, string_length(music), 1)
	
#        else: music += scr_get_char(keyboard_key)

#    elif (status == INFO_LIFE):

#        if (keyboard_key == vk_enter):
	
#            if (life_start != ""):
		
#                status = INFO_BOMBS
#                window_set_cursor(cr_default)
#                curs_obj.visible = true
		
	
#        elif (keyboard_key == vk_backspace or keyboard_key == vk_delete):
	
#            life_start = string_delete(life_start, string_length(life_start), 1)
	
#        else: life_start += scr_get_char(keyboard_key)

#    elif (status == INFO_BOMBS):

#        if (keyboard_key == vk_enter):
	
#            if (bomb_start != ""):
		
#                status = INFO_ROPE
#                window_set_cursor(cr_default)
#                curs_obj.visible = true
		
	
#        elif (keyboard_key == vk_backspace or keyboard_key == vk_delete):
	
#            bomb_start = string_delete(bomb_start, string_length(bomb_start), 1)
	
#        else: bomb_start += scr_get_char(keyboard_key)

#    elif (status == INFO_ROPE):

#        if (keyboard_key == vk_enter):
	
#            if (rope_start != ""):
		
#                status = INFO_NEXT
#                window_set_cursor(cr_default)
#                curs_obj.visible = true
		
	
#        elif (keyboard_key == vk_backspace or keyboard_key == vk_delete):
	
#            rope_start = string_delete(rope_start, string_length(rope_start), 1)
	
#        else: rope_start += scr_get_char(keyboard_key)

#    elif (status == INFO_NEXT):

#        if (keyboard_key == vk_enter):
	
#            if (next_level != ""):
		
#                status = EDIT
#                window_set_cursor(cr_default)
#                curs_obj.visible = true
#                gml.instance_create(position.x+16, position.y, Objects.edit_button)
#                gml.instance_create(position.x+320-48, position.y, Objects.new_button)
#                gml.instance_create(position.x+320-48, position.y, Objects.test_button)
		
	
#        elif (keyboard_key == vk_backspace or keyboard_key == vk_delete):
	
#            next_level = string_delete(next_level , string_length(next_level), 1)
	
#        else: next_level += scr_get_char(keyboard_key)


	

#func key escape pressed():
#    if (status == EDIT):

#        status = EXIT

#    elif (status == EXIT or status == EDIT_DOOR or status == EDIT_MSG):

#        status = EDIT
#        gml.instance_create(position.x, position.y, Objects.edit_button)
#        gml.instance_create(position.x+320-32, position.y, Objects.new_button)
#        gml.instance_create(position.x+320-32, position.y, Objects.test_button)

#    else:

#        global.title_start = 2
#        get_tree().change_scene_to_file("res://r_title.tscn")


	

#func key n pressed():
#    if (status == EXIT):

#        global.title_start = 2
#        if (file_exists("levels/test.tmp")): file_delete("levels/test.tmp")
#        get_tree().change_scene_to_file("res://r_title.tscn")

#    elif (status == NEW):

#        global.test_level = ""
#        room_restart()


	

#func key s pressed():
#    if (status == 1):

#        drop_val += 1
#        if (drop_val > drop_max): drop_val = 0

#        scr_set_cursor_tile()


	

#func key y pressed():
#    if (status == EXIT or status == NEW):

#        file_delete(level_name)
#        exit_names[0] = ""
#        exit_names_id = 0
#        sign_names[0] = ""
#        sign_names_id = 0
#        file = file_text_open_write("levels/" + string_lower(level_name)+".lvl")
#        for j in range(0, 32):
	
#            for i in range(0, 40):
		
#                file_text_write_str(file, level_array[i, j])
#                if (level_array[i, j] == "X" or level_array[i, j] == "@"):
			
#                    obj = instance_position(16+i*16, 16+j*16, exit)
#                    if (not obj): obj = instance_position(16+i*16, 16+j*16, entrance)
#                    if (obj):
				
#                        exit_names[exit_names_id] = obj.leads_to
#                        exit_names_id += 1
				
			
#                elif (level_array[i, j] == "I"):
			
#                    obj = instance_position(16+i*16, 16+j*16, msg_sign)
#                    if (obj):
				
#                        sign_names[sign_names_id] = obj.message
#                        sign_names_id += 1
				
			
		
#            file_text_writeln(file)
	
#        file_text_write_str(file, author)
#        file_text_writeln(file)
#        file_text_write_str(file, music)
#        file_text_writeln(file)
#        file_text_write_str(file, life_start)
#        file_text_writeln(file)
#        file_text_write_str(file, bomb_start)
#        file_text_writeln(file)
#        file_text_write_str(file, rope_start)
#        file_text_writeln(file)
#        file_text_write_str(file, next_level)
#        file_text_writeln(file)
#        file_text_write_str(file, str(exit_names_id))
#        if (exit_names_id > 0): file_text_writeln(file)
#        for (i = 0 i < exit_names_id i += 1)
	
#            file_text_write_str(file, exit_names[i])
#            if (i < exit_names_id): file_text_writeln(file)
	
#        file_text_write_str(file, str(sign_names_id))
#        if (sign_names_id > 0): file_text_writeln(file)
#        for (i = 0 i < sign_names_id i += 1)
	
#            file_text_write_str(file, sign_names[i])
#            if (i < sign_names_id-1): file_text_writeln(file)
	
#        file_text_close(file)


#    if (status == EXIT):

#        global.title_start = 2
#        if (file_exists("levels/test.tmp")): file_delete("levels/test.tmp")
#        get_tree().change_scene_to_file("res://r_title.tscn")

#    elif (status == NEW):

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
#    if (status == EDIT):  curs_obj.visible = true window_set_cursor(cr_default) 
#    else:  curs_obj.visible = false window_set_cursor(cr_none) 

#    if (status == EDIT and mouse_x > gml.view("xview") and mouse_x < gml.view("xview")+320 and:
#        mouse_y > gml.view("yview") and mouse_y < gml.view("yview")+240)

#        if (mouse_x > gml.view("xview")+320-16 and gml.view("xview") < room_width-320): gml.view("xview") += 4
#        elif (mouse_x < gml.view("xview")+16 and gml.view("xview") > 0): gml.view("xview") -= 4

#        if (mouse_y > gml.view("yview")+240-16 and gml.view("yview") < room_height-240): gml.view("yview") += 4
#        elif (mouse_y < gml.view("yview")+16 and gml.view("yview") > 0): gml.view("yview") -= 4

#    if (ControlScripts.check_attack_pressed()):

#        scr_test_level()
#        get_tree().change_scene_to_file("res://r_load_level.tscn")
	
#    elif (mouse_x > 16 and:
#        mouse_x < room_width-16 and
#        mouse_y > 16 and
#        mouse_y < room_height-16 and
#        curs_obj.position.x >= 16 and
#        curs_obj.position.x < room_width-16 and
#        curs_obj.position.y >= 16 and
#        curs_obj.position.y < room_height-16)

#        if (mouse_check_button(mb_left) and:
#            not gml.collision_point(mouse_x, mouse_y, "edit_button", 0, 0) and
#            not gml.collision_point(mouse_x, mouse_y, "new_button", 0, 0) and
#            not gml.collision_point(mouse_x, mouse_y, "test_button", 0, 0))
	
#            if (drop_select == BLOCKS):
		
#                scr_create_tile(block_array[drop_val], curs_obj.position.x, curs_obj.position.y)
#                level_array[floor(curs_obj.position.x/16)-1, floor(curs_obj.position.y/16)-1] = block_array[drop_val]
		
#            elif (drop_select == ENEMIES):
		
#                scr_create_tile(enemy_array[drop_val], curs_obj.position.x, curs_obj.position.y)
#                level_array[floor(curs_obj.position.x/16)-1, floor(curs_obj.position.y/16)-1] = enemy_array[drop_val]
		
#            elif (drop_select == TRAPS):
		
#                scr_create_tile(trap_array[drop_val], curs_obj.position.x, curs_obj.position.y)
#                level_array[floor(curs_obj.position.x/16)-1, floor(curs_obj.position.y/16)-1] = trap_array[drop_val]
		
#            elif (drop_select == ITEMS):
		
#                scr_create_tile(loot_array[drop_val], curs_obj.position.x, curs_obj.position.y)
#                level_array[floor(curs_obj.position.x/16)-1, floor(curs_obj.position.y/16)-1] = loot_array[drop_val]
		
	
#        elif (mouse_check_button(mb_right)):
	
#            obj = gml.collision_rectangle(curs_obj.position.x, curs_obj.position.y, curs_obj.position.x+15,  curs_obj.position.y+15, "drawn_sprite", 0, null) # DY:  instance_position(curs_obj.position.x+8, curs_obj.position.y+12, drawn_sprite)
#            # DY:  if (not obj): obj = instance_position(curs_obj.position.x+8, curs_obj.position.y+4, drawn_sprite)
#            if (obj):
		
#                with obj
			
#                    if (type == "Giant Spider" or type == "Tomb Lord"):
				
#                        if (position.x == curs_obj.position.x and position.y == curs_obj.position.y):
					
#                            gml.instance_destroy(self)
					
				
#                    else: gml.instance_destroy(self)
			
		
#            level_array[floor(curs_obj.position.x/16)-1, floor(curs_obj.position.y/16)-1] = "0"
