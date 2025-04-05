
extends DrawnSprite


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


func destroy():
	if (not global.clean_solids):

		var enemy = gml.instance_create(position.x, position.y, Objects.caveman)
		enemy.invincible = 20
		enemy.status = 98
		enemy.counter = enemy.stun_time


func step():
	if (not gml.collision_point(position.x, position.y, "ice", 0, false)): gml.instance_destroy(self)
