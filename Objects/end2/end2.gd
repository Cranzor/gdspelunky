extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func alarm_0():
#    player = gml.instance_create(240, 132, Objects.player_sil)
#    # DY: player.x_vel = -6
#    # DY: player.y_vel = -8
#    alarm_1_countdown.start(30)

	

#func alarm_1():
#    player = gml.instance_create(240, 132, Objects.treasure_sil)
#    # DY: player.x_vel = -6
#    # DY: player.y_vel = -8

	

#func alarm_2():
#    gml.instance_create(224+randi_range(0,48), 144+randi_range(0,8), Objects.volcanflame)
#    alarm_2_countdown.start(randi_range(10,20))


#func create():
#    alarm_0(50)
#    alarm_2_countdown.start(10) # DY: 


#func step():
#    if (keyboard_check_pressed(vk_enter) or:
#        keyboard_check_pressed(vk_escape) or
#        ControlScripts.check_attack_pressed() or
#        ControlScripts.check_start_pressed())

#        if (gamepad.attack_pressed): gamepad.attack_pressed = false
#        if (gamepad.start_pressed): gamepad.start_pressed = false
#        global.game_start = false
#        get_tree().change_scene_to_file("res://r_end3.tscn")
