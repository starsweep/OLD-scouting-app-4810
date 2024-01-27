extends Node

var tnum

# Called when the node enters the scene tree for the first time.
func _ready():
	
	tnum = get_node("/root/UserInput/QR_Number/Tnum")
	

func _on_text_changed():
	if tnum.text.length() >= 5:
		#Disable Typing
		tnum.editable = false
