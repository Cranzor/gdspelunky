extends GMObject

#--- audio manager adapted from here: https://kidscancode.org/godot_recipes/3.x/audio/audio_manager/

var num_players = 8
var bus = "master"

var available = []  # The available players.
var queue = []  # The queue of sounds to play.
var sound_and_node = {}
var audio_stream_players: Dictionary
var music_tracks = []


func create_audio_stream_player_nodes():
	# Create the pool of AudioStreamPlayer nodes.
	for i in num_players:
		var p: AudioStreamPlayer = AudioStreamPlayer.new()
		add_child(p)
		available.append(p)
		p.finished.connect(_on_stream_finished.bind(p))
		p.bus = bus
		audio_stream_players[i] = p


func _on_stream_finished(stream):
	# When finished playing a stream, make the player available again.
	available.append(stream)


func play(sound_path):
	if sound_path.ends_with(".ogg"):
		$Music.stream = load(sound_path)
		$Music.play()
	else:
		queue.append(sound_path)


func stop(sound_path):
	if sound_and_node.has(sound_path):
		var node = sound_and_node[sound_path]
		node.stop()
		_on_stream_finished(node)
	elif sound_path == $Music.stream.resource_path:
		$Music.stop()


func set_pitch_scale(sound_path, pitch_scale_value):
	if sound_and_node.has(sound_path):
		var node = sound_and_node[sound_path]
		node.pitch_scale = pitch_scale_value


func clear_all_sounds():
	for i in audio_stream_players:
		available.clear()
		available.append(audio_stream_players[i])
		queue.clear()
		_on_stream_finished(audio_stream_players[i])


func _process(_delta):
	# Play a queued sound if any players are available.
	if not queue.is_empty() and not available.is_empty():
		sound_and_node[queue[0]] = available[0]
		available[0].stream = load(queue.pop_front())
		available[0].play()
		available.pop_front()


func _ready():
	#SS.init() --- should not be needed for anything
	
	global.music = true

	global.mus_title = "res://sounds/title.ogg"
	global.mus_cave = "res://sounds/cave.ogg"
	global.mus_lush = "res://sounds/lush.ogg"
	global.mus_ice = "res://sounds/ice.ogg"
	global.mus_temple = "res://sounds/temple.ogg"
	global.mus_boss = "res://sounds/boss.ogg"
	global.mus_victory = "res://sounds/victory.ogg"
	global.mus_credits = "res://sounds/credits.ogg"

	global.snd_ignite = "res://sounds/ignite.wav"
	global.snd_teleport = "res://sounds/teleport.wav"
	global.snd_jetpack = "res://sounds/jetpack.wav"
	global.snd_whip = "res://sounds/whip.wav"
	global.snd_jump = "res://sounds/jump.wav"
	global.snd_throw = "res://sounds/throw.wav"
	global.snd_climb1 = "res://sounds/climb1.wav"
	global.snd_climb2 = "res://sounds/climb2.wav"
	global.snd_shotgun = "res://sounds/shotgun.wav"
	global.snd_bow_pull = "res://sounds/bowpull.wav"
	global.snd_steps = "res://sounds/steps.wav"
	global.snd_blink1 = "res://sounds/blink1.wav"
	global.snd_blink2 = "res://sounds/blink2.wav"
	global.snd_hit = "res://sounds/hit.wav"
	global.snd_hurt = "res://sounds/hurt.wav"
	global.snd_die = "res://sounds/die.wav"
	global.snd_coin = "res://sounds/coin.wav"
	global.snd_gem = "res://sounds/gem.wav"
	global.snd_pickup = "res://sounds/pickup.wav"
	global.snd_chest_open = "res://sounds/chestopen.wav"
	global.snd_push = "res://sounds/push.wav"
	global.snd_mattock_break = "res://sounds/mattockbreak.wav"
	global.snd_trap = "res://sounds/trap.wav"
	global.snd_click = "res://sounds/click.wav"
	global.snd_break = "res://sounds/break.wav"
	global.snd_thud = "res://sounds/thud.wav"
	global.snd_thump = "res://sounds/thump.wav"
	global.snd_crunch = "res://sounds/crunch.wav"
	global.snd_splash = "res://sounds/splash.wav"
	global.snd_flame = "res://sounds/flame.wav"
	global.snd_explosion = "res://sounds/explosion.wav"
	global.snd_arrow_trap = "res://sounds/arrowtrap.wav"
	global.snd_boing = "res://sounds/boing.wav"
	global.snd_damsel = "res://sounds/damsel.wav"
	global.snd_kiss = "res://sounds/kiss.wav"
	global.snd_ghost = "res://sounds/ghost.wav"
	global.snd_bat = "res://sounds/bat.wav"
	global.snd_giant_spider = "res://sounds/giantspider.wav"
	global.snd_spider_jump = "res://sounds/spiderjump.wav"
	global.snd_frog = "res://sounds/frog.wav"
	global.snd_zombie = "res://sounds/zombie.wav"
	global.snd_monkey = "res://sounds/monkey.wav"
	global.snd_alert = "res://sounds/alert.wav"
	global.snd_caveman_die = "res://sounds/cavemandie.wav"
	global.snd_alien = "res://sounds/alien.wav"
	global.snd_laser = "res://sounds/laser.wav"
	global.snd_laser_charge = "res://sounds/lasercharge.wav"
	global.snd_small_explode = "res://sounds/smallexplode.wav"
	global.snd_psychic = "res://sounds/psychic.wav"
	global.snd_yeti_yell = "res://sounds/yetiyell.wav"
	global.snd_big_jump = "res://sounds/bigjump.wav"
	global.snd_slam = "res://sounds/slam.wav"
	global.snd_p_fall = "res://sounds/pfall.wav"
	global.snd_t_fall = "res://sounds/tfall.wav"

	create_audio_stream_player_nodes()

func game_end():
	#SS_Unload --- called when game ends. not needed for Godot
	pass
