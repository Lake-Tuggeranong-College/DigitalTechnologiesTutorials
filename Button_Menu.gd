extends Button

export(String) var scene_to_load
export(String) var topicname

var mouse_sound_effect = load("res://Music/Mouse Click - Sound Effect (HD).wav")

func _ready():
	Global.topic = topicname

func _on_Correct_Answer():
	Global.increaseScore()
	# $Music.stream = mouse_sound_effect
	# $Music.play()

func _on_Incorrect_Answer():
	# Created for future use
	# To be completed at a later stage.
	pass


# func button pressed():
	# pass # 
	# $mouse_sound_effect.play
