extends Node

var tnum
var mnum
var alliance
var Aamp
var aamp
var Aspeaker
var Aleft
var amp
var speaker
var amplified
var defense
var chainrobots

func _ready():
	tnum = get_node("/root/UserInput/QR_Number/Tnum")
	mnum = get_node("/root/UserInput/QR_Number/Mnum")
	alliance = get_node("/root/UserInput/QR_Number/Alliance")
	Aamp = get_node("/root/UserInput/QR_Number/Auto_Amp_Score")
	Aspeaker = get_node("/root/UserInput/QR_Number/Auto_Speaker_Score")
	amp = get_node("/root/UserInput/QR_Number/Amp_Score")
	speaker = get_node("/root/UserInput/QR_Number/Speaker_Score")
	amplified = get_node("/root/UserInput/QR_Number/Amplified_Score")
	defense = get_node("/root/UserInput/QR_Number/Defense_Rating")
	chainrobots = get_node("/root/UserInput/QR_Number/Robots_on_Chain")
	#aamp = str(Aamp)

func _on_text_changed():
	if tnum.text.length() > 5:
		tnum.text = ""
	if typeof(str_to_var(mnum.text)) == 2:
		if str_to_var(mnum.text) > 80:
			tnum.text = ""
	if alliance.text.length() > 4:
		tnum.text = ""
	#if aamp.text.length() > 1:
	#	tnum.text = ""
	"""
	if Aspeaker.text.length() > 1:
		tnum.text = ""
	if amp.text.length() > 2:
		tnum.text = ""
	if speaker.text.length() > 2:
		tnum.text = ""
	if amplified.text.length() > 2:
		tnum.text = ""
	if str_to_var(defense.text) > 10:
		tnum.text = ""
	if str_to_var(chainrobots.text) > 2:
		tnum.text = ""
	"""
