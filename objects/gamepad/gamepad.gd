extends GMObject


func _ready():
	object_setup()


#--- Object functions
var start
var start_pressed
var start_released
#--- var left
var left_pressed
var left_released
#--- var right
var right_pressed
var right_released
#--- var up
var up_pressed
var up_released
#--- adding this so entering a door doesn't have to be bound to up 
var enter_door
var enter_door_pressed
var enter_door_released
#--- var down
var down_pressed
var down_released
var jump
var jump_pressed
var jump_released
var attack
var attack_pressed
var attack_released
var item
var item_pressed
var item_released
var run
var bomb
var bomb_pressed
var bomb_released
var rope
var rope_pressed
var rope_released
var flare
var flare_pressed
var flare_released
var pay
var pay_pressed
var pay_released


func create():
	start = false
	start_pressed = false
	start_released = false

	left = false
	left_pressed = false
	left_released = false

	right = false
	right_pressed = false
	right_released = false

	up = false
	up_pressed = false
	up_released = false

	#--- adding this so entering a door doesn't have to be bound to up
	enter_door = false
	enter_door_pressed = false
	enter_door_released = false
	
	down = false
	down_pressed = false
	down_released = false

	jump = false
	jump_pressed = false
	jump_released = false

	attack = false
	attack_pressed = false
	attack_released = false

	item = false
	item_pressed = false
	item_released = false

	run = false

	bomb = false
	bomb_pressed = false
	bomb_released = false

	rope = false
	rope_pressed = false
	rope_released = false

	flare = false
	flare_pressed = false
	flare_released = false

	pay = false
	pay_pressed = false
	pay_released = false


func step():
	#if global.gamepad_on: #--- commenting this out as this script serves as the basis for all input methods
		start_released = false
		start_pressed = false
		if (start):
			if GlobalInput.check_input("start") == true:
				start = true
			else:
				start = false
			
			if start != true:
				start_released = true
			
		else:
			if GlobalInput.check_input("start") == true:
				start = true
			else:
				start = false
			
			if start == true:
				start_pressed = true

			#if (global.joy_start_val > 0):
				#start = joystick_check_button(joyid,global.joy_start_val)
			#elif (global.joy_start_val == -1):
		#
				#if (joystick_zpos(joyid) > 0.1): start = true
				#else: start = false
		#
			#elif (global.joy_start_val == -2):
		#
				#if (joystick_zpos(joyid) < -0.1): start = true
				#else: start = false
		#
			#
			#if (not start): start_released = true
#
		#else:
#
			#if (global.joy_start_val > 0):
				#start = joystick_check_button(joyid,global.joy_start_val)
			#elif (global.joy_start_val == -1):
		#
				#if (joystick_zpos(joyid) > 0.1): start = true
				#else: start = false
		#
			#elif (global.joy_start_val == -2):
		#
				#if (joystick_zpos(joyid) < -0.1): start = true
				#else: start = false
		#
		#
			#if (start): start_pressed = true


		######/
		# LEFT
		######/

		left_released = false
		left_pressed = false
		if (left):
			if GlobalInput.check_input("left") == true:
				left = true
			else:
				left = false

			if left != true:
				left_released = true

		else:
			if GlobalInput.check_input("left") == true:
				left = true
			else:
				left = false

			if left == true:
				left_pressed = true

			#if ((joystick_has_pov(joyid) == 1 and joystick_pov(joyid) == 270) or joystick_direction(joyid) == 100): left = true
			#else: left = false
			#if (not left): left_released = true
#
		#else:
#
			#if ((joystick_has_pov(joyid) == 1 and joystick_pov(joyid) == 270) or joystick_direction(joyid) == 100): left = true
			#else: left = false
			#if (left): left_pressed = true


		######/
		# RIGHT
		######/

		right_released = false
		right_pressed = false
		if (right):

			if GlobalInput.check_input("right") == true:
				right = true
			else:
				right = false

			if right != true:
				right_released = true

		else:
			if GlobalInput.check_input("right") == true:
				right = true
			else:
				right = false

			if right == true:
				right_pressed = true


			#if ((joystick_has_pov(joyid) == 1 and joystick_pov(joyid) == 90) or joystick_direction(joyid) == 102): right = true
			#else: right = false
			#if (not right): right_released = true
#
		#else:
