extends Node


var aamp
func _ready():
	pass # Replace with function body.
	aamp = get_node("/root/UserInput/QR_Number/Aamp")

func _on_pressed():
	aamp.text = str(str_to_var(aamp.text) + 1)
