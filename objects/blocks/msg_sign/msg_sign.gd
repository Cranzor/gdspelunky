extends DrawnSprite


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions
var message: String
var message2: String

@onready var in_level: InLevel = InLevel.new()

func collision_with_character():
	global.message = message
	global.message2 = message2
	global.message_timer = 200


func create():
	type = "message sign"

	# DY:  tutorial cave init
	if (in_level.is_room("level_editor") or in_level.is_room("load_level")):

		message = ""
		message2 = ""

	elif (position.x == 32 and position.y == 64):

		message = "WELCOME TO THE TUTORIAL CAVE!"
		message2 = "THIS MIGHT BE YOUR FIRST TIME PLAYING."


	elif (position.x == 80 and position.y == 96):

		if (global.gamepad_on): message = "PRESS " + MiscScripts.scr_get_joy(global.joy_jump_val) + " TO JUMP."
		else: message = "PRESS " + MiscScripts.scr_get_key(global.key_jump_val) + " TO JUMP."
		message2 = ""


	elif (position.x == 176 and position.y == 96):

		message = "YOU CAN HANG ON LEDGES, TOO!"
		message2 = ""


	elif (position.x == 240 and position.y == 64):

		if (global.gamepad_on): message = "PRESS " + MiscScripts.scr_get_joy(global.joy_attack_val) + " TO USE YOUR WHIP."
		else: message = "PRESS " + MiscScripts.scr_get_key(global.key_attack_val) + " TO USE YOUR WHIP."
		message2 = ""


	elif (position.x == 384 and position.y == 96):

		message = "COLLECT THE TREASURE!"
		message2 = ""


	elif (position.x == 512 and position.y == 32):

		if (global.gamepad_on): message = "HOLD UP AND PRESS " + MiscScripts.scr_get_joy(global.joy_attack_val) + " TO OPEN CHESTS."
		else: message = "HOLD UP AND PRESS " + MiscScripts.scr_get_key(global.key_attack_val) + " TO OPEN CHESTS."
		message2 = ""


	elif (position.x == 544 and position.y == 112):

		message = "HOLD DOWN TO DUCK AND CRAWL."
		message2 = ""


	elif (position.x == 576 and position.y == 128):

		message = "CRAWL OVER THE EDGE TO DO A FLIP HANG."
		message2 = "FALLING TOO FAR CAN REALLY HURT!"


	elif (position.x == 640 and position.y == 96):

		message = "HOLD UP TO CLIMB THE LADDER."
		message2 = ""


	elif (position.x == 608 and position.y == 256):

		if (global.gamepad_on): message = "DUCK AND PRESS " + MiscScripts.scr_get_joy(global.joy_attack_val) + " TO PICK UP ITEMS."
		else: message = "DUCK AND PRESS " + MiscScripts.scr_get_key(global.key_attack_val) + " TO PICK UP ITEMS."
		message2 = ""


	elif (position.x == 576 and position.y == 256):

		if (global.gamepad_on): message = "PRESS " + MiscScripts.scr_get_joy(global.joy_attack_val) + " TO THROW OR USE ITEMS."
		else: message = "PRESS " + MiscScripts.scr_get_key(global.key_attack_val) + " TO THROW OR USE ITEMS."
		message2 = "HOLD UP TO THROW HIGH AND DOWN TO DROP."


	elif (position.x == 496 and position.y == 256):

		if (global.gamepad_on): message = "PRESS " + MiscScripts.scr_get_joy(global.joy_item_val) + " TO SELECT YOUR ROPE AND"
		else: message = "PRESS " + MiscScripts.scr_get_key(global.key_item_val) + " TO SELECT YOUR ROPE AND"
		if (global.gamepad_on): message2 = MiscScripts.scr_get_joy(global.joy_attack_val) + " TO USE IT."
		else: message2 = MiscScripts.scr_get_key(global.key_attack_val) + " TO USE IT."


	elif (position.x == 432 and position.y == 176):

		if (global.gamepad_on): message = "CROUCH AND PRESS " + MiscScripts.scr_get_joy(global.joy_attack_val)
		else: message = "CROUCH AND PRESS " + MiscScripts.scr_get_key(global.key_attack_val)
		message2 = "TO THROW A ROPE DOWN A LEDGE."


	elif (position.x == 384 and position.y == 208):

		if (global.gamepad_on): message = "TO RUN, HOLD DOWN " + MiscScripts.scr_get_joy(global.joy_attack_val) + " OR " + MiscScripts.scr_get_joy(global.joy_run_val) + "."
		else: message = "TO RUN, HOLD DOWN " + MiscScripts.scr_get_key(global.key_attack_val) + " OR " + MiscScripts.scr_get_key(global.key_run_val) + "."
		message2 = ""

	elif (position.x == 256 and position.y == 208):

		message = "OPEN THIS CRATE FOR A BAG OF BOMBS."
		message2 = ""


	elif (position.x == 224 and position.y == 208):

		if (global.gamepad_on): message = "PRESS " + MiscScripts.scr_get_joy(global.joy_item_val) + " TO SELECT BOMBS AND "
		else: message = "PRESS " + MiscScripts.scr_get_key(global.key_item_val) + " TO SELECT BOMBS AND "
		if (global.gamepad_on): message2 =  "PRESS " + MiscScripts.scr_get_joy(global.joy_attack_val) + " TO USE IT."
		else: message2 =  "PRESS " + MiscScripts.scr_get_key(global.key_attack_val) + " TO USE IT."


	elif (position.x == 96 and position.y == 256):

		message = "THERE'S LOTS MORE AHEAD!"
		message2 = "USE YOUR WITS AND BEWARE OF TRAPS!"


func draw():
	gml.draw_sprite(sprite_index, -1, position.x, position.y, self, true)
	if (in_level.is_room("level_editor")):

		gml.draw_set_font(global.my_font_small)
		gml.draw_set_color(gml.c_white)
		gml.draw_text(position.x, position.y, message, "message", self)
