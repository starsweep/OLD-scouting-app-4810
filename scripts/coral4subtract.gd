extends Node

var coral4
func _ready():
	coral4 = get_node("/root/UserInput/QR_Number/coral4")

func _on_pressed():
	coral4.text = str(str_to_var(coral4.text) + 1)
