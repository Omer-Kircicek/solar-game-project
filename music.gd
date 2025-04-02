extends Node

@export var music: AudioStream  # Drag your music file here in the Inspector

var music_player: AudioStreamPlayer

func _ready():
	music_player = AudioStreamPlayer.new()
	add_child(music_player)
	music_player.stream = music
	music_player.volume_db = -10  # Adjust volume if needed
	music_player.autoplay = true
	music_player.bus = "Music"  # Make sure your bus exists in "Audio"
	music_player.play()
