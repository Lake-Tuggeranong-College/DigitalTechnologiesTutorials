extends Node

var background_music = load("res://Music/bensound-thelounge.wav")

var backup_music = load("res://Music/Backup music 1.wav")

var mouse_click_sound_effect = load("res://Music/Mouse Click - Sound Effect (HD).wav")

func _ready():
	pass 

func play_music():
	
	$Music.stream = background_music
	$Music.play()
