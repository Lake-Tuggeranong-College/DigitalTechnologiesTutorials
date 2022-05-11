extends Node2D

func _ready():
	for button in $VBoxContainer/Levels.get_children():
		button.connect("pressed", self, "_on_Button_pressed", [button.scene_to_load])
		button.connect("button_down", self, "_clicked", [button.topicname])

func _on_Button_pressed(scene_to_load):
	print("Changing Scene...")
	print(scene_to_load)
	$AudioStreamPlayer.play()
	yield(get_tree().create_timer(0.5), "timeout")
	get_tree().change_scene(scene_to_load)


func _on_Topic_pressed():
	$AudioStreamPlayer.play()

func _clicked(topicname):
	Global.topic = topicname

