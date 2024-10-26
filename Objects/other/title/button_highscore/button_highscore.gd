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
#            <argument kind="STRING">pushed = false</argument>
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
#            <argument kind="STRING">if (gml.collision_rectangle(position.x+2, position.y+11, position.x+13,  position.y+15, "solid", 0, 0)):

#        if (not pushed):
    
#            counter = 20
#            Audio.play_sound(global.snd_click)
    
#        pushed = true

#    else: pushed = false

#    if (pushed):

#        if (counter > 0): counter -= 1
#        if (counter == 1):
    
#            scr_reset_highscores()
#            global.shake = 60
#            Audio.play_sound(global.snd_thump)
    
#        with trophy  gml.instance_destroy() 
#        with x_sun  gml.instance_destroy() 
#        with x_moon  gml.instance_destroy() 
#        with x_stars  gml.instance_destroy() 
#        with x_change  gml.instance_destroy() 
#        sprite_index = s_button_pushed
    
#        highscores.t_money = 0
#        highscores.t_time = 0
#        highscores.t_kills = 0
#        highscores.t_saves = 0

#    else: sprite_index = s_button</argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    
