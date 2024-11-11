extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func mouse leave():
	#    sprite_index = "ok_button"

	

#func mouse left button pressed():
	#    sprite_index = "ok_button_pressed"

	

#func mouse left button released():
	#    if (sprite_index == "ok_button_pressed):"

#        init.start_game = true
#        room_gotnext()

#    sprite_index = "ok_button"
