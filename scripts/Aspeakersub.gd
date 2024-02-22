extends Node

var aattempted
var aspeaker
func _ready():
	aspeaker = get_node("/root/UserInput/QR_Number/Aspeaker")
	aattempted = get_node("/root/UserInput/QR_Number/AAttempted")

func _on_pressed():
	aspeaker.text = str(str_to_var(aspeaker.text) - 1)
	aattempted.text = str(str_to_var(aattempted.text) - 1)
