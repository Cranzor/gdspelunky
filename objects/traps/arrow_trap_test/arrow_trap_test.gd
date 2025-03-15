extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions
var trap_id
var arrow


func collision_with_boulder():
	if (trap_id == null):

		gml.instance_destroy(self)

	elif (abs(other.x_vel) > 0 or abs(other.y_vel) > 0):
	
		if (trap_id.fired == 0):
	
			if (trap_id.facing == 0):
		
				arrow = gml.instance_create(trap_id.position.x-2, trap_id.position.y+4, Objects.arrow)
				arrow.x_vel = -8
		
			else:
		
				arrow = gml.instance_create(position.x+18, position.y+4, Objects.arrow)
				arrow.x_vel = 8
		
			trap_id.fired += 1
			Audio.play_sound(global.snd_arrow_trap)
		
	
		gml.instance_destroy(self)


func collision_with_character():
	var player1 = gml.get_instance("player1") #---[FLAG] may have to change this for multiplayer
	#---
	var sprite = animated_sprite_node
	var area2d = animated_sprite_node.get_child(0)
	var collision_body: CollisionShape2D = area2d.get_child(0)
	var size = collision_body.shape.size
	var scale = image_xscale
	gml.color_rect(position.x, position.y, size.x * scale, 16)
	#---
	if (trap_id == null):

		gml.instance_destroy(self)

	elif (abs(other.x_vel) > 0 or abs(other.y_vel) > 0 or
		(player1.sprite_index == "duck_to_hang_l" and player1.image_index > 6) or
		(player1.sprite_index == "damsel_dt_hl" and player1.image_index > 6) or
		(player1.sprite_index == "tunnel_dt_hl" and player1.image_index > 6)):
	
			if (trap_id.fired == 0):
		
				if (trap_id.facing == 0):
			
					arrow = gml.instance_create(trap_id.position.x-2, trap_id.position.y+4, Objects.arrow)
					arrow.x_vel = -8
			
				else:
			
					arrow = gml.instance_create(trap_id.position.x+18, trap_id.position.y+4, Objects.arrow)
					arrow.x_vel = 8
			
				trap_id.fired += 1
				Audio.play_sound(global.snd_arrow_trap)
		
	
			gml.instance_destroy(self)


func collision_with_enemy():
	if (trap_id == null):

		gml.instance_destroy(self)

	elif (abs(other.x_vel) > 0 or abs(other.y_vel) > 0):
	
		if (trap_id.fired == 0):
	
			if (trap_id.facing == 0):
		
				arrow = gml.instance_create(trap_id.position.x-2, trap_id.position.y+4, Objects.arrow)
				arrow.x_vel = -8
		
			else:
		
				arrow = gml.instance_create(trap_id.position.x+18, trap_id.position.y+4, Objects.arrow)
				arrow.x_vel = 8
		
			trap_id.fired += 1
			Audio.play_sound(global.snd_arrow_trap)
		
	
		gml.instance_destroy(self)


func collision_with_item():
	if (trap_id == null):

		gml.instance_destroy(self)

	elif (abs(other.x_vel) > 0 or abs(other.y_vel) > 0):
	
		if (trap_id.fired == 0):
	
			if (trap_id.facing == 0):
		
				arrow = gml.instance_create(trap_id.position.x-2, trap_id.position.y+4, Objects.arrow)
				arrow.x_vel = -8
		
			else:
		
				arrow = gml.instance_create(trap_id.position.x+18, trap_id.position.y+4, Objects.arrow)
				arrow.x_vel = 8
		
			trap_id.fired += 1
			Audio.play_sound(global.snd_arrow_trap)
		
	
		gml.instance_destroy(self)


func collision_with_moveable_solid():
	if (trap_id == null):

		gml.instance_destroy(self)

	elif (abs(other.x_vel) > 0 or abs(other.y_vel) > 0):
	
		if (trap_id.fired == 0):
	
			if (trap_id.facing == 0):
		
				arrow = gml.instance_create(trap_id.position.x-2, trap_id.position.y+4, Objects.arrow)
				arrow.x_vel = -8
		
			else:
		
				arrow = gml.instance_create(trap_id.position.x+18, trap_id.position.y+4, Objects.arrow)
				arrow.x_vel = 8
		
			trap_id.fired += 1
			Audio.play_sound(global.snd_arrow_trap)
		
	
		gml.instance_destroy(self)
	

func collision_with_treasure():
	if (trap_id == null):

		gml.instance_destroy(self)

	elif (abs(other.x_vel) > 0 or abs(other.y_vel) > 0):
	
		if (trap_id.fired == 0):
	
			if (trap_id.facing == 0):
		
				arrow = gml.instance_create(trap_id.position.x-2, trap_id.position.y+4, Objects.arrow)
				arrow.x_vel = -8
		
			else:
		
				arrow = gml.instance_create(trap_id.position.x+18, trap_id.position.y+4, Objects.arrow)
				arrow.x_vel = 8
		
			trap_id.fired += 1
			Audio.play_sound(global.snd_arrow_trap)
		
	
		gml.instance_destroy(self)


func create():
	#trap_id = 0
	trap_id = null