#
			#if ((joystick_has_pov(joyid) == 1 and joystick_pov(joyid) == 90) or joystick_direction(joyid) == 102): right = true
			#else: right = false
			#if (right): right_pressed = true


		######/
		# UP
		######/

		up_released = false
		up_pressed = false
		if (up):

			if GlobalInput.check_input("up") == true:
				up = true
			else:
				up = false

			if up != true:
				up_released = true

		else:
			if GlobalInput.check_input("up") == true:
				up = true
			else:
				up = false

			if up == true:
				up_pressed = true

#
			#if ((joystick_has_pov(joyid) == 1 and joystick_pov(joyid) == 0) or joystick_direction(joyid) == 104): up = true
			#else: up = false
			#if (not up): up_released = true
#
		#else:
#
			#if ((joystick_has_pov(joyid) == 1 and joystick_pov(joyid) == 0) or joystick_direction(joyid) == 104): up = true
			#else: up = false
			#if (up): up_pressed = true
		
		#--- adding this so entering a door doesn't have to be bound to up
		######/
		# ENTER DOOR
		######/

		enter_door_released = false
		enter_door_pressed = false
		if (enter_door):

			if GlobalInput.check_input("enter_door") == true:
				enter_door = true
			else:
				enter_door = false

			if enter_door != true:
				enter_door_released = true

		else:
			if GlobalInput.check_input("enter_door") == true:
				enter_door = true
			else:
				enter_door = false

			if enter_door == true:
				enter_door_pressed = true


		######/
		# DOWN
		######/

		down_released = false
		down_pressed = false
		if (down):

			if GlobalInput.check_input("down") == true:
				down = true
			else:
				down = false

			if down != true:
				down_released = true

		else:
			if GlobalInput.check_input("down") == true:
				down = true
			else:
				down = false

			if down == true:
				down_pressed = true

			
			#if ((joystick_has_pov(joyid) == 1 and joystick_pov(joyid) == 180) or joystick_direction(joyid) == 98): down = true
			#else: down = false
			#if (not down): down_released = true
#
		#else:
#
			#if ((joystick_has_pov(joyid) == 1 and joystick_pov(joyid) == 180) or joystick_direction(joyid) == 98): down = true
			#else: down = false
			#if (down): down_pressed = true


		######/
		# DIAGONAL
		######/

		#if ((joystick_has_pov(joyid) == 1 and joystick_pov(joyid) == 45) or joystick_direction(joyid) == 105):
#
			#right = true
			#up = true
#
#
		#if ((joystick_has_pov(joyid) == 1 and joystick_pov(joyid) == 135) or joystick_direction(joyid) == 99):
#
			#right = true
			#down = true
#
#
		#if ((joystick_has_pov(joyid) == 1 and joystick_pov(joyid) == 225) or joystick_direction(joyid) == 97):
#
			#left = true
			#down = true
#
#
		#if ((joystick_has_pov(joyid) == 1 and joystick_pov(joyid) == 315) or joystick_direction(joyid) == 103):
#
			#left = true
			#up = true


		######/
		# JUMP
		######/

		jump_released = false
		jump_pressed = false
		if (jump):

			if GlobalInput.check_input("jump") == true:
				jump = true
			else:
				jump = false

			if jump != true:
				jump_released = true

		else:
			if GlobalInput.check_input("jump") == true:
				jump = true
			else:
				jump = false

			if jump == true:
				jump_pressed = true

			
			#if (global.joy_jump_val > 0):
				#jump = joystick_check_button(joyid,global.joy_jump_val)
			#elif (global.joy_jump_val == -1):
		#
				#if (joystick_zpos(joyid) > 0.1): jump = true
				#else: jump = false
		#
			#elif (global.joy_jump_val == -2):
		#
				#if (joystick_zpos(joyid) < -0.1): jump = true
				#else: jump = false
		#
		#
			#if (not jump): jump_released = true
#
		#else:
