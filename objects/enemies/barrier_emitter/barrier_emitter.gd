extends GMObject


func _ready():
	object_setup()


#--- Object functions


func collision_with_bullet():
	gml.instance_destroy(self)


func collision_with_item():
	if (abs(other.x_vel) > 2 or abs(other.y_vel) > 2):

		gml.instance_destroy(self)
	

func create():
	image_speed = 0.5
	if (not gml.instance_exists("barrier")):

		gml.instance_create(position.x, position.y+16, Objects.barrier, self)
	

func destroy():
	for repetition in range(6):

		var obj = gml.instance_create(position.x+2+gml.rand(0,14), position.y+2+gml.rand(0,14), Objects.flare_spark, self)
		obj.y_vel = gml.rand(1,3)

	InLevel.scr_shake(10)
	Audio.play_sound(global.snd_small_explode)
	var all_barriers = gml.get_all_instances("barrier")
	for barrier in all_barriers:

		gml.instance_destroy(barrier)


func step():
	if ((position.x > gml.view("xview")-8 and position.x < gml.view("xview") + gml.view("wview")+8 and
		position.y > gml.view("yview")-8 and position.y < gml.view("yview") + gml.view("hview")+8)):

		if (not gml.collision_point(position.x, position.y-16, "solid", 0, 0)): gml.instance_destroy(self)
