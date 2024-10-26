extends Item


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
#            <argument kind="STRING">type = "Gold Idol"
#    PlatformEngine.make_active()
#    Collision.set_collision_bounds(-4, -4, 4, 4)
#    trigger = true
#    heavy = true
#    value = 5000</argument>
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
#            <argument kind="STRING">if ((position.x > view_xview[0]-8 and position.x < view_xview[0] + view_wview[0]+8 and:
#            position.y > view_yview[0]-8 and position.y < view_yview[0] + view_hview[0]+8))

#    # DY:  get money for idols at shops
#    if (InLevel.is_level()):

#        if (not held and:
#            gml.collision_point(position.x, position.y+4, "brick_smooth", 0, 0) and
#            gml.instance_exists("shopkeeper") and
#            global.thief_level == 0 and not global.murderer)
	
#            if (shopkeeper.status == 0 and abs(position.x - shopkeeper.position.x) < 80):
		
#                global.collect += value*(global.level_type+1)
#                global.collect_counter += 20
#                if (global.collect_counter > 100): global.collect_counter = 100
#                global.idols += 1
#                Audio.play_sound(global.snd_coin)
#                gml.instance_create(position.x, position.y-8, "big_collect")
#                global.message = "PLEASURE DOING BUSINESS!"
#                global.message2 = ""
#                global.message_timer = 100
#                gml.instance_destroy()
		
	

#    if (not col_bot and trigger):

#        trigger = false
#        global.idols_grabbed += 1

#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

	
