extends Solid


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


func alarm_0():
	var arrow = gml.instance_create(position.x-16, position.y+4, Objects.arrow, self)
	arrow.x_vel = -5


func create():
	# action_inherited
	super()

	# main_code
	fired = 0
	fired_max = 50
	prox = 4
	invincible = false
	image_speed = 0.5
	# DY:  alarm_0(50)


func destroy():
	if (not clean_death and not global.clean_solids):

		var rubble = gml.instance_create(position.x+8+gml.rand(0,8)-gml.rand(0,8), position.y+8+gml.rand(0,8)-gml.rand(0,8), Objects.rubble, self)
		rubble.sprite_index = "rubble_tan"
		rubble = gml.instance_create(position.x+8+gml.rand(0,8)-gml.rand(0,8), position.y+8+gml.rand(0,8)-gml.rand(0,8), Objects.rubble_small, self)
		rubble.sprite_index = "rubble_tan_small"
		rubble = gml.instance_create(position.x+8+gml.rand(0,8)-gml.rand(0,8), position.y+8+gml.rand(0,8)-gml.rand(0,8), Objects.rubble_small, self)
		rubble.sprite_index = "rubble_tan_small"


	global.check_water = true


func step():
	if (fired > 0): fired -= 1

	spear_range = 64
	var player1 = gml.get_instance("player1") #---[FLAG] may have to change this for multiplayer
	if (fired == 0 and abs(player1.position.y-position.y-8) < prox and player1.position.x < position.x and
		gml.point_distance(position.x+8, position.y+8, player1.position.x, player1.position.y) < spear_range):

		gml.instance_create(position.x-16, position.y, Objects.spears_left, self)
		fired = fired_max


	var obj = gml.instance_nearest(position.x, position.y, "enemy")
	if (obj):
		if (fired == 0 and abs(obj.position.y-position.y) < prox and obj.position.x < position.x and
			gml.point_distance(position.x, position.y, obj.position.x, obj.position.y) < spear_range):

			gml.instance_create(position.x-16, position.y, Objects.spears_left, self)
			fired = fired_max


	obj = gml.instance_nearest(position.x, position.y, "moveable_solid")
	if (obj):
		if (fired == 0 and abs(obj.position.y-position.y) < prox and obj.position.x < position.x and
			gml.point_distance(position.x, position.y, obj.position.x, obj.position.y) < spear_range):

			gml.instance_create(position.x-16, position.y, Objects.spears_left, self)
			fired = fired_max


	obj = gml.instance_nearest(position.x, position.y, "item")
	if (obj):
		if (fired == 0 and abs(obj.position.y-position.y-8) < prox and obj.position.x < position.x+8 and
			gml.point_distance(position.x+8, position.y+8, obj.position.x, obj.position.y) < spear_range):

			gml.instance_create(position.x-16, position.y, Objects.spears_left, self)
			fired = fired_max


	# DY:  right

	if (fired == 0 and abs(player1.position.y-position.y-8) < prox and player1.position.x > position.x+8 and
		gml.point_distance(position.x+8, position.y+8, player1.position.x, player1.position.y) < spear_range):

			var spears = gml.instance_create(position.x+16, position.y, Objects.spears_left, self)
			spears.sprite_index = "spears_right"
			fired = fired_max


	obj = gml.instance_nearest(position.x, position.y, "enemy")
	if (obj):
		if (fired == 0 and abs(obj.position.y-position.y) < prox and obj.position.x > position.x and
			gml.point_distance(position.x, position.y, obj.position.x, obj.position.y) < spear_range):

			var spears = gml.instance_create(position.x+16, position.y, Objects.spears_left, self)
			spears.sprite_index = "spears_right"
			fired = fired_max


	obj = gml.instance_nearest(position.x, position.y, "moveable_solid")
	if (obj):
		if (fired == 0 and abs(obj.position.y-position.y) < prox and obj.position.x > position.x and
			gml.point_distance(position.x, position.y, obj.position.x, obj.position.y) < spear_range):

			var spears = gml.instance_create(position.x+16, position.y, Objects.spears_left, self)
			spears.sprite_index = "spears_right"
			fired = fired_max


	obj = gml.instance_nearest(position.x, position.y, "item")
	if (obj):
		if (fired == 0 and abs(obj.position.y-position.y-8) < prox and obj.position.x > position.x+8 and
			gml.point_distance(position.x+8, position.y+8, obj.position.x, obj.position.y) < spear_range):

			var spears = gml.instance_create(position.x+16, position.y, Objects.spears_left, self)
			spears.sprite_index = "spears_right"
			fired = fired_max


	if ((position.x > gml.view("xview")-8 and position.x < gml.view("xview") + gml.view("wview")+8 and
		position.y > gml.view("yview")-8 and position.y < gml.view("yview") + gml.view("hview")+8)):

		if (not gml.collision_point(position.x, position.y+16, "solid", 0, 0)):

			gml.instance_destroy(self)
