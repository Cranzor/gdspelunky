extends GMObject


func _ready():
	object_setup()


#--- Object functions
var pushed


func create():
	pushed = false


func step():
	if (gml.collision_rectangle(position.x+2, position.y+11, position.x+13,  position.y+15, "solid", 0, 0)):

		if (not pushed):
		
			counter = 20
			Audio.play_sound(global.snd_click)
		
		pushed = true

	else: pushed = false

	if (pushed):

		if (counter > 0): counter -= 1
		if (counter == 1):
	
			MiscScripts.scr_reset_highscores()
			global.shake = 60
			Audio.play_sound(global.snd_thump)
		
		var trophy = gml.get_instance("trophy") #---[FLAG] assuming these are one each. may have to adjust otherwise
		var x_sun = gml.get_instance("x_sun")
		var x_moon = gml.get_instance("x_moon")
		var x_stars = gml.get_instance("x_stars")
		var x_change = gml.get_instance("x_change")
		
		gml.instance_destroy(trophy)
		gml.instance_destroy(x_sun)
		gml.instance_destroy(x_moon)
		gml.instance_destroy(x_stars)
		gml.instance_destroy(x_change)
		sprite_index = "button_pushed"
		
		var highscores = gml.get_instance("highscores")
		highscores.t_money = 0
		highscores.t_time = 0
		highscores.t_kills = 0
		highscores.t_saves = 0

	else: sprite_index = "button"
