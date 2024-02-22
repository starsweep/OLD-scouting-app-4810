extends Node

var speakeratt
func _ready():
	speakeratt = get_node("/root/UserInput/QR_Number/Speakeratt")

func _on_pressed():
	speakeratt.text = str(str_to_var(speakeratt.text) + 1)
