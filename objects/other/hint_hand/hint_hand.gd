extends DrawnSprite #--- giving this DrawnSprite parent to get access to image_speed


func _ready():
	object_setup()


#--- Object functions
@onready var draw_text: Node2D = $DrawText


func create():
	image_speed = 0.5


func draw():
	if (gml.instance_exists("player1")):
		var player1 = gml.get_instance("player1") #---[FLAG] may have to change this for multiplayer

		if (abs(player1.position.x - (position.x+8)) < 8):
			
			gml.draw_set_font(global.my_font_small)
			gml.draw_set_color(gml.c_white)
			var str_len = gml.string_length("PRESS UP TO ENTER!")*8
			var n = 320 - str_len
			n = ceil(n / 2)
			draw_text.draw_text(320+n, 216, str("PRESS UP TO ENTER!"))
	
	gml.draw_sprite(sprite_index, image_index, position.x, position.y, self)
