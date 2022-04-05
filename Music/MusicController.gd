extends Node

var background_music = load("res://Music/bensound-thelounge.wav")

func _ready():
	pass 

func play_music():
	
	$Music.stream = background_music
	$Music.play()
