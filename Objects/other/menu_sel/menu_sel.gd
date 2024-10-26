extends Menu


func _ready():
	object_setup()


func _physics_process(_delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func mouse left button released():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="MOUSE" id="7">
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
#            <argument kind="STRING">n = (position.y - 112) / 8
#    if (n+1 <= (load_level.num_levels - (load_level.page-1)*10)):

#        load_level.level_name = string_upper(load_level.level_list[(load_level.page-1)*10+n])
#        with menu_sel  sprite_index = s_menu_sel_off 
#        sprite_index = s_menu_sel_on
#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    
