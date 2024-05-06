extends Node

func check_attack():
	if Input.is_action_pressed("attack") == true:
		return true
	else:
		return false
		
func check_attack_pressed():
	if Input.is_action_just_pressed("attack") == true:
		return true
	else:
		return false
	
func check_attack_released():
	if Input.is_action_just_released("attack") == true:
		return true
	else:
		return false
	
func check_bomb_pressed():
	if Input.is_action_just_pressed("bomb") == true:
		return true
	else:
		return false
	
func check_down():
	if Input.is_action_pressed("down") == true:
		return true
	else:
		return false
	
func check_down_pressed():
	if Input.is_action_just_pressed("down") == true:
		return true
	else:
		return false
	
func check_flare_pressed():
	if Input.is_action_just_pressed("flare") == true:
		return true
	else:
		return false
	
func check_item_pressed():
	if Input.is_action_just_pressed("item") == true:
		return true
	else:
		return false
	
func check_joy_button(): #--- handle this later when needed
	pass
	
func check_jump():
	if Input.is_action_pressed("jump") == true:
		return true
	else:
		return false
	
func check_jump_pressed():
	if Input.is_action_just_pressed("jump") == true:
		return true
	else:
		return false
	
func check_jump_released():
	if Input.is_action_just_released("jump") == true:
		return true
	else:
		return false
	
func check_left():
	if Input.is_action_pressed("left") == true:
		return true
	else:
		return false
	
func check_left_pressed():
	#if Input.is_action_just_pressed("left") == true:
	if Input.is_action_pressed("left") == true:
		print('true')
		return true
	else:
		return false
	
func check_left_released():
	if Input.is_action_just_released("left") == true:
		return true
	else:
		return false
	
func check_pay_pressed():
	if Input.is_action_just_pressed("pay") == true:
		return true
	else:
		return false
	
func check_right():
	if Input.is_action_pressed("right") == true:
		return true
	else:
		return false
	
func check_right_pressed():
	if Input.is_action_just_pressed("right") == true:
		return true
	else:
		return false
	
func check_right_released():
	if Input.is_action_just_released("right") == true:
		return true
	else:
		return false
	
func check_rope_pressed():
	if Input.is_action_just_pressed("rope") == true:
		return true
	else:
		return false
	
func check_run():
	if Input.is_action_pressed("run") == true:
		return true
	else:
		return false
	
func check_start_pressed():
	if Input.is_action_just_pressed("start") == true:
		return true
	else:
		return false
	
func check_up():
	if Input.is_action_pressed("up") == true:
		return true
	else:
		return false
	
func check_up_pressed():
	if Input.is_action_just_pressed("up") == true:
		return true
	else:
		return false
