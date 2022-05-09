extends Node2D

func _ready():
	for button in $VBoxContainer/Levels.get_children():
		button.connect("pressed", self, "_on_Button_pressed", [button.scene_to_load, button.topicname])


func _on_Button_pressed(scene_to_load, topicname):
	get_tree().change_scene(scene_to_load)
	Global.topic = topicname
	print(topicname)