#
			#if (global.joy_jump_val > 0):
				#jump = joystick_check_button(joyid,global.joy_jump_val)
			#elif (global.joy_jump_val == -1):
		#
				#if (joystick_zpos(joyid) > 0.1): jump = true
				#else: jump = false
		#
			#elif (global.joy_jump_val == -2):
		#
				#if (joystick_zpos(joyid) < -0.1): jump = true
				#else: jump = false
		#
		#
			#if (jump): jump_pressed = true


		######/
		# ATTACK
		######/

		attack_released = false
		attack_pressed = false
		if (attack):

			if GlobalInput.check_input("attack") == true:
				attack = true
			else:
				attack = false

			if attack != true:
				attack_released = true

		else:
			if GlobalInput.check_input("attack") == true:
				attack = true
			else:
				attack = false

			if attack == true:
				attack_pressed = true

			#if (global.joy_attack_val > 0):
				#attack = joystick_check_button(joyid,global.joy_attack_val)
			#elif (global.joy_attack_val == -1):
		#
				#if (joystick_zpos(joyid) > 0.1): attack = true
				#else: attack = false
		#
			#elif (global.joy_attack_val == -2):
		#
				#if (joystick_zpos(joyid) < -0.1): attack = true
				#else: attack = false
		#
		#
			#if (not attack): attack_released = true
#
		#else:
#
			#if (global.joy_attack_val > 0):
				#attack = joystick_check_button(joyid,global.joy_attack_val)
			#elif (global.joy_attack_val == -1):
		#
				#if (joystick_zpos(joyid) > 0.1): attack = true
				#else: attack = false
		#
			#elif (global.joy_attack_val == -2):
		#
				#if (joystick_zpos(joyid) < -0.1): attack = true
				#else: attack = false
		#
		#
			#if (attack): attack_pressed = true


		######
		# ITEM
		######

		item_released = false
		item_pressed = false
		if (item):

			if GlobalInput.check_input("item") == true:
				item = true
			else:
				item = false

			if item != true:
				item_released = true

		else:
			if GlobalInput.check_input("item") == true:
				item = true
			else:
				item = false

			if item == true:
				item_pressed = true


			#if (global.joy_item_val > 0):
				#item = joystick_check_button(joyid,global.joy_item_val)
			#elif (global.joy_item_val == -1):
		#
				#if (joystick_zpos(joyid) > 0.1): item = true
				#else: item = false
		#
			#elif (global.joy_item_val == -2):
		#
				#if (joystick_zpos(joyid) < -0.1): item = true
				#else: item = false
		#
		#
			#if (not item): item_released = true
#
		#else:
#
			#if (global.joy_item_val > 0):
				#item = joystick_check_button(joyid,global.joy_item_val)
			#elif (global.joy_item_val == -1):
		#
				#if (joystick_zpos(joyid) > 0.1): item = true
				#else: item = false
		#
			#elif (global.joy_item_val == -2):
		#
				#if (joystick_zpos(joyid) < -0.1): item = true
				#else: item = false
		#
		#
			#if (item): item_pressed = true


		######
		# RUN
		######
		if GlobalInput.check_input("run") == true:
			run = true
		else:
			run = false
		

		#if (global.joy_run_val > 0):
			#run = joystick_check_button(joyid,global.joy_run_val)
		#elif (global.joy_run_val == -1):
#
			#if (joystick_zpos(joyid) > 0.1): run = true
			#else: run = false
#
		#elif (global.joy_run_val == -2):
#
			#if (joystick_zpos(joyid) < -0.1): run = true
			#else: run = false


		######
		# BOMB
		######

		bomb_released = false
		bomb_pressed = false
		if (bomb):

			if GlobalInput.check_input("bomb") == true:
				bomb = true
			else:
				bomb = false

			if bomb != true:
				bomb_released = true

		else:
			if GlobalInput.check_input("bomb") == true:
				bomb = true
			else:
				bomb = false

			if bomb == true:
				bomb_pressed = true


			#if (global.joy_bomb_val > 0):
				#bomb = joystick_check_button(joyid,global.joy_bomb_val)
			#elif (global.joy_bomb_val == -1):
		#
				#if (joystick_zpos(joyid) > 0.1): bomb = true
				#else: bomb = false
		#
			#elif (global.joy_bomb_val == -2):
		#
				#if (joystick_zpos(joyid) < -0.1): bomb = true
				#else: bomb = false
		#
		#
			#if (not bomb): bomb_released = true
#
		#else:
