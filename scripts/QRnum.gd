extends Label


var tnum
var QRnum
func _ready():
	tnum = get_node("Tnum")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	QRnum.text = tnum
