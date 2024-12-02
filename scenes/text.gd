extends Label

@export var main_font: FontFile
@export var small_font: FontFile

var text_displayed = false

#--- hiding the text every frame as this is how GM handles it. draw_text being called on each frame enables it to be visible again
func _physics_process(delta: float) -> void:
	if text_displayed == true:
		show()
	else:
		hide()
		
	text_displayed = false
