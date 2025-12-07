extends Item


func _ready():
	object_setup()


#--- Object functions
var bomb: bool = false
var gems: PackedStringArray
var big_gem: String


func create():
	# action_inherited
	super()
	set_up_items() #--- adding this

	# main_code
	type = "chest"
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, -6, 0, 6, 8)

	heavy = true

	y_vel = 0
	y_acc = 0.2


func step():
	# action_inherited
	super()


#--- adding this to generate items upon creation. this allows for consistent items when using seeds
func set_up_items() -> void:
	if (randi_range(1,12) == 1 and global.curr_level > 0):
		bomb = true
	else:
		for i in range(0, randi_range(3,4)):

			var n = randi_range(1,3)
			match (n):
				1:  gems.append(Objects.emerald)
				2:  gems.append(Objects.sapphire)
				3:  gems.append(Objects.ruby)
		
		if (randi_range(1,4) == 1):
		
			var n = randi_range(1,3)
			match (n):
			
				1:  big_gem = Objects.emerald_big
				2:  big_gem = Objects.sapphire_big
				3:  big_gem = Objects.ruby_big
