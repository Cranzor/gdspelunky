extends DrawnSprite


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
#            <argument kind="STRING">invincible = false</argument>
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
#            <argument kind="STRING">if (gml.instance_number(yellow_trail) < 12): gml.instance_create(position.x, position.y, "yellow_trail")
#    alarm_1(4)</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func animation end():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="OTHER" id="7">
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
#            <argument kind="STRING">if (sprite_index == s_web_create):

#        obj = gml.instance_create(position.x-8, position.y-8, "web")
#        obj.dying = true
#        gml.instance_destroy()
#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func collision with o_enemy():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="COLLISION" with="enemy">
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
#            <argument kind="STRING">if (other.type != "Giant Spider"):

#        sprite_index = s_web_create
#        x_vel = 0
#        y_vel = 0
#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func collision with o_item():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="COLLISION" with="item">
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
#            <argument kind="STRING">sprite_index = s_web_create
#    x_vel = 0
#    y_vel = 0</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func collision with o_solid():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="COLLISION" with="solid">
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
#            <argument kind="STRING">sprite_index = s_web_create
#    x_vel = 0
#    y_vel = 0</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func collision with o_water():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="COLLISION" with="water">
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
#            <argument kind="STRING">sprite_index = s_web_create
#    x_vel = 0
#    y_vel = 0</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func collision with o_web():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="COLLISION" with="web">
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
#            <argument kind="STRING">sprite_index = s_web_create
#    x_vel = 0
#    y_vel = 0</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

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
#            <argument kind="STRING">y_vel = -1 * (random(3)+1)
#    x_vel = randi_range(1,3)
#    if (randi_range(1,2) == 1): x_vel *= -1
#    life = randi_range(20,100)
#    invincible = true
#    # DY: alarm_0(40)
#    # DY: alarm_1(1)</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func outside room():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="OTHER" id="0">
#      <actions>
#        <action id="203" library="1">
#          <!--action name: Kill_Object-->
#          <kind>NORMAL</kind>
#          <allow_relative>false</allow_relative>
#          <question>false</question>
#          <can_apply_to>true</can_apply_to>
#          <action_type>FUNCTION</action_type>
#          <function_name>action_kill_object</function_name>
#          <relative>false</relative>
#          <not>false</not>
#          <applies_to>.self</applies_to>
#          <arguments/>
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
#            <argument kind="STRING">position.x += x_vel
#    position.y += y_vel

#    if (y_vel < 6): y_vel += 0.2
#    # DY:  if (y_vel > 0): y_vel = 0

#    if (life > 0): life -= 1
#    else:

#        sprite_index = s_web_create


#    /*if (gml.collision_point(position.x, position.y, "dark", 0, 0) or:
#        gml.collision_point(position.x, position.y, "darkFall", 0, 0) or
#        gml.collision_point(position.x, position.y, "ice", 0, 0))

#        gml.instance_destroy()
#    */</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    
