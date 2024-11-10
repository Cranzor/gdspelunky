extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func create():
	#    image_speed = 0

	

#func step():
	#    if (mouse_x > view_xview[0] and mouse_x < view_xview[0]+320 and:
#        mouse_y > view_yview[0] and mouse_y < view_yview[0]+240)

#        position.x = mouse_x-8
#        position.y = mouse_y-8
#        gml.move_snap(16, 16)
#        if (position.x < 0): position.x = 0
#        if (position.x > room_width-16): position.x = room_width-16
#        if (position.y < 0): position.y = 0
#        if (position.y > room_height-16): position.y = room_height-16
