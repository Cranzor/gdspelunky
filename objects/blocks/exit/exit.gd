extends DrawnSprite


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func create():
#    type = "exit"
#    leads_to = "" # DY:  used for Level Editor only

	

#func draw():
#    draw_sprite(sprite_index, -1, position.x, position.y)
#    if (InLevel.is_room("r_level_editor")):

#        gml.draw_set_font(global.my_font_small)
#        gml.draw_set_color(gml.c_white)
#        draw_text.draw_text(position.x, position.y, leads_to)
