extends Label

var tnum
var QRnum

func _ready():
	tnum = get_node("/root/UserInput/QR_Number/Tnum")
	QRnum = get_node("/root/UserInput/QR_Number/QRnum")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	QRnum.text = (tnum.text)
