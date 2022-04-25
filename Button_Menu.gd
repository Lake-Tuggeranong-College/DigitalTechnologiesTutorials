extends Button

export(String) var scene_to_load

var mouse_sound_effect = load("res://Music/Mouse Click - Sound Effect (HD).wav")

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


func _on_Button_pressed():
	pass # Replace with function body.


func _on_Button2_pressed():
	pass # Replace with function body.
