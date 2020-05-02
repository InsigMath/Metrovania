extends Node

var sound_path = "res://Metroidvania Resources/Music and Sounds/"

var sounds = {
	"Bullet" : load(sound_path + "Bullet.wav"),
	"Click" : load(sound_path + "Click.wav"),
	"EnemyDie" : load(sound_path + "EnemyDie.wav"),
	"Explosion" : load(sound_path + "Explosion.wav"),
	"Hurt" : load(sound_path + "Hurt.wav"),
	"Jump" : load(sound_path + "Jump.wav"),
	"Pause" : load(sound_path + "Pause.wav"),
	"Powerup" : load(sound_path + "Powerup.wav"),
	"Step" : load(sound_path + "Step.wav"),
	"Unpause" : load(sound_path + "Unpause.wav"),
}

onready var sound_players = get_children()

func play(sound_string, pitch_scale = 1, volume_db = 0):
	for soundPlayer in sound_players:
		if not soundPlayer.playing:
			soundPlayer.pitch_scale = pitch_scale
			soundPlayer.volume_db = volume_db
			soundPlayer.stream = sounds[sound_string]
			soundPlayer.play()
			return
	print("Too many sounds playing at once")
