extends Whip


func _ready():
	object_setup()


#--- Object functions


func animation_end():
	hit = false
	var obj
	
	if (gml.collision_point(position.x, position.y, "solid", 0, 0)):

		obj = gml.instance_place(position.x, position.y, "solid", self)
		if (not obj.invincible): hit = true

	elif (gml.collision_point(position.x, position.y+9, "solid", 0, 0)):

		obj = gml.instance_place(position.x, position.y+9, "solid", self)
		if (not obj.invincible): hit = true


	if (hit and not InLevel.is_room("title") and not InLevel.is_room("highscores")):
	  
		#var tile = gml.tile_layer_find(3, obj.position.x, obj.position.y-16) #--- commenting out as relevant blocks now have CaveTop component
		#if (tile): gml.tile_delete(tile)
		#tile = gml.tile_layer_find(3, obj.position.x, obj.position.y+16)
		#if (tile): gml.tile_delete(tile)
	
		if (not obj.invincible): gml.instance_destroy(obj)
	

		var all_treasure = gml.get_all_instances("treasure")
		for treasure_instance in all_treasure:
	
			treasure_instance.state = 1
	

		var all_spikes = gml.get_all_instances("spikes")
		for spikes_instance in all_spikes:
	
			if (not gml.collision_point(spikes_instance.position.x, spikes_instance.position.y+16, "solid", 0, 0)):
		
				gml.instance_destroy(spikes_instance)
		
	
	
		# DY: break mattock
		if (gml.rand(1,20) == 1 and not global.is_tunnel_man):
	
			var player1 = gml.get_instance("player1") #---[FLAG] may have to change this for multiplayer
			player1.hold_item = null
			player1.pickup_item_type = ""
			global.pickup_item = ""
		
			obj = gml.instance_create(position.x, position.y, Objects.mattock_head, self)
			obj.y_vel = -2
			Audio.play_sound(global.snd_mattock_break)
			
			var all_mattocks = gml.get_all_instances("mattock")
			for mattock_instance in all_mattocks:
		
				if (not mattock_instance.visible): gml.instance_destroy(mattock_instance)
		
	
		else:
			Audio.play_sound(global.snd_crunch)


	gml.instance_destroy(self)


func create():
	# action_inherited
	super()

	# main_code
	type = "mattock"
	image_speed = 0.5
	damage = 2
	puncture = true


func step():
	var character = gml.get_instance("character") #---[FLAG] may have to adjust for multiplayer
	
	if (gml.instance_number("character") == 0):

		gml.instance_destroy(self)

	if (sprite_index == "mattock_hit_r"):

		position.x = character.position.x+16
		position.y = character.position.y

	elif (sprite_index == "mattock_hit_l"):

		position.x = character.position.x-16
		position.y = character.position.y
