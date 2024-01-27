extends Node


var source
func _ready():
	pass # Replace with function body.
	source = get_node("/root/UserInput/QR_Number/Source_Intake")

func _on_pressed():
	source.text = str(str_to_var(source.text) + 1)
