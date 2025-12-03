extends GMObject


func _ready():
	object_setup()


#--- Object functions


func alarm_0():
	if (gml.rand(1,2) == 1): gml.instance_create(position.x+gml.rand(0,16), position.y+gml.rand(0,16), Objects.flame_trail, self)
	else: gml.instance_create(position.x+gml.rand(0,16), position.y+gml.rand(0,16), Objects.burn, self)
	alarm_0_countdown.start(3)
	

func collision_with_enemy():
	gml.instance_create(position.x+8, position.y+8, Objects.explosion, self)
	Audio.play_sound(global.snd_explosion)
	gml.instance_destroy(self)
	

func collision_with_solid():
	gml.instance_create(position.x+8, position.y+8, Objects.explosion, self)
	Audio.play_sound(global.snd_explosion)
	gml.instance_destroy(self)


func create():
	x_vel = 0
	y_vel = 0
	alarm_0_countdown.start(3)


func step():
	position.x += x_vel
	position.y += y_vel
	if (y_vel < 6): y_vel += 0.6
