extends Node

var ampatt
var amp
func _ready():
	ampatt = get_node("/root/UserInput/QR_Number/Ampatt")
	amp = get_node("/root/UserInput/QR_Number/Amp")

func _on_pressed():
	amp.text = str(str_to_var(amp.text) + 1)
