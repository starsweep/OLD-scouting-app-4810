extends Node


var speaker
func _ready():
	pass # Replace with function body.
	speaker = get_node("/root/UserInput/QR_Number/Speaker")

func _on_pressed():
	speaker.text = str(str_to_var(speaker.text) - 1)
