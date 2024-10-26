extends GMObject


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
#            <argument kind="STRING">olmec_dead = false
#    door_open = false</argument>
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
#            <argument kind="STRING"># DY: if (not olmec_dead and not door_open):
#    if (olmec_dead and not door_open):

#        door_open = true
#        obj = gml.instance_place(640, 544, entrance)
#        with obj  gml.instance_destroy() 
#        gml.instance_create(640, 544, "x_end")
#        if (not gml.collision_point(640, 560, "solid", 0, 0)):
    
#            brick = gml.instance_create(640, 560, "temple")
#            with brick  invincible = true 
    
#        else:
    
#            brick = instance_position(640, 560, solid)
#            with brick  invincible = true 
    
#        Audio.play_sound(global.snd_thump)
#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    
