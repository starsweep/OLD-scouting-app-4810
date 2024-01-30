extends Node

var tnum
var mnum
var alliance
var defense
var chainrobots

func _ready():
	tnum = get_node("/root/UserInput/QR_Number/Tnum")
	mnum = get_node("/root/UserInput/QR_Number/Mnum")
	alliance = get_node("/root/UserInput/QR_Number/Alliance")
	defense = get_node("/root/UserInput/QR_Number/Defense_Rating")
	chainrobots = get_node("/root/UserInput/QR_Number/Robots_on_Chain")

func _process(delta):
	if tnum.text.length() > 5:
		tnum.text = ""
	if typeof(str_to_var(mnum.text)) == 2:
		if str_to_var(mnum.text) > 80 || mnum.text.length() > 2:
			mnum.text = ""
	if alliance.text.length() > 4:
		alliance.text = ""
	if typeof(str_to_var(defense.text)) == 2:
		if str_to_var(defense.text) > 10:
			defense.text = ""
	if typeof(str_to_var(chainrobots.text)) == 2:
		if str_to_var(chainrobots.text) > 2:
			chainrobots.text = ""
