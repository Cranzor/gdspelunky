extends Item


func _ready():
	object_setup()


#--- Object functions


func collision_with_key():
	if (other.held and sprite_index == "locked_chest"):

		other.held = false
		var player1 = gml.get_instance("player1") #---[FLAG] may need to change this for multiplayer

		player1.hold_item = null
		player1.pickup_item_type = ""
	
		gml.instance_destroy(other)
	
		sprite_index = "locked_chest_open"
		Audio.play_sound(global.snd_chest_open)
		var obj = gml.instance_create(position.x, position.y, Objects.udjat_eye, self)
		obj.x_vel = randi_range(0,3) - randi_range(0,3)
		obj.y_vel = -2
		obj = gml.instance_create(position.x, position.y, Objects.poof, self)
		obj.x_vel = -0.4
		obj = gml.instance_create(position.x, position.y, Objects.poof, self)
		obj.x_vel = 0.4
		gml.instance_destroy(self)


func create():
	# action_inherited
	super()

	# main_code
	type = "locked chest"
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, -6, -2, 6, 8)

	heavy = true

	y_vel = 0
	y_acc = 0.2


func step():
	# action_inherited
	super()
