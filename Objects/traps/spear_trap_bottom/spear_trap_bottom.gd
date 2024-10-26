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
#            <argument kind="STRING">fired = 0
#    fired_max = 50
#    prox = 4
#    invincible = false
#    # DY:  alarm_0(50)</argument>
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


#    global.check_water = true</argument>
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
#            <argument kind="STRING">if (fired > 0): fired -= 1

#    range = 64

#    if (fired == 0 and abs(player1.position.y-position.y-8) < prox and player1.position.x < position.x and:
#        point_distance(position.x+8, position.y+8, player1.position.x, player1.position.y) < range)

#        gml.instance_create(position.x-16, position.y, "spears_left")
#        fired = fired_max


#    obj = instance_nearest(position.x, position.y, enemy)
#    if (obj): 
#    if (fired == 0 and abs(obj.position.y-position.y) < prox and obj.position.x < position.x and:
#        point_distance(position.x, position.y, obj.position.x, obj.position.y) < range)

#        gml.instance_create(position.x-16, position.y, "spears_left")
#        fired = fired_max


#    obj = instance_nearest(position.x, position.y, moveable_solid)
#    if (obj): 
#    if (fired == 0 and abs(obj.position.y-position.y) < prox and obj.position.x < position.x and:
#        point_distance(position.x, position.y, obj.position.x, obj.position.y) < range)

#        gml.instance_create(position.x-16, position.y, "spears_left")
#        fired = fired_max


#    obj = instance_nearest(position.x, position.y, item)
#    if (obj): 
#    if (fired == 0 and abs(obj.position.y-position.y-8) < prox and obj.position.x < position.x+8 and:
#        point_distance(position.x+8, position.y+8, obj.position.x, obj.position.y) < range)

#        gml.instance_create(position.x-16, position.y, "spears_left")
#        fired = fired_max


#    # DY:  right

#    if (fired == 0 and abs(player1.position.y-position.y-8) < prox and player1.position.x > position.x+8 and:
#        point_distance(position.x+8, position.y+8, player1.position.x, player1.position.y) < range)

#        spears = gml.instance_create(position.x+16, position.y, "spears_left")
#        spears.sprite_index = s_spears_right
#        fired = fired_max


#    obj = instance_nearest(position.x, position.y, enemy)
#    if (obj): 
#    if (fired == 0 and abs(obj.position.y-position.y) < prox and obj.position.x > position.x and:
#        point_distance(position.x, position.y, obj.position.x, obj.position.y) < range)

#        spears = gml.instance_create(position.x+16, position.y, "spears_left")
#        spears.sprite_index = s_spears_right
#        fired = fired_max


#    obj = instance_nearest(position.x, position.y, moveable_solid)
#    if (obj): 
#    if (fired == 0 and abs(obj.position.y-position.y) < prox and obj.position.x > position.x and:
#        point_distance(position.x, position.y, obj.position.x, obj.position.y) < range)

#        spears = gml.instance_create(position.x+16, position.y, "spears_left")
#        spears.sprite_index = s_spears_right
#        fired = fired_max


#    obj = instance_nearest(position.x, position.y, item)
#    if (obj): 
#    if (fired == 0 and abs(obj.position.y-position.y-8) < prox and obj.position.x > position.x+8 and:
#        point_distance(position.x+8, position.y+8, obj.position.x, obj.position.y) < range)

#        spears = gml.instance_create(position.x+16, position.y, "spears_left")
#        spears.sprite_index = s_spears_right
#        fired = fired_max


#    if ((position.x > view_xview[0]-8 and position.x < view_xview[0] + view_wview[0]+8 and:
#            position.y > view_yview[0]-8 and position.y < view_yview[0] + view_hview[0]+8))

#    if (not gml.collision_point(position.x, position.y+16, "solid", 0, 0)):

#        gml.instance_destroy()

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

    
