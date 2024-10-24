extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func alarm 0():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="ALARM" id="0">
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
#            <argument kind="STRING">if (not player1.dead):

#        i = player1.position.x
#        j = 32
#        if (i < 40): i = 40
#        if (i > 280): i = 280
#        if (not gml.collision_point(i, j, "solid", 0, 0)):
    
#            if (points >= 80):
        
#                if (gml.instance_exists("ghost")):  /* do nothing */ 
#                elif (player1.position.x > room_width/2): gml.instance_create(-32, 120-16, "ghost")
#                else: gml.instance_create(320, 120-16, "ghost")
        
#            elif (points >= 50):
        
#                obj = gml.instance_create(152, 32, "vampire")
#                obj.status = 7
#                with obj
            
#                    obj = gml.instance_create(position.x+8, position.y+8, "poof")
#                    obj.x_vel = -1
#                    obj.y_vel = 0
#                    obj = gml.instance_create(position.x+8, position.y+8, "poof")
#                    obj.x_vel = 1
#                    obj.y_vel = 0
            
        
#            else:
        
#                obj = gml.instance_create(i, j, "bomb")
#                obj.sprite_index = s_bomb_armed
#                obj.armed = true
#                with obj
            
#                    alarm_0(80)
#                    image_speed = 0.2
#                    obj = gml.instance_create(position.x, position.y, "poof")
#                    obj.x_vel = -1
#                    obj.y_vel = 0
#                    obj = gml.instance_create(position.x, position.y, "poof")
#                    obj.x_vel = 1
#                    obj.y_vel = 0
                   
#                # DY: obj.safe = true
#                obj.alarm_2(10)
        
#            alarm_0()randi_range(100,200)
    
#        else:
#            alarm_0(1)
#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func alarm 1():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="ALARM" id="1">
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
#            <argument kind="STRING">draw_status = 1
#    alarm_2(30)</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func alarm 10():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="ALARM" id="10">
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
#            <argument kind="STRING">if (global.music): start_music()</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func alarm 11():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="ALARM" id="11">
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
#            <argument kind="STRING">if (not player1.dead):

#        if (points < 99): points += 1
#        alarm_11(30)
#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func alarm 2():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="ALARM" id="2">
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
#            <argument kind="STRING">draw_status = 2
#    alarm_3(10)</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func alarm 3():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="ALARM" id="3">
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
#            <argument kind="STRING">draw_status = 3</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

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
#            <argument kind="STRING">global.plife = 8
#    highscore = false
#    points = 0
#    draw_status = 0
#    alarm_0(100)+randi_range(100,200)
#    alarm_1(30)
#    alarm_10(100)
#    alarm_11(100)

#    # DY:  To prevent the Tunnel Man from tearing up the whole level.
#    with brick

#        if (position.x <= 16 or position.x >= 288 or position.y <= 16 or position.y >= 208):
    
#            invincible = true
    
#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func draw():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="DRAW" id="0">
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
#            <argument kind="STRING">life = global.plife
#    if (life < 0): life = 0
#    draw_set_font(global.my_font)
#    draw_set_color(c_white)
#    draw_sprite(s_heart, -1, view_xview[0]+8, view_yview[0]+8)
#    draw_text(view_xview[0]+24, view_yview[0]+8, life)
#    draw_sprite(s_damsel_icon, -1, view_xview[0]+64, view_yview[0]+8)
#    draw_text(view_xview[0]+64+16, view_yview[0]+8, points)
#    if (draw_status < 3):

#        draw_set_font(global.my_fontSmall)
#        draw_set_color(c_yellow)
#        str_len = string_length("DAMSEL CHALLENGE BEGINS IN 3...")*8
#        n = 320 - str_len
#        n = ceil(n / 2)
#        draw_text(n, 216, "DAMSEL CHALLENGE BEGINS IN " + str\(3-draw_status) + "...")
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
#            <argument kind="STRING">if (game.draw_status == 0):

#        if (gml.instance_exists("damsel")):
    
#            if (damsel.hp < 1):
        
#                global.plife = 0
        
    
#        else:
    
#            global.plife = 0
    
#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    
