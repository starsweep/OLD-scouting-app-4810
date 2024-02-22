extends Node

var aattempted
var aamp
func _ready():
	aamp = get_node("/root/UserInput/QR_Number/Aamp")
	aattempted = get_node("/root/UserInput/QR_Number/AAttempted")

func _on_pressed():
	aamp.text = str(str_to_var(aamp.text) - 1)
	aattempted.text = str(str_to_var(aattempted.text) - 1)
