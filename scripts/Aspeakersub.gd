extends Node


var aspeaker
func _ready():
	pass # Replace with function body.
	aspeaker = get_node("/root/UserInput/QR_Number/Aspeaker")

func _on_pressed():
	aspeaker.text = str(str_to_var(aspeaker.text) - 1)
