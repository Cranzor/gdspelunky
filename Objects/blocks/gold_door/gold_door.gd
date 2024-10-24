extends DrawnSprite


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func collision with o_sceptre():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="COLLISION" with="sceptre">
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
#            <argument kind="STRING">if (other.held):

#        if (global.has_crown):
    
#            other.held = false
#            with player1
        
#                hold_item = 0
#                pickup_item_type = ""
        
#            with other  gml.instance_destroy() 
    
#            Audio.play_sound(global.snd_chest_open)
#            gml.instance_create(position.x, position.y, "x_gold")
#            gml.instance_destroy()
    
#        else:
    
#            global.message = "THE SCEPTRE FITS..."
#            global.message2 = "BUT NOTHING IS HAPPENING!"
#            global.message_timer = 100
    
#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    
