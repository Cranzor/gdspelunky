extends Node2D

var thingy

func _ready():
	thingy = gml.instance_create(0, 0, Objects.gold_door)
	gml.instance_create(16, 0, Objects.ice)
	gml.instance_create(32, 0, Objects.big_collect)
	gml.instance_create(48, 0, Objects.heart)
	gml.instance_create(60, 0, Objects.yell_help)
	gml.instance_create(72, 0, Objects.small_collect)
	gml.instance_create(84, 0, Objects.barrier_emitter)
	gml.instance_create(110, 0, Objects.alien)
	gml.instance_create(110, 20, Objects.yellow_ball)
	gml.instance_create(120, 20, Objects.laser)
	gml.instance_create(120, -200, Objects.p_dummy2)
	gml.instance_create(120, -20, Objects.web_ball)
	#gml.instance_create(0, 0, Objects.level)
	#gml.draw_sprite("shopkeeper_icon", -1, gml.view("xview")+64, gml.view("yview")+8, self)
	
	var alien: GMObject = gml.get_instance("alien")
	alien.image_xscale = 2
	alien.image_yscale = 4
	print(alien.sprite_width)
	print(alien.sprite_height)

var test_num = 0
func _physics_process(delta: float) -> void:
	test_num += 1
	if test_num < 100:
		gml.draw_sprite("shopkeeper_icon", -1, gml.view("xview")+64, gml.view("yview")+8, thingy)

func _input(event: InputEvent) -> void:
	if Input.is_key_pressed(KEY_0):
		gml.instance_create(100, 10, Objects.tree)
