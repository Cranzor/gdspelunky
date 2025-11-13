extends GMObject
#--- audio manager adapted from here: https://kidscancode.org/godot_recipes/3.x/audio/audio_manager/
@onready var music: AudioStreamPlayer = $Music
@onready var sound_effects: AudioStreamPlayer = $SoundEffects
@onready var bow_pull: AudioStreamPlayer = $BowPull
@onready var sound_effects_playback: AudioStreamPlaybackPolyphonic

var playing_sounds: PackedStringArray


func sound_effects_playback_setup():
	sound_effects.play()
	sound_effects_playback = sound_effects.get_stream_playback()


func play(sound_path: String):
	var loaded_sound: AudioStream = load(sound_path)
	if sound_path.ends_with(".ogg"):
		music.stream = loaded_sound
		music.pitch_scale = 1.0
		music.play()
	elif sound_path.ends_with("bowpull.wav"):
		bow_pull.stream = loaded_sound
		bow_pull.play()
	else:
		sound_effects_playback.play_stream(loaded_sound, 0, sound_effects.volume_db) #--- have to do this in order to play multiple sounds at once in AudioStreamPlayer
		
	playing_sounds.append(sound_path)
	var length: float = loaded_sound.get_length()
	get_tree().create_timer(length).timeout.connect(remove_from_playing_sounds.bind(sound_path))


func stop(sound_path: String): #--- only sound effect to account for here is bowpull.wav, so it gets its own audio stream player
	if sound_path.ends_with(".ogg"):
		music.stop()
	else:
		bow_pull.stop() #--- we can assume that the sound is bowpull.wav if it's not music


func set_pitch_scale(sound_path: String, pitch_scale_value: float): #--- only called on music
	music.pitch_scale = pitch_scale_value


func remove_from_playing_sounds(sound: String) -> void:
	playing_sounds.erase(sound)


func reset_on_room_changed() -> void:
	playing_sounds.clear()


func _ready():
	sound_effects_playback_setup()
	#---
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


func game_end():
	#SS_Unload --- called when game ends. not needed for Godot
	pass
