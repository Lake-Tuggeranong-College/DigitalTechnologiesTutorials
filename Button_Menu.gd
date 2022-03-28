extends Button

export(String) var scene_to_load

func _on_Correct_Answer():
	Global.increaseScore()
	
func _on_Incorrect_Answer():
	# Created for future use
	# To be completed at a later stage.
	pass
