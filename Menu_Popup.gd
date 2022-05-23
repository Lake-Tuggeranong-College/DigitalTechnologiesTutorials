extends Node

func _ready():
	self.visible = 1
	get_tree().paused = true

func _on_Try_Again():
	self.visible = 0
	get_tree().paused = false
