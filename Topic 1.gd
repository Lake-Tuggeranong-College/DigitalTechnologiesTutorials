extends Button

var simultaneous_scene = preload("res://Topic_1.tscn").instance()

func _add_a_scene_manually():
	# This is like autoloading the scene, only
	# it happens after already loading the main scene.
	get_tree().get_root().add_child(simultaneous_scene)
