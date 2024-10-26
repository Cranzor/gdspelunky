extends Item


func _ready():
	object_setup()


func _physics_process(_delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


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
#            <argument kind="STRING">gml.instance_create(position.x, position.y, "explosion")
#    MiscScripts.scr_create_blood(position.x, position.y, 3)
#    if (global.graphics_high):

#        MiscScripts.scr_create_flame(position.x, position.y, 3)


#    if (held):

#        if (character): character.hold_item = 0

#    gml.instance_destroy()</argument>
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
#            <argument kind="STRING">type = "Fire Frog Bomb"
#    PlatformEngine.make_active()
#    Collision.set_collision_bounds(-6, -4, 6, 8)
#    alarm_1(120)
#    heavy = true
#    bloodless = false
#    swimming = false</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    

#func step():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="STEP" id="0">
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
#            <argument kind="STRING">if (armed and gml.instance_exists("shopkeeper")):

#        if ((global.room_path[[LevelGeneration.scr_get_room_x(position.x), LevelGeneration.scr_get_room_y(position.y)]] == 4 or:
#            global.room_path[[LevelGeneration.scr_get_room_x(position.x), LevelGeneration.scr_get_room_y(position.y)]] == 5) and
#            gml.distance_to_object(shopkeeper) < 96)
    
#            with shopkeeper
        
#                InLevel.scr_shopkeeper_anger(2)
        
    


#    if (gml.collision_point(position.x, position.y, "water_swim", -1, -1)):

#        if (not swimming):
    
#            gml.instance_create(position.x, position.y, "splash")
#            swimming = true
#            Audio.play_sound(global.snd_splash)
    

#    else:

#        swimming = false
#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    
