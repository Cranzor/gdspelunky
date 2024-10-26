extends Solid


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
#            <argument kind="STRING">arrow = gml.instance_create(position.x-16, position.y+4, "arrow")
#    arrow.x_vel = -5</argument>
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
#            <argument kind="STRING">type = "Arrow Trap"
#    fired = 0
#    invincible = false
#    # DY:  alarm_0(50)</argument>
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
#            <argument kind="STRING">if (fired == 0 and abs(player1.position.y-position.y-8) < 8 and player1.position.x < position.x+8 and:
#        point_distance(position.x+8, position.y+8, player1.position.x, player1.position.y) < 128 and (abs(player1.x_vel) > 0 or abs(player1.y_vel) > 0))

#        arrow = gml.instance_create(position.x-16, position.y+4, "arrow")
#        arrow.x_vel = -8
#        fired += 1
#        sound_play(snd_arrow_trap)


#    obj = instance_nearest(position.x, position.y, enemy)
#    if (obj): 
#    if (fired == 0 and abs(obj.position.y-position.y-8) < 8 and obj.position.x < position.x and:
#        point_distance(position.x, position.y, obj.position.x, obj.position.y) < 128 and (abs(obj.x_vel) > 0 or abs(obj.y_vel) > 0))

#        arrow = gml.instance_create(position.x-16, position.y+4, "arrow")
#        arrow.x_vel = -8
#        fired += 1
#        sound_play(snd_arrow_trap)


#    obj = instance_nearest(position.x, position.y, moveable_solid)
#    if (obj): 
#    if (fired == 0 and abs(obj.position.y-position.y-8) < 8 and obj.position.x < position.x and:
#        point_distance(position.x, position.y, obj.position.x, obj.position.y) < 128)

#        arrow = gml.instance_create(position.x-16, position.y+4, "arrow")
#        arrow.x_vel = -8
#        fired += 1
#        sound_play(snd_arrow_trap)


#    obj = instance_nearest(position.x-16, position.y, item)
#    if (obj): 
#    if (fired == 0 and abs(obj.position.y-position.y-8) < 8 and obj.position.x < position.x+8 and:
#        point_distance(position.x+8, position.y+8, obj.position.x, obj.position.y) < 128 and (abs(obj.x_vel) > 0 or abs(obj.y_vel) > 0))

#        arrow = gml.instance_create(position.x-16, position.y+4, "arrow")
#        arrow.x_vel = -8
#        fired += 1
#        sound_play(snd_arrow_trap)
#    </argument>
#          </arguments>
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
#            <argument kind="STRING">position.x = ceil(position.x)
#    position.y = ceil(position.y)</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    