#
			#if (global.joy_bomb_val > 0):
				#bomb = joystick_check_button(joyid,global.joy_bomb_val)
			#elif (global.joy_bomb_val == -1):
		#
				#if (joystick_zpos(joyid) > 0.1): bomb = true
				#else: bomb = false
		#
			#elif (global.joy_bomb_val == -2):
		#
				#if (joystick_zpos(joyid) < -0.1): bomb = true
				#else: bomb = false
		#
		#
			#if (bomb): bomb_pressed = true


		######
		# ROPE
		######

		rope_released = false
		rope_pressed = false
		if (rope):

			if GlobalInput.check_input("rope") == true:
				rope = true
			else:
				rope = false

			if rope != true:
				rope_released = true

		else:
			if GlobalInput.check_input("rope") == true:
				rope = true
			else:
				rope = false

			if rope == true:
				rope_pressed = true


			#if (global.joy_rope_val > 0):
				#rope = joystick_check_button(joyid,global.joy_rope_val)
			#elif (global.joy_rope_val == -1):
		#
				#if (joystick_zpos(joyid) > 0.1): rope = true
				#else: rope = false
		#
			#elif (global.joy_rope_val == -2):
		#
				#if (joystick_zpos(joyid) < -0.1): rope = true
				#else: rope = false
		#
		#
			#if (not rope): rope_released = true
#
		#else:
#
			#if (global.joy_rope_val > 0):
				#rope = joystick_check_button(joyid,global.joy_rope_val)
			#elif (global.joy_rope_val == -1):
		#
				#if (joystick_zpos(joyid) > 0.1): rope = true
				#else: rope = false
		#
			#elif (global.joy_rope_val == -2):
		#
				#if (joystick_zpos(joyid) < -0.1): rope = true
				#else: rope = false
		#
		#
			#if (rope): rope_pressed = true


		######
		# FLARE
		######

		flare_released = false
		flare_pressed = false
		if (flare):

			if GlobalInput.check_input("flare") == true:
				flare = true
			else:
				flare = false

			if flare != true:
				flare_released = true

		else:
			if GlobalInput.check_input("flare") == true:
				flare = true
			else:
				flare = false

			if flare == true:
				flare_pressed = true


			#if (global.joy_flare_val > 0):
				#flare = joystick_check_button(joyid,global.joy_flare_val)
			#elif (global.joy_flare_val == -1):
		#
				#if (joystick_zpos(joyid) > 0.1): flare = true
				#else: flare = false
		#
			#elif (global.joy_flare_val == -2):
		#
				#if (joystick_zpos(joyid) < -0.1): flare = true
				#else: flare = false
		#
		#
			#if (not flare): flare_released = true
#
		#else:
#
			#if (global.joy_flare_val > 0):
				#flare = joystick_check_button(joyid,global.joy_flare_val)
			#elif (global.joy_flare_val == -1):
		#
				#if (joystick_zpos(joyid) > 0.1): flare = true
				#else: flare = false
		#
			#elif (global.joy_flare_val == -2):
		#
				#if (joystick_zpos(joyid) < -0.1): flare = true
				#else: flare = false
		#
		#
			#if (flare): flare_pressed = true


		######
		# PAY
		######

		pay_released = false
		pay_pressed = false
		if (pay):


			if GlobalInput.check_input("pay") == true:
				pay = true
			else:
				pay = false

			if pay != true:
				pay_released = true

		else:
			if GlobalInput.check_input("pay") == true:
				pay = true
			else:
				pay = false

			if pay == true:
				pay_pressed = true


			#if (global.joy_pay_val > 0):
				#pay = joystick_check_button(joyid,global.joy_pay_val)
			#elif (global.joy_pay_val == -1):
		#
				#if (joystick_zpos(joyid) > 0.1): pay = true
				#else: pay = false
		#
			#elif (global.joy_pay_val == -2):
		#
				#if (joystick_zpos(joyid) < -0.1): pay = true
				#else: pay = false
		#
		#
			#if (not pay): pay_released = true
#
		#else:
#
			#if (global.joy_pay_val > 0):
				#pay = joystick_check_button(joyid,global.joy_pay_val)
			#elif (global.joy_pay_val == -1):
	#
				#if (joystick_zpos(joyid) > 0.1): pay = true
				#else: pay = false
	#
			#elif (global.joy_pay_val == -2):
	#
				#if (joystick_zpos(joyid) < -0.1): pay = true
				#else: pay = false
		#
		#
			#if (pay): pay_pressed = true
		
