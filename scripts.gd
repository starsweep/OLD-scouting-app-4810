extends Button

var simultaneous_scene = preload("res://scenes/main_user_interface.tscn").instantiate()

func _on_pressed():
	get_tree().change_scene_to_file("res://scenes/main_user_interface.tscn")
