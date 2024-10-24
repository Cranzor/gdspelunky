extends Enemy


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
#            <argument kind="STRING">PlatformEngine.make_active()
#    Collision.set_collision_bounds(0, 0, 32, 16)
#    x_vel = 0
#    y_vel = 0
#    y_delta = -0.4
#    image_speed = 0.4

#    # DY:  stats
#    hp = 10
#    invincible = 0

#    # DY:  status
#    IDLE = 0
#    BOUNCE = 1
#    RECOVER = 2
#    WALK = 3

#    status = 0
#    bounce_counter = 0

#    shake_counter = 0
#    shake_toggle = 1

#    gml.instance_create(position.x, position.y+16, "web")
#    gml.instance_create(position.x+16, position.y+16, "web")</argument>
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
#            <argument kind="STRING">if ((position.x > view_xview[0]-32 and position.x < view_xview[0] + view_wview[0] and:
#            position.y > view_yview[0]-32 and position.y < view_yview[0] + view_hview[0]))

#    dist = gml.distance_to_object(character)
#    if (gml.collision_point(position.x+16, position.y+8, "solid", 0, 0)):

#        hp = 0

#    if (hp < 1):

#        repeat(randi_range(1,3))
    
#            n = randi_range(1,3)
#            match (n)
        
#                1:  gem = gml.instance_create(position.x+16, position.y+24, "emerald_big")  
#                2:  gem = gml.instance_create(position.x+16, position.y+24, "sapphire_big")  
#                3:  gem = gml.instance_create(position.x+16, position.y+24, "ruby_big")  
        
#            gem.x_vel = randi_range(0,3) - randi_range(0,3)
#            gem.y_vel = -2
    
#        obj = gml.instance_create(position.x+16, position.y+24, "paste")
#        obj.cost = 0
#        obj.for_sale = false
#        MiscScripts.scr_create_blood(position.x+16, position.y+24, 4)
#        if (counts_as_kill):
    
#            if (InLevel.is_real_level()): global.enemy_kills[3] += 1
#            global.giantspiders += 1
#            global.kills += 1
    
#        gml.instance_destroy()

#    elif (hp < 10 or not gml.collision_point(position.x, position.y-16, "solid", 0, 0) or (dist < 90 and character.position.y > position.y and abs(character.position.x - (position.x+16)) < 8)):

#      spider = gml.instance_create(position.x, position.y, "giant_spider")
#      spider.hp = hp
#      gml.instance_destroy()

#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    
