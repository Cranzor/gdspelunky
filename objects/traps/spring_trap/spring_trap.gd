
extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func animation_end():
#    if (status == SPRUNG):

#        status = IDLE
#        sprite_index = "spring_trap"


	

#func collision_with_enemy():
#    if (status == IDLE and abs(other.position.x-position.x) < 6 and counter = 0 and not other.flying):

#        sprite_index = "spring_trap_sprung"
#        Audio.play_sound(global.snd_boing)
#        status = SPRUNG
#        with other
	
#            position.y -= 16
#            y_vel = -8
#            if (facing == 0): x_vel -= 1
#            else: x_vel += 1
	
#        counter = 10


	

#func collision_with_item():
#    if (status == IDLE and abs(other.position.x-(position.x+8)) < 6 and not other.held and counter = 0 and:
#        other.active)

#        sprite_index = "spring_trap_sprung"
#        Audio.play_sound(global.snd_boing)
#        status = SPRUNG
#        with other
	
#            position.y -= 24
#            y_vel = -8
#            if (type == "Damsel"):
		
#                if (facing == 18): x_vel -= 1
#                else: x_vel += 1
		
		
	
#        counter = 10


	

#func collision_with_player1():
#    if (status == IDLE and abs(other.position.x-(position.x+8)) < 6 and counter = 0):

#        if (other.state <= 13 and other.sprite_index != "p_exit" and other.sprite_index != "damsel_exit):"
	
#            sprite_index = "spring_trap_sprung"
#            Audio.play_sound(global.snd_boing)
#            status = SPRUNG
#            with other
		
#                position.y -= 16
#                y_vel = -16
		
#            counter = 10
	


	

#func create():
#    IDLE = 0
#    SPRUNG = 1
#    status = IDLE
#    counter = 0

	

#func step():
#    if ((position.x > gml.view("xview")-16 and position.x < gml.view("xview") + gml.view("wview") and:
#            position.y > gml.view("yview")-16 and position.y < gml.view("yview") + gml.view("hview")))

#        if (counter > 0): counter -= 1
#        if (not gml.collision_point(position.x, position.y+16, "solid", 0, 0)): gml.instance_destroy(self)
