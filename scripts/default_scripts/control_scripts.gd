extends Node

func check_attack():
	return Gamepad.attack

func check_attack_pressed():
	return Gamepad.attack_pressed

func check_attack_released():
	return Gamepad.attack_released
	
func check_bomb_pressed():
	return Gamepad.bomb_pressed
	
func check_down():
	return Gamepad.down
	
func check_down_pressed():
	return Gamepad.down_pressed
	
func check_flare_pressed():
	return Gamepad.flare_pressed
	
func check_item_pressed():
	return Gamepad.item_pressed
	
func check_joy_button(): #--- handle this later when needed
	pass
	
func check_jump():
	return Gamepad.jump
	
func check_jump_pressed():
	return Gamepad.jump_pressed
	
func check_jump_released():
	return Gamepad.jump_released

func check_left():
	return Gamepad.left
	
func check_left_pressed():
	return Gamepad.left_pressed
	
func check_left_released():
	return Gamepad.left_released
	
func check_pay_pressed():
	return Gamepad.pay_pressed

func check_right():
	return Gamepad.right
	
func check_right_pressed():
	return Gamepad.right_pressed

func check_right_released():
	return Gamepad.right_released
	
func check_rope_pressed():
	return Gamepad.rope_pressed
	
func check_run():
	if GameSettings.auto_run:
		return !Gamepad.run
	return Gamepad.run
	
func check_start_pressed():
	return Gamepad.start_pressed
	
func check_up():
	return Gamepad.up

func check_enter_door(): #--- adding this so entering a door doesn't have to be bound to up
	return Gamepad.enter_door

func check_up_pressed():
	return Gamepad.up_pressed
