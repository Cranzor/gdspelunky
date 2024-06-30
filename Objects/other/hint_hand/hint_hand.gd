extends DrawnSprite #--- giving this DrawnSprite parent to get access to image_speed

@onready var press_up_to_enter = $PressUpToEnter

func initial_setup():
	#--- set size
	object_size = Vector2(16, 16)

	#--- set depth
	depth = 0
	z_index = depth
	
	$AnimatedSprite2D.play("hint_point")

func _ready():
	initial_setup()
	create()

func _physics_process(delta):
	draw()
	hide_labels()

func create():
	image_speed = 0.5

func draw():
	if (gml.instance_exists("player1")):
		var player1 = gml.get_instance("player1") #---[FLAG] may have to change this for multiplayer

		if (abs(player1.position.x - (position.x+8)) < 8):
			
			#draw_set_font(global.my_font_small)
			#draw_set_color(c_white)
			var str_len = gml.string_length("PRESS UP TO ENTER!")*8
			var n = 320 - str_len
			n = ceil(n / 2)
			#draw_text(320+n, 216, str("PRESS UP TO ENTER!"))
			press_up_to_enter.position = Vector2(320 + n, 216)
			press_up_to_enter.show()
	
	#draw_sprite(sprite_index, image_index, position.x, position.y)

func hide_labels():
	press_up_to_enter.hide()
