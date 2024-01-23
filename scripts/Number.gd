extends Label

var number
var team
var matchNum

func _ready():
	team = get_node("Tnum")
	matchNum = get_node("Mnum")
	number = team + matchNum
	text = number
