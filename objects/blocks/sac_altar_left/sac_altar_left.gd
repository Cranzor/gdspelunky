extends Solid
class_name SacAltarLeft


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions
var defile


func create():
	# action_inherited
	super()

	# main_code
	defile = true
	type = "altar"


func destroy():
	var player1 = gml.get_instance("player1") #---[FLAG] may need to adjust this for multiplayer
	
	if (not clean_death and not global.clean_solids):

		var rubble = gml.instance_create(position.x+8+gml.rand(0,8)-gml.rand(0,8), position.y+8+gml.rand(0,8)-gml.rand(0,8), Objects.rubble, self)
		rubble.sprite_index = "rubble_tan"
		rubble = gml.instance_create(position.x+8+gml.rand(0,8)-gml.rand(0,8), position.y+8+gml.rand(0,8)-gml.rand(0,8), Objects.rubble_small, self)
		rubble.sprite_index = "rubble_tan_small"
		rubble = gml.instance_create(position.x+8+gml.rand(0,8)-gml.rand(0,8), position.y+8+gml.rand(0,8)-gml.rand(0,8), Objects.rubble_small, self)
		rubble.sprite_index = "rubble_tan_small"


	if (defile):


		global.message = "YOU DARE DEFILE MY ALTAR?"
		global.message2 = "I WILL PUNISH YOU!"
		global.message_timer = 200
		InLevel.scr_shake(10)
		global.favor -= 16
	
		if (global.kali_punish == 0):
	
			var all_kali_heads = gml.get_all_instances("kali_head")
			for kali_head_instance in all_kali_heads:
				kali_head_instance.alarm_0_countdown.start(1)
		
	
		elif (global.kali_punish == 1):

			gml.instance_create(player1.position.x, player1.position.y, Objects.ball, self)
			var obj = gml.instance_create(player1.position.x, player1.position.y, Objects.chain, self)
			obj.link_val = 1
			obj = gml.instance_create(player1.position.x, player1.position.y, Objects.chain, self)
			obj.link_val = 2
			obj = gml.instance_create(player1.position.x, player1.position.y, Objects.chain, self)
			obj.link_val = 3
			obj = gml.instance_create(player1.position.x, player1.position.y, Objects.chain, self)
			obj.link_val = 4
	
		else:
	
			if (global.dark_level and global.ghost_exists):
		
				var all_kali_heads = gml.get_all_instances("kali_head")
				for kali_head_instance in all_kali_heads:
					kali_head_instance.alarm_0_countdown.start(1)
			
		
			else:
		
				global.dark_level = true
				if (not global.ghost_exists):
			
					if (player1.position.x > gml.room_width / 2): gml.instance_create(gml.view("xview")+gml.view("wview")+8, gml.view("yview")+floor(gml.view("hview") / 2), Objects.ghost, self)
					else: gml.instance_create(gml.view("xview")-32,  gml.view("yview")+floor(gml.view("hview") / 2), Objects.ghost, self)
					global.ghost_exists = true
			
		
	

		global.kali_punish += 1

		var all_sac_altar_lefts = gml.get_all_instances("sac_altar_left")
		for sac_altar_left_instance in all_sac_altar_lefts:

			sac_altar_left_instance.defile = false
			gml.instance_destroy(sac_altar_left_instance)
	

func step():
	if ((position.x > gml.view("xview")-20 and position.x < gml.view("xview") + gml.view("wview")+4 and
		position.y > gml.view("yview")-20 and position.y < gml.view("yview") + gml.view("hview")+4)):

		if (not gml.collision_point(position.x, position.y+16, "solid", 0, 0)): gml.instance_destroy(self)
