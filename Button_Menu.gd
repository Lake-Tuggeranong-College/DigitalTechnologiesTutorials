extends Button

export(String) var scene_to_load

var mouse_sound_effect = load("res://Music/Mouse Click - Sound Effect (HD).wav")

func _on_Correct_Answer():
	Global.increaseScore()

func _on_Incorrect_Answer():
	# Created for future use
	# To be completed at a later stage.
	pass


# func _on_Main_menu_pressed():
	# pass # Replace with function body.
	# $Music.stream = mouse_sound_effect
	# $Music.play()
