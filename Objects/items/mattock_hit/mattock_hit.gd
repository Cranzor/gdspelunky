extends Whip


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func animation end():
    #    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
#    <event category="OTHER" id="7">
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
#            <argument kind="STRING">hit = false
#    if (gml.collision_point(position.x, position.y, "solid", 0, 0)):

#        obj = gml.instance_place(position.x, position.y, solid)
#        if (not obj.invincible): hit = true

#    elif (gml.collision_point(position.x, position.y+9, "solid", 0, 0)):

#        obj = gml.instance_place(position.x, position.y+9, solid)
#        if (not obj.invincible): hit = true


#    if (hit and not InLevel.is_room("r_title") and not InLevel.is_room("r_highscores")):

#        with obj
      
#            tile = tile_layer_find(3, position.x, position.y-16)
#            if (tile): tile_delete(tile)
#            tile = tile_layer_find(3, position.x, position.y+16)
#            if (tile): tile_delete(tile)
        
#            if (not invincible): gml.instance_destroy()
    

#        with treasure
    
#            state = 1
    

#        with spikes
    
#            if (not gml.collision_point(position.x, position.y+16, "solid", 0, 0)):
        
#                gml.instance_destroy()
        
    
    
#        # DY: 
#    break mattock
#        if (randi_range(1,20) == 1 and not global.is_tunnel_man):
    
#            with player1
        
#                hold_item = 0
#                pickup_item_type = ""
#                global.pickup_item = ""
        
#            obj = gml.instance_create(position.x, position.y, "mattock_head")
#            obj.y_vel = -2
#            Audio.play_sound(global.snd_mattock_break)
#            with mattock
        
#                if (not visible): gml.instance_destroy()
        
    
#        else:
#            Audio.play_sound(global.snd_crunch)


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
#            <argument kind="STRING">type = "Mattock"
#    image_speed = 0.5
#    damage = 2
#    puncture = true</argument>
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
#            <argument kind="STRING">if (gml.instance_number(character) == 0):

#        gml.instance_destroy()

#    if (sprite_index = s_mattock_hit_r):

#        position.x = character.position.x+16
#        position.y = character.position.y

#    elif (sprite_index = s_mattock_hit_l):

#        position.x = character.position.x-16
#        position.y = character.position.y

#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    
