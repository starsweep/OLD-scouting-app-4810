extends Node

var tnum
# Called when the node enters the scene tree for the first time.
func _ready():
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	tnum = get_node("/root/UserInput/QR_Number/Tnum")
	
func _on_TextEdit_text_changed():
	if tnum.length() > 5:
		#Disable Typing
		tnum.text = tnum.left(tnum.length() - 1)
