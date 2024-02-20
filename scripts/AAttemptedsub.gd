extends Node


var aattempted
func _ready():
	aattempted = get_node("/root/UserInput/QR_Number/AAttempted")

func _on_pressed():
	aattempted.text = str(str_to_var(aattempted.text) - 1)
