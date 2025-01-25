extends Node

var speakeratt
var speaker
func _ready():
	speakeratt = get_node("/root/UserInput/QR_Number/Speakeratt")
	speaker = get_node("/root/UserInput/QR_Number/Speaker")

func _on_pressed():
	speaker.text = str(str_to_var(speaker.text) + 1)
