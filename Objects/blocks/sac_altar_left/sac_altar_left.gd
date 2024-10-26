extends Solid


func _ready():
	object_setup()


func _physics_process(_delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func create():
	#    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="CREATE" id="0">
#      <actions>
#        <action id="604" library="1">
#          <!--action name: Inherited-->
#          <kind>NORMAL</kind>
#          <allow_relative>false</allow_relative>
#          <question>false</question>
#          <can_apply_to>false</can_apply_to>
#          <action_type>FUNCTION</action_type>
#          <function_name>action_inherited</function_name>
#          <relative>false</relative>
#          <not>false</not>
#          <applies_to>.self</applies_to>
#          <arguments/>
#        </action>
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
#            <argument kind="STRING">defile = true
#    type = "Altar"</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

	

#func destroy():
	#    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="DESTROY" id="0">
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
#            <argument kind="STRING">if (not clean_death and not global.clean_solids):

#        rubble = gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0,8), position.y+8+randi_range(0,8)-randi_range(0,8), "rubble")
#        rubble.sprite_index = s_rubble_tan
#        rubble = gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0,8), position.y+8+randi_range(0,8)-randi_range(0,8), "rubbleSmall")
#        rubble.sprite_index = s_rubble_tanSmall
#        rubble = gml.instance_create(position.x+8+randi_range(0,8)-randi_range(0,8), position.y+8+randi_range(0,8)-randi_range(0,8), "rubbleSmall")
#        rubble.sprite_index = s_rubble_tanSmall


#    if (defile):


#        global.message = "YOU DARE DEFILE MY ALTAR?"
#        global.message2 = "I WILL PUNISH YOU!"
#        global.message_timer = 200
#        InLevel.scr_shake(10)
#        global.favor -= 16
	
#        if (global.kali_punish == 0):
	
#            with kali_head
		
#                alarm_0(1)
		
	
#        elif (global.kali_punish == 1):
	
#            gml.instance_create(player1.position.x, player1.position.y, "ball")
#            obj = gml.instance_create(player1.position.x, player1.position.y, "chain")
#            obj.link_val = 1
#            obj = gml.instance_create(player1.position.x, player1.position.y, "chain")
#            obj.link_val = 2
#            obj = gml.instance_create(player1.position.x, player1.position.y, "chain")
#            obj.link_val = 3
#            obj = gml.instance_create(player1.position.x, player1.position.y, "chain")
#            obj.link_val = 4
	
#        else:
	
#            if (global.dark_level and global.ghost_exists):
		
#                with kali_head
			
#                    alarm_0(1)
			
		
#            else:
		
#                global.dark_level = true
#                if (not global.ghost_exists):
			
#                    if (player1.position.x > room_width / 2): gml.instance_create(view_xview[0]+view_wview[0]+8, view_yview[0]+floor(view_hview[0] / 2), "ghost")
#                    else: gml.instance_create(view_xview[0]-32,  view_yview[0]+floor(view_hview[0] / 2), "ghost")
#                    global.ghost_exists = true
			
		
	

#        global.kali_punish += 1

#        with sac_altar_left
	
#            defile = false
#            gml.instance_destroy()
	
#    </argument>
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
#            <argument kind="STRING">if ((position.x > view_xview[0]-20 and position.x < view_xview[0] + view_wview[0]+4 and:
#            position.y > view_yview[0]-20 and position.y < view_yview[0] + view_hview[0]+4))

#        if (not gml.collision_point(position.x, position.y+16, "solid", 0, 0)): gml.instance_destroy()
#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

	
