extends Button

export(String) var scene_to_load
export(int) var array_pos

var mouse_sound_effect = load("res://Music/Mouse Click - Sound Effect (HD).wav")
var popup = preload("res://Popup_menu.tscn")
var pop_loc = Vector2(-300,-100)

func _on_Correct_Answer():
	print(array_pos)
	if Global.answered[array_pos] == 0 :
		Global.increaseScore(Global.scoreMultiplier[Global.incorrectCounter])
		Global.incorrectCounter = 0
		Global.answered[array_pos] == 1
	else:
		Global.incorrectCounter = 0
	print("Changing Scene...2")
	print(scene_to_load)
	get_tree().change_scene(scene_to_load)

func _on_Incorrect_Answer():
	print(Global.incorrectCounter)
	Global.incorrectCounter += 1
	#Global.increaseScore(Global.scoreMultiplier[incorrectCounter-1])
	var pop = popup.instance()
	pop.set_position(pop_loc)
	add_child(pop)
	print("Incorrect Answer")

func _on_Topic_pressed():
	$AudioStreamPlayer.play()



# func button pressed():
	# pass # 
	# $mouse_sound_effect.play




