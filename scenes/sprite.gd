extends AnimatedSprite2D

var sprite_displayed

func _physics_process(_delta):
	if sprite_displayed == true:
		show()
	else:
		hide()
		
	sprite_displayed = false
