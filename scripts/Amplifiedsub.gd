extends Node


var amplified
func _ready():
	pass # Replace with function body.
	amplified = get_node("/root/UserInput/QR_Number/Amplified")

func _on_pressed():
	amplified.text = str(str_to_var(amplified.text) - 1)
