
extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func create():
    #    screen.enabled = true
#    global.draw_hud = true
#    global.game_start = true
#    global.shake = 0
#    shake_switch = false
#    music_fade = false
#    music_fade_timer = 0
#    global.xview_prev = 0
#    global.yview_prev = 0

#    global.xmoney = 0
#    global.xtime = 0

#    global.ghost_exists = false

#    if (global.dark_level): darkness = 1
#    else: darkness = 0
#    global.darknes"lerp = 0"

#    if (global.music):

#        start_music()


#    if (gml.instance_exists("player1")):

#        with player1
    
#            CharacterScripts.scr_hold_item(global.pickup_item)
#            hold_item.cost = 0
#            if (global.kali_punish >= 2):
        
#                gml.instance_create(position.x, position.y, Objects.ball)
#                obj = gml.instance_create(position.x, position.y, Objects.chain)
#                obj.link_val = 1
#                obj = gml.instance_create(position.x, position.y, Objects.chain)
#                obj.link_val = 2
#                obj = gml.instance_create(position.x, position.y, Objects.chain)
#                obj.link_val = 3
#                obj = gml.instance_create(position.x, position.y, Objects.chain)
#                obj.link_val = 4
        
    


    

#func draw():
    #    /*
#    if (global.dark_level):

#        draw_set_alpha(darkness)
#        draw_set_color(c_black)
#        draw_rectangle(view_xview[0], view_yview[0], view_xview[0]+320, view_yview[0]+240, false)
#        draw_set_alpha(1)


#    */
#    if (not global.dark_level and global.message_timer > 0):

#        draw_set_font(global.my_font_small)
#        draw_set_color(c_white)
#        str_len = string_length(global.message)*8
#        n = 320 - str_len
#        n = ceil(n / 2)
#        draw_text(view_xview[0]+n, view_yview[0]+216, str\(global.message))
    
#        if (not InLevel.i"level("r_tutorial")): draw_set_color(c_yellow)"
#        str_len = string_length(global.message2)*8
#        n = 320 - str_len
#        n = ceil(n / 2)
#        draw_text(view_xview[0]+n, view_yview[0]+224, str\(global.message2))
    
#        global.message_timer -= 1


    

#func room end():
    #    # dy: sound_stop(snd_music_test2)

    

#func step():
    #    if (music_fade and music_fade_timer < 100):

#        scr_music_fade()
#        music_fade_timer += 1


#    if (view_enabled):

#        # dy:  shake the screen
#        if (global.shake > 0):
    
#            if (player1.position.y < 96 or player1.position.y > room_height-96): view_vborder[0] = 0
#            else: view_vborder[0] = 96
#            if (global.shake_toggle or view_yview[0] <= 0):
        
#                view_yview += 3
#                global.shake_toggle = false
        
#            elif (not global.shake_toggle or view_yview[0] >= room_height - view_hview[0]):
        
#                view_yview -= 3
#                global.shake_toggle = true
        
#            global.shake -= 1
    
#        else:
    
#            view_vborder[0] = 96
    
#        /*
#        if (global.shake > 0):
    
#            if (player1.position.y < 240-96 or player1.position.y > room_height-144): view_vborder[0] = 0
#            else: view_vborder[0] = 96
#            # dy: view_xview[0] = view_xview[0] + randi_range(0,3) - randi_range(0,3)
#            if (global.shake_toggle):
        
#                # dy:  if (view_yview[0] >= room_height - view_hview[0]): view_yview[0] = 304
#                # dy:  global.yview_prev = view_yview[0]
#                global.y_shake_diff = randi_range(1,3)
#                view_yview[0] = view_yview[0] + global.y_shake_diff
        
#            else:
        
#                view_yview[0] = view_yview[0] - global.y_shake_diff
        
#            global.shake -= 1
#            global.shake_toggle = not global.shake_toggle
    
#        else:
    
#            global.shake_toggle = false
#            global.y_shake_diff = 0
#            view_vborder[0] = 96
    
#        */
#        /*
#        if (global.level_type != 2):
    
#            if (view_yview[0] + view_hview[0] > 560): view_yview[0] = 560
    
#        */

#        offset = 96
#        # dy:  deactivate all instances outside the region
    
#        # dy:  this is to prevent water from only getting drained partway
#        with water
    
#            if (position.x+8 < view_xview[0]-96 or position.x+8 > view_xview[0]+view_wview[0]+96 or position.y+8 < view_yview[0]-96 or position.y+8 > view_yview[0]+view_hview[0]+96):
        
#                checked = false
        
    
#        instance_deactivate_region(view_xview[0]-offset, view_yview[0]-offset, view_wview[0]+offset*2, view_hview[0]+offset*2, false, true)
#        # dy:  activate all instances inside the region
#        instance_activate_region(view_xview[0]-offset, view_yview[0]-offset, view_wview[0]+offset*2, view_hview[0]+offset*2, true)
#        # dy:  activate all important instances
#        # dy:  instance_activate_object(solid)
#        # dy:  instance_activate_object(water)
#        instance_activate_object(character)
#        instance_activate_object(rope)
#        instance_activate_object(rope_throw)
#        instance_activate_object(rope_top)
#        # dy:  instance_activate_object(olmec)
#        instance_activate_object(game)
#        instance_activate_object(globals)
#        instance_activate_object(screen)
#        instance_activate_object(gamepad)
#        instance_activate_object(explosion)
#        instance_activate_object(ghost)
#        instance_activate_object(final_boss)
#        if (gml.instance_exists("player1")):
#            instance_activate_region(player1.position.x-16, player1.position.y-16, player1.position.x+16, player1.position.y+16, true)
#        instance_activate_object(boulder)
#        if (gml.instance_exists("boulder")):
#            instance_activate_region(boulder.position.x-32, boulder.position.y-32, 64, 64, true)
#        instance_activate_object(olmec)
#        if (gml.instance_exists("olmec")):
#            instance_activate_region(olmec.position.x-16, olmec.position.y-16, 96, 96, true)
#        /*
#        with cave_top  if (not gml.collision_point(position.x, position.y+16, "brick", 0, 0)): gml.instance_destroy() 
#        with lush_top  if (not gml.collision_point(position.x, position.y+16, "lush", 0, 0)): gml.instance_destroy() 
#        with dark_top  if (not gml.collision_point(position.x, position.y+16, "dark", 0, 0)): gml.instance_destroy() 
#        with temple_top  if (not gml.collision_point(position.x, position.y+16, "temple", 0, 0)): gml.instance_destroy() 
#        with ice_bottom  if (not gml.collision_point(position.x, position.y-16, "ice", 0, 0)): gml.instance_destroy() 
#        */


#    # dy:  darkness
#    if (global.dark_level):

#        # dy:  darkness = 0 : lightest
#        # dy:  darkness = 1 : darkest
#        dist = 160
#        if (global.ha"crown): dist = 0"
#        elif (gml.instance_exists("flare")):
    
#            flare = instance_nearest(player1.position.x, player1.position.y, flare)
#            dist = flare.dist_to_player
    
        
#        if (player1.dist_to_nearest_light_source < 200 and player1.dist_to_nearest_light_source < dist):
    
#            dist = player1.dist_to_nearest_light_source
    
#        if (dist == 0): darkness = 0
#        else: darkness = dist / 160
       
#        if (global.darknes"lerp > 0):"
    
#            darkness = global.darknes"lerp"
#            global.darknes"lerp -= 0.1"
    
    
#        if (darkness > 0.9): darkness = 0.9
