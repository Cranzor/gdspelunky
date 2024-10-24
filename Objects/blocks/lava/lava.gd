extends Water


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
#            <argument kind="STRING">type = "Lava"
#    spurt = false
#    spurt_time = randi_range(100,300)
#    spurt_counter = spurt_time</argument>
#          </arguments>
#        </action>
#        <action id="611" library="1">
#          <!--action name: Variable-->
#          <kind>VARIABLE</kind>
#          <allow_relative>true</allow_relative>
#          <question>false</question>
#          <can_apply_to>true</can_apply_to>
#          <action_type>CODE</action_type>
#          <function_name/>
#          <relative>false</relative>
#          <not>false</not>
#          <applies_to>.self</applies_to>
#          <arguments>
#            <argument kind="STRING">image_speed</argument>
#            <argument kind="EXPRESSION">0.4</argument>
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
#            <argument kind="STRING">for (i = 0 i < 3 i += 1)

#        gml.instance_create(position.x+randi_range(0,16), position.y+randi_range(0,16), "lava_drip")

#    if (randi_range(1,6) == 1):

#        flame = gml.instance_create(position.x+8, position.y+8, "flame")
#        flame.y_vel = 4
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
#            <argument kind="STRING">dist = 0
#    if (InLevel.is_level()):

#        dist = point_distance(position.x, position.y, player1.position.x, player1.position.y)

#    if (spurt and dist < 240):

#        if (spurt_counter > 0): spurt_counter -= 1
#        else:
    
#            spurt_counter = spurt_time
#            if (randi_range(1,8) == 1): flame = gml.instance_create(position.x+8, position.y-4, "magma")
#            else: flame = gml.instance_create(position.x+8, position.y-4, "flame")
#            flame.y_vel = -randi_range(1,4)
    
#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    
