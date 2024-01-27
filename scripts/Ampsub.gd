extends Node


var amp
func _ready():
	pass # Replace with function body.
	amp = get_node("/root/UserInput/QR_Number/Amp")

func _on_pressed():
	amp.text = str(str_to_var(amp.text) - 1)
