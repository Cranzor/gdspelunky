
extends GMObject


func _ready():
	object_setup()


func _physics_process(delta):
	object_tick()


func _process(delta):
	object_process(delta)


#--- Object functions


#func collision with o_arrow():
    #    other.x_vel = 0
#    other.y_vel = 0
#    if (not dying):

#        dying = true
#        n = 0
#        if (other.position.y >= position.y-2 and other.position.y <= position.y+2):
    
#            n = 5
#            Audio.play_sound(global.snd_coin)
    
#        elif (other.position.y >= position.y-6 and other.position.y <= position.y-3): n = 3
#        elif (other.position.y >= position.y+3 and other.position.y <= position.y+6): n = 3
#        elif (other.position.y >= position.y-10 and other.position.y <= position.y-7): n = 2
#        elif (other.position.y >= position.y+7 and other.position.y <= position.y+10): n = 2
#        else: n = 1
#        # DY: if (hard): n *= 2
#        moon_room.baskets += n
#        Audio.play_sound(global.snd_hit)


#    if (life <= 2): with other  gml.instance_destroy(self) 

    

#func create():
    #    life = 20
#    dying = false
#    UP = 0
#    DOWN = 1
#    dir = randi_range(0,1)
#    move_off = 32
#    hard = false
#    if (position.x > 208): hard = true
#    x_diff = 0

    

#func step():
    #    if (dying):

#        if (life > 0): life -= 1
#        else:
    
#            life = 20
#            dying = false
    

#    else:

#        if (dir == UP):
    
#            if (hard): position.y -= 2
#            else: position.y -= 1
#            move_off += 1
#            if (position.y <= 64 or move_off > 64):
        
#                dir = DOWN
#                move_off = 0
        
    
#        elif (dir == DOWN):
    
#            if (hard): position.y += 2
#            else: position.y += 1
#            move_off += 1
#            if (position.y >= 160 or move_off > 64):
        
#                dir = UP
#                move_off = 0
        
    
    
#        if (moon_room.timer <= 30):
    
#            position.x = 240 - abs(sin(x_diff)*64)
#            x_diff += 0.01
