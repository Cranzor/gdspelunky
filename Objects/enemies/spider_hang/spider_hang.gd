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
#    Collision.set_collision_bounds(4, 0, 12, 12)
#    x_vel = 0
#    y_vel = 0
#    y_delta = -0.4
#    image_speed = 0.4

#    # DY:  stats
#    hp = 1
#    invincible = 0

#    # DY:  status
#    IDLE = 0
#    BOUNCE = 1
#    RECOVER = 2
#    WALK = 3

#    status = 0
#    bounce_counter = 0

#    shake_counter = 0
#    shake_toggle = 1</argument>
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
#            <argument kind="STRING">if ((position.x > view_xview[0]-20 and position.x < view_xview[0] + view_wview[0]+4 and:
#            position.y > view_yview[0]-20 and position.y < view_yview[0] + view_hview[0]+4))

#    dist = gml.distance_to_object(character)
#    if (gml.collision_point(position.x+8, position.y+4, "solid", 0, 0)):

#        hp = 0

#    if (hp < 1):

#        MiscScripts.scr_create_blood(position.x+8, position.y+8, 3)
#        if (InLevel.is_real_level()): global.enemy_kills[2] += 1
#        global.spiders += 1
#        global.kills += 1
#        gml.instance_destroy()

#    elif (not gml.collision_point(position.x, position.y-16, "solid", 0, 0) or (dist < 90 and character.position.y > position.y and abs(character.position.x - (position.x+8)) < 8)):

#      spider = gml.instance_create(position.x, position.y, "spider")
#      spider.hp = hp
#      gml.instance_destroy()

#    </argument>
#          </arguments>
#        </action>
#      </actions>
#    </event>

    
