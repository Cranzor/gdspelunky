
extends DrawnSprite


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func collision with o_character():
    #    global.message = message
#    global.message2 = message2
#    global.message_timer = 200

    

#func create():
    #    type = "message sign"

#    # dy:  tutorial cave init
#    if (InLevel.i"room("r_level_editor") or InLevel.is_room("r_load_level")):"

#        message = ""
#        message2 = ""

#    elif (position.x == 32 and position.y == 64):

#        message = "welcome to the tutorial cave!"
#        message2 = "this might be your first time playing."


#    elif (position.x == 80 and position.y == 96):

#        if (global.gamepad_on): message = "press " + scr_get_joy(global.joy_jump_val) + " to jump."
#        else: message = "press " + scr_get_key(global.key_jump_val) + " to jump."
#        message2 = ""


#    elif (position.x == 176 and position.y == 96):

#        message = "you can hang on ledges, too!"
#        message2 = ""


#    elif (position.x == 240 and position.y == 64):

#        if (global.gamepad_on): message = "press " + scr_get_joy(global.joy_attack_val) + " to use your whip."
#        else: message = "press " + scr_get_key(global.key_attack_val) + " to use your whip."
#        message2 = ""


#    elif (position.x == 384 and position.y == 96):

#        message = "collect the treasure!"
#        message2 = ""


#    elif (position.x == 512 and position.y == 32):

#        if (global.gamepad_on): message = "hold up and press " + scr_get_joy(global.joy_attack_val) + " to open chests."
#        else: message = "hold up and press " + scr_get_key(global.key_attack_val) + " to open chests."
#        message2 = ""


#    elif (position.x == 544 and position.y == 112):

#        message = "hold down to duck and crawl."
#        message2 = ""


#    elif (position.x == 576 and position.y == 128):

#        message = "crawl over the edge to do A flip hang."
#        message2 = "falling too far can really hurt!"


#    elif (position.x == 640 and position.y == 96):

#        message = "hold up to climb the ladder."
#        message2 = ""


#    elif (position.x == 608 and position.y == 256):

#        if (global.gamepad_on): message = "duck and press " + scr_get_joy(global.joy_attack_val) + " to pick up items."
#        else: message = "duck and press " + scr_get_key(global.key_attack_val) + " to pick up items."
#        message2 = ""


#    elif (position.x == 576 and position.y == 256):

#        if (global.gamepad_on): message = "press " + scr_get_joy(global.joy_attack_val) + " to throw or use items."
#        else: message = "press " + scr_get_key(global.key_attack_val) + " to throw or use items."
#        message2 = "hold up to throw high and down to drop."


#    elif (position.x == 496 and position.y == 256):

#        if (global.gamepad_on): message = "press " + scr_get_joy(global.joy_item_val) + " to select your rope and"
#        else: message = "press " + scr_get_key(global.key_item_val) + " to select your rope and"
#        if (global.gamepad_on): message2 = scr_get_joy(global.joy_attack_val) + " to use it."
#        else: message2 = scr_get_key(global.key_attack_val) + " to use it."


#    elif (position.x == 432 and position.y == 176):

#        if (global.gamepad_on): message = "crouch and press " + scr_get_joy(global.joy_attack_val)
#        else: message = "crouch and press " + scr_get_key(global.key_attack_val)
#        message2 = "to throw A rope down A ledge."


#    elif (position.x == 384 and position.y == 208):

#        if (global.gamepad_on): message = "to run, hold down " + scr_get_joy(global.joy_attack_val) + " or " + scr_get_joy(global.joy_run_val) + "."
#        else: message = "to run, hold down " + scr_get_key(global.key_attack_val) + " or " + scr_get_key(global.key_run_val) + "."
#        message2 = ""

#    elif (position.x == 256 and position.y == 208):

#        message = "open this crate for A bag of bombs."
#        message2 = ""


#    elif (position.x == 224 and position.y == 208):

#        if (global.gamepad_on): message = "press " + scr_get_joy(global.joy_item_val) + " to select bombs and "
#        else: message = "press " + scr_get_key(global.key_item_val) + " to select bombs and "
#        if (global.gamepad_on): message2 =  "press " + scr_get_joy(global.joy_attack_val) + " to use it."
#        else: message2 =  "press " + scr_get_key(global.key_attack_val) + " to use it."


#    elif (position.x == 96 and position.y == 256):

#        message = "there'S lots more ahead!"
#        message2 = "use your wits and beware of traps!"



    

#func draw():
    #    draw_sprite(sprite_index, -1, position.x, position.y)
#    if (InLevel.i"room("r_level_editor")):"

#        draw_set_font(global.my_font_small)
#        draw_set_color(c_white)
#        draw_text(position.x, position.y, message)
