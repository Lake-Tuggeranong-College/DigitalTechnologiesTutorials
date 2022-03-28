extends Node2D

func _ready():
	for button in $VBoxContainer/Navigation/Buttons.get_children():
		button.connect("pressed", self, "_on_Button_pressed", [button.scene_to_load])
	for button in $VBoxContainer/Main/questionAnswer/Answers.get_children():
		button.connect("pressed", self, "_on_Button_pressed", [button.scene_to_load])
	
	
	# Update the UI with the current Score
	$VBoxContainer/Navigation/Label.text = str(Global.playerScore)

func _on_Button_pressed(scene_to_load):
	print("Changing Scene...")
	print(scene_to_load)
	get_tree().change_scene(scene_to_load)



func _on_Correct_Answer():
	Global.increaseScore()
