
extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func create():
    #    shake_toggle = false
#    p_dummy.status = 2

#    timer = 0

#    if (global.kali_punish >= 2):

#        gml.instance_create(p_dummy.position.x, p_dummy.position.y+2, Objects.ball2)
#        obj = gml.instance_create(p_dummy.position.x, p_dummy.position.y, Objects.chain2)
#        obj.link_val = 1
#        obj = gml.instance_create(p_dummy.position.x, p_dummy.position.y, Objects.chain2)
#        obj.link_val = 2
#        obj = gml.instance_create(p_dummy.position.x, p_dummy.position.y, Objects.chain2)
#        obj.link_val = 3
#        obj = gml.instance_create(p_dummy.position.x, p_dummy.position.y, Objects.chain2)
#        obj.link_val = 4


#    Audio.stop_all_music()

    

#func room end():
    #    global.shake = 0

    

#func step():
    #    timer += 1
#    if (keyboard_check_pressed(vk_enter) or:
#        keyboard_check_pressed(vk_escape) or
#        ControlScripts.check_attack_pressed() or
#        ControlScripts.check_start_pressed())

#        if (timer > 50):
    
#            if (gamepad.attack_pressed): gamepad.attack_pressed = false
#            if (gamepad.start_pressed): gamepad.start_pressed = false
#            global.game_start = false
#            get_tree().change_scene_to_file("res://r_end3.tscn")
    


#    # DY:  shake the screen
#    if (global.shake > 0):

#        # DY: gml.view("xview") = gml.view("xview") + gml.rand(0,3) - gml.rand(0,3)
#        # DY: gml.view("yview") = gml.view("yview") + gml.rand(0,3) - gml.rand(0,3)
#        # DY: if (gml.view("yview") > 16): gml.view("yview") = 16 - gml.rand(0,8)
#        # DY: if (gml.view("yview") < 0): gml.view("yview") = 0 + gml.rand(0,8)
#        if (shake_toggle): gml.view("yview") = gml.view("yview") + gml.rand(1,8)
#        else: gml.view("yview") = 0
#        shake_toggle = not shake_toggle
#        global.shake -= 1

#    else:

#        gml.view("yview") = 0


#    if (gml.view("xview") < room_width - 320): gml.view("xview") += 1
