extends Water


func _ready():
	object_setup()


func _physics_process(_delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


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

#        gml.instance_create(position.x+randi_range(0,16), position.y+randi_range(0,16), "drip")
#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    
