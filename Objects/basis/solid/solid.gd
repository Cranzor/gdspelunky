extends DrawnSprite


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
#            <argument kind="STRING">invincible = false
#    shop_wall = false
#    type = "None"
#    treasure = ""
#    clean_death = false</argument>
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
#            <argument kind="STRING">if (shop_wall):

#        with shopkeeper
    
#            InLevel.scr_shopkeeper_anger(1)
    


#    if (gml.collision_point(position.x+8, position.y-1, "spikes", 0, 0)):

#        obj = gml.instance_place(position.x+8, position.y-1, spikes)
#        with obj  gml.instance_destroy() 

#    if (gml.collision_point(position.x+8, position.y-1, "tiki_torch", 0, 0)):

#        obj = gml.instance_place(position.x+8, position.y-1, tiki_torch)
#        with obj  gml.instance_destroy() 

#    if (gml.collision_point(position.x+8, position.y-1, "grave", 0, 0)):

#        obj = gml.instance_place(position.x+8, position.y-1, grave)
#        with obj  gml.instance_destroy() 

#    if (gml.collision_point(position.x+8, position.y+18, "lamp_red", 0, 0)):

#        obj = gml.instance_place(position.x+8, position.y+16, lamp_red)
#        with obj  gml.instance_create(position.x+8, position.y+12, "lamp_redItem") gml.instance_destroy() 

#    if (gml.collision_point(position.x+8, position.y+18, "lamp", 0, 0)):

#        obj = gml.instance_place(position.x+8, position.y+16, lamp)
#        with obj  gml.instance_create(position.x+8, position.y+12, "lampItem") gml.instance_destroy() 


#    global.check_water = true</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    
