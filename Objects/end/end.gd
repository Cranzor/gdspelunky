extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func create():
	#    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="CREATE" id="0">
#      <actions>
#        <action id="603" library="1">
#          <!--action name: Code-->
#          <kind>CODE</kind>
#          <allow_relative>false</allow_relative>
#          <question>false</question>
#          <can_apply_to>true</can_apply_to>
#          <action_type>CODE</action_type>
#          <function_name/>
#          <relative>false</relative>
#          <not>false</not>
#          <applies_to>.self</applies_to>
#          <arguments>
#            <argument kind="STRING">shake_toggle = false
#    p_dummy.status = 2

#    timer = 0

#    if (global.kali_punish >= 2):

#        gml.instance_create(p_dummy.position.x, p_dummy.position.y+2, "ball2")
#        obj = gml.instance_create(p_dummy.position.x, p_dummy.position.y, "chain2")
#        obj.link_val = 1
#        obj = gml.instance_create(p_dummy.position.x, p_dummy.position.y, "chain2")
#        obj.link_val = 2
#        obj = gml.instance_create(p_dummy.position.x, p_dummy.position.y, "chain2")
#        obj.link_val = 3
#        obj = gml.instance_create(p_dummy.position.x, p_dummy.position.y, "chain2")
#        obj.link_val = 4


#    Audio.stop_all_music()</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

	

#func room end():
	#    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="OTHER" id="5">
#      <actions>
#        <action id="603" library="1">
#          <!--action name: Code-->
#          <kind>CODE</kind>
#          <allow_relative>false</allow_relative>
#          <question>false</question>
#          <can_apply_to>true</can_apply_to>
#          <action_type>CODE</action_type>
#          <function_name/>
#          <relative>false</relative>
#          <not>false</not>
#          <applies_to>.self</applies_to>
#          <arguments>
#            <argument kind="STRING">global.shake = 0</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

	

#func step():
	#    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="STEP" id="0">
#      <actions>
#        <action id="603" library="1">
#          <!--action name: Code-->
#          <kind>CODE</kind>
#          <allow_relative>false</allow_relative>
#          <question>false</question>
#          <can_apply_to>true</can_apply_to>
#          <action_type>CODE</action_type>
#          <function_name/>
#          <relative>false</relative>
#          <not>false</not>
#          <applies_to>.self</applies_to>
#          <arguments>
#            <argument kind="STRING">timer += 1
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

#        # DY: view_xview[0] = view_xview[0] + randi_range(0,3) - randi_range(0,3)
#        # DY: view_yview[0] = view_yview[0] + randi_range(0,3) - randi_range(0,3)
#        # DY: if (view_yview[0] > 16): view_yview[0] = 16 - randi_range(0,8)
#        # DY: if (view_yview[0] < 0): view_yview[0] = 0 + randi_range(0,8)
#        if (shake_toggle): view_yview[0] = view_yview[0] + randi_range(1,8)
#        else: view_yview[0] = 0
#        shake_toggle = not shake_toggle
#        global.shake -= 1

#    else:

#        view_yview[0] = 0


#    if (view_xview[0] < room_width - 320): view_xview[0] += 1</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

	
