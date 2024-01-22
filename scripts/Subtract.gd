extends Button

var number
var num = int(number.text)
# Called when the node enters the scene tree for the first time.
func _ready():
	number = get_node("Number")
func pressed():
	num = num + 1
	number.text = str(num)
