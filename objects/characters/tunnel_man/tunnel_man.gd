extends DrawnSprite #---[FLAG] adding DrawnSprite as parent to get access to sprite_index

func _ready():
	object_setup()

func _physics_process(_delta):
	object_tick()
	reset_inputs()

func _process(delta):
	object_process(delta)

#--- Object functions
var talk
var donate
var up_counter
var down_counter
var up_held
var down_held

const TRANSITION = 0

var attack_pressed = false
var check_up = false
var check_down = false

@onready var in_level: InLevel = InLevel.new()

func _input(_event):
	if ControlScripts.check_attack_pressed():
		attack_pressed = true
	
	if ControlScripts.check_up():
		check_up = true
	
	if ControlScripts.check_down():
		check_down = true

func reset_inputs():
	attack_pressed = false
	check_up = false
	check_down = false

func create():
	talk = 0
	donate = 0
	up_counter = 0
	down_counter = 0
	up_held = 0
	down_held = 0

	if (in_level.is_room("title")): sprite_index = "tunnel_man_right"

func step():
	if (attack_pressed):

		if (talk == 1): talk = 2
		elif (talk == 2):

			if (in_level.is_room("transition1x") or in_level.is_room("transition3x")):
		
				if (donate > 0):
			
					if (donate >= global.tunnel1): talk = 5
					else: talk = 3
		
					global.money -= donate
					global.tunnel1 -= donate
			
				else: talk = 4
		
			else:
		
				if (donate > 0):
			
					if (donate >= global.tunnel2):
				
						global.tunnel1 = global.tunnel3_max + 1
						talk = 5
				
					else: talk = 3
		
					global.money -= donate
					global.tunnel2 -= donate
			
				else: talk = 4
		
		
			#with p_dummy
			var p_dummy = gml.get_instance("p_dummy") #--- [FLAG] may have to adjust this for multiplayer
			p_dummy.status = TRANSITION
			if (global.is_damsel): p_dummy.sprite_index = "damsel_run_l"
			else: p_dummy.sprite_index = "run_left"
	


	if (talk == 2):

		if (check_up):

			up_held += 1
			down_held = 0

			if (up_counter < 20): up_counter += 1
			else:
		
				if (up_held > 100): donate += 1000
				else: donate += 100
		
			if (donate > global.money): donate = global.money
			if (in_level.is_room("transition1x") or in_level.is_room("transition3x")):  if (donate > global.tunnel1): donate = global.tunnel1
			else:  if (donate > global.tunnel2): donate = global.tunnel2
			down_counter = 0

		elif (check_down):

			down_held += 1
			up_held = 0

			if (down_counter < 20): down_counter += 1
			else:
		
				if (down_held > 100): donate -= 1000
				else: donate -= 100
		
			if (donate < 0): donate = 0
			up_counter = 0

		else:

			up_counter = 0
			down_counter = 0
		
			up_held = 0
			down_held = 0
