extends Node2D
var topicn = []
export var stage = 1
var topic = Global.topic
var csv = "res://Number systems/Q1.csv"

func _ready():
	for button in $VBoxContainer/Navigation/Buttons.get_children():
		button.connect("pressed", self, "_on_Button_pressed", [button.scene_to_load])
	for button in $VBoxContainer/Main/questionAnswer/Answers.get_children():
		button.connect("pressed", self, "_on_Button_pressed", [button.scene_to_load])
	load_csv()
	
	# Update the UI with the current Score
	$VBoxContainer/Navigation/Label.text = str(Global.playerScore)

func _on_Button_pressed(scene_to_load):
	print(topic)
	get_tree().change_scene(scene_to_load)



func _on_Incorrect_Answer():
	pass # Replace with function body.

func load_csv():
	if get_tree().get_current_scene().get_name() == "Quiz":
		var file = File.new()
		file.open(csv, file.READ)
		while !file.eof_reached():
			var q = file.get_csv_line()
			if (q.size() > 2):
				if (q[0] == "NS" and int(q[1]) == stage):
					topicn.append(q)
					$VBoxContainer/Main/questionAnswer/Example_Question.text = String(topicn[0][2])
					$VBoxContainer/Main/questionAnswer/Answers/Button.text = String(topicn[0][3])
					$VBoxContainer/Main/questionAnswer/Answers/Button2.text = String(topicn[0][4])
					$VBoxContainer/Main/questionAnswer/Answers/Button3.text = String(topicn[0][5])
					$VBoxContainer/Main/questionAnswer/Answers/Button4.text = String(topicn[0][6])
				
					print(topic)
		file.close()
#	print(get_tree().get_current_scene().get_name())
