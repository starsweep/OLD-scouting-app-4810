extends Node

var ampatt
func _ready():
	ampatt = get_node("/root/UserInput/QR_Number/Ampatt")

func _on_pressed():
	ampatt.text = str(str_to_var(ampatt.text) + 1)
