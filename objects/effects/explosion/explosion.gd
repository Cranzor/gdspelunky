extends DrawnSprite


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions
@onready var in_level: InLevel = InLevel.new()


func animation_end():
	# action_kill_object
	gml.instance_destroy(self)


func collision_with_barrier_emitter():
	gml.instance_destroy(other)


func collision_with_boulder():
	for i in range(0, 3):

		var rubble = gml.instance_create(other.position.x+gml.rand(0,15)-gml.rand(0,15), other.position.y+gml.rand(0,15)-gml.rand(0,15), Objects.rubble)
		rubble.sprite_index = "rubble_tan"
		if (gml.rand(1,3) == 1): gml.instance_create(other.position.x+gml.rand(0,15)-gml.rand(0,15), other.position.y+gml.rand(0,15)-gml.rand(0,15), Objects.rock)

	for i in range(0, 6):

		var rubble = gml.instance_create(other.position.x+gml.rand(0,15)-gml.rand(0,15), other.position.y+gml.rand(0,15)-gml.rand(0,15), Objects.rubble_small)
		rubble.sprite_index = "rubble_tan_small"


	gml.instance_destroy(other)


func collision_with_damsel():
	if (not other.invincible):

		other.hp -= 100
		if (position.x < other.position.x): other.x_vel = gml.rand(4,6)
		else: other.x_vel = -gml.rand(4,6)
		other.y_vel = -6
		other.burning = 50
		other.status = 2


func collision_with_enemy():
	if (other.type == "magma man"):
	
		other.flame = gml.instance_create(position.x+8, position.y-4, Objects.magma)
		other.flame.y_vel = -gml.rand(1,3)
		other.flame = gml.instance_create(position.x+8, position.y-4, Objects.magma)
		other.flame.y_vel = -gml.rand(1,3)
		gml.instance_destroy(other)
	

	elif (not other.invincible):

		other.hp -= 30
		if (position.x < other.position.x): other.x_vel = gml.rand(4,6)
		else: other.x_vel = -gml.rand(4,6)
		other.y_vel = -6
		other.burning = 50
	

func collision_with_item():
	if (other.type == "arrow" or other.type == "fish bone" or
		other.type == "jar" or other.type == "skull"):

		gml.instance_destroy(other)

	elif (other.type == "bomb"):
	
		other.sprite_index = "bomb_armed"
		other.image_speed = 1
		other.alarm_1_countdown.start(gml.rand(4,8))
		enemy_id = 0
	

		if (other.position.y < position.y): other.y_vel = -gml.rand(2,4)
		if (other.position.x < position.x): other.x_vel = -gml.rand(2,4)
		else: other.x_vel = gml.rand(2,4)

	elif (other.type == "rope"):

		if (not other.falling):
	
			if (other.position.y < position.y): other.y_vel -= 6
			else: other.y_vel += 6
			if (position.x > other.position.x): other.x_vel -= gml.rand(4,6)
			else: other.x_vel += gml.rand(4,6)
	

	else:

		if (other.position.y < position.y): other.y_vel -= 6
		else: other.y_vel += 6
		if (position.x > other.position.x): other.x_vel -= gml.rand(4,6)
		else: other.x_vel += gml.rand(4,6)


	if (other.held):
		var player1 = gml.get_instance("player1") #---[FLAG] may have to change this for multiplayer
	
		player1.hold_item = null
		player1.pickup_item_type = ""
	
		other.held = false


func collision_with_solid():
	if (in_level.is_level() or (position.x > gml.view("xview")-16 and position.x < gml.view("xview") + gml.view("wview")+16 and
		position.y > gml.view("yview")-16 and position.y < gml.view("yview") + gml.view("hview")+16)): #--- was "in_level.is_level("tutorial")" but this appears to be an error as is_level takes no argument
	
		for repetition in range(2):
	
			var tile = gml.tile_layer_find(3, other.position.x+1, other.position.y-1)
			if (tile): gml.tile_delete(tile)
	
		var tile = gml.tile_layer_find(3, other.position.x+1, other.position.y+16)
		if (tile): gml.tile_delete(tile)

		if (not other.invincible): gml.instance_destroy(other)
	
		var all_treasure = gml.get_all_instances("treasure")
		for treasure_instance in all_treasure:
	
			treasure_instance.state = 1
	
		var all_spikes = gml.get_all_instances("spikes")
		for spikes_instance in all_spikes:
	
			if (not gml.collision_point(spikes_instance.position.x, spikes_instance.position.y+16, "solid", 0, 0)):
		
				gml.instance_destroy(spikes_instance)
		
	

	# DY: global.check_water = true


func collision_with_web():
	gml.instance_destroy(other)


func create():
	# action_inherited
	super()

	# main_code
	image_speed
	0.8
	# main_code
	Audio.play_sound(global.snd_explosion)
	in_level.scr_shake(5)
