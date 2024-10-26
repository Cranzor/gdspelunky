extends GMObject


func _ready():
	object_setup()


func _physics_process(_delta):
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

#        n = randi_range(0,3)
#        gml.instance_create(32 + n*80, 0, "shopkeeper2")
#        if (kills >= 40):
    
#            alarm_0(100)
    
#        elif (kills >= 30):
    
#            alarm_0(125)
    
#        elif (kills >= 20):
    
#            alarm_0(150)
    
#        elif (kills >= 10):
    
#            alarm_0(175)
    
#        else: alarm_0(200)
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
#            <argument kind="STRING">if (not player1.dead and randi_range(1, 100) < kills):

#        n = randi_range(0,3)
#        gml.instance_create(32 + n*80, 0, "spider")


#    if (not player1.dead): alarm_11(20)</argument>
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
#    kills = 0
#    draw_status = 0
#    alarm_0(100)
#    alarm_1(30)
#    alarm_10(100)
#    alarm_11(110)

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
#    draw_sprite(s_shopkeeper_icon, -1, view_xview[0]+64, view_yview[0]+8)
#    draw_text(view_xview[0]+64+16, view_yview[0]+8, kills)
#    if (draw_status < 3):

#        draw_set_font(global.my_fontSmall)
#        draw_set_color(c_yellow)
#        str_len = string_length("SHOTGUN CHALLENGE BEGINS IN 3...")*8
#        n = 320 - str_len
#        n = ceil(n / 2)
#        draw_text(n, 216, "SHOTGUN CHALLENGE BEGINS IN " + str\(3-draw_status) + "...")
#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    
