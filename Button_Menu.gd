extends Button

export(String) var scene_to_load

func _on_Correct_Answer():
	Global.increaseScore()