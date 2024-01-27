extends Node


var ground
func _ready():
	pass # Replace with function body.
	ground = get_node("/root/UserInput/QR_Number/Ground_Intake")

func _on_pressed():
	ground.text = str(str_to_var(ground.text) - 1)
