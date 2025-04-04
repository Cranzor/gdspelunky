extends Item


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions
var bounces
var wall_bounce
var going_in


func create():
	# action_inherited
	super()

	# main_code
	type = "basketball"
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, -4, -4, 4, 4)
	bounce_factor = 0.7
	bounces = 0
	wall_bounce = false
	friction_factor = 0.6
	going_in = false


func step():
	# action_inherited
	super()

	# main_code
	if (col_left or col_right): wall_bounce = true
	elif (col_bot): wall_bounce = false

	if (gml.collision_rectangle(position.x-1, position.y+4, position.x+1,  position.y+5, "rim_deflect", 0, null) and not going_in and bounces < 40):

		y_vel = -y_vel * 0.8
		var obj = gml.instance_nearest(position.x, position.y, "rim_deflect")
		if (position.x < (obj.position.x+8) and abs((obj.position.x+8)-position.x) > 7):
	
			x_vel = -2
			y_vel = -0.5
	
		elif (position.x > (obj.position.x+8) and abs((obj.position.x+8)-position.x) > 7):
	
			x_vel = 2
			y_vel = -0.5
	
		elif (abs((obj.position.x+8)-position.x) < 4):
	
			if (position.x < (obj.position.x+8)): x_vel = 1
			else: x_vel = -0.2
			y_vel = -0.5
	
		bounces += 10


	if (bounces > 0): bounces -= 1

	if (gml.collision_point(position.x, position.y, "rim", 0, 0)):
		var player1 = gml.get_instance("player1") #---[FLAG] may have to change this for multiplayer
		if (not going_in and (y_vel > 0 or (held and player1.state == 16))):
			
			var moon_room = gml.get_instance("moon_room")
			moon_room.alarm_0_countdown.start(20)
			x_vel = 0
			y_vel = 0
			going_in = true
			var obj = gml.instance_nearest(position.x, position.y, "basket")
			obj.sprite_index = "basket_swoosh"
			obj.image_index = 0
			if (held):
		
				moon_room.baskets += 1
				player1.hold_item = false
		
			elif (wall_bounce):
		
				moon_room.baskets += 3
		
			else:
				moon_room.baskets += 2
			held = false
	

	else: going_in = false

	if (held and gml.collision_point(position.x, position.y+6, "solid", 0, 0)): sprite_index = "dribble"
	else: sprite_index = "basketball"
