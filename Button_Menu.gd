extends Button

export(String) var scene_to_load
var incorrectCounter = 0


var mouse_sound_effect = load("res://Music/Mouse Click - Sound Effect (HD).wav")

func _on_Correct_Answer():
	Global.increaseScore(Global.scoreMultiplier[incorrectCounter])
	# $Music.stream = mouse_sound_effect
	# $Music.play()

func _on_Incorrect_Answer():
	incorrectCounter += 1
	print("Incorrect Answer")
	#Global.increaseScore(Global.scoreMultiplier[incorrectCounter-1])


# func button pressed():
	# pass # 
	# $mouse_sound_effect.play

