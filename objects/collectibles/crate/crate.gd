extends Item


func _ready():
	object_setup()


#--- Object functions
var item: String


func create():
	# action_inherited
	super()
	set_item() #--- adding this here

	# main_code
	type = "crate"
	PlatformEngine.make_active(self)
	Collision.set_collision_bounds(self, -6, 0, 6, 8)

	heavy = true

	y_vel = 0
	y_acc = 0.2


func step():
	# action_inherited
	super()


#--- adding this to generate item upon creation. this allows for consistent items when using seeds
func set_item() -> void:
	if (InLevel.is_room("tutorial")): item = Objects.bomb_bag
	elif (randi_range(1,500) == 1): item = Objects.jetpack
	elif (randi_range(1,200) == 1): item = Objects.cape_pickup
	elif (randi_range(1,100) == 1): item = Objects.shotgun
	elif (randi_range(1,100) == 1): item = Objects.mattock
	elif (randi_range(1,100) == 1): item = Objects.teleporter
	elif (randi_range(1,90) == 1): item = Objects.gloves
	elif (randi_range(1,90) == 1): item = Objects.spectacles
	elif (randi_range(1,80) == 1): item = Objects.web_cannon
	elif (randi_range(1,80) == 1): item = Objects.pistol
	elif (randi_range(1,80) == 1): item = Objects.mitt
	elif (randi_range(1,60) == 1): item = Objects.paste
	elif (randi_range(1,60) == 1): item = Objects.spring_shoes
	elif (randi_range(1,60) == 1): item = Objects.spike_shoes
	elif (randi_range(1,60) == 1): item = Objects.machete
	elif (randi_range(1,40) == 1): item = Objects.bomb_box
	elif (randi_range(1,40) == 1): item = Objects.bow
	elif (randi_range(1,20) == 1): item = Objects.compass
	elif (randi_range(1,10) == 1): item = Objects.para_pickup
	elif (randi_range(1,2) == 1): item = Objects.rope_pile
	else: item = Objects.bomb_bag
