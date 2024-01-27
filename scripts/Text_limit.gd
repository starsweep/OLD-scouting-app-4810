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
var source_intake
var ground_intake

func _ready():
	tnum = get_node("/root/UserInput/QR_Number/Tnum")
	mnum = get_node("/root/UserInput/QR_Number/Mnum")
	alliance = get_node("/root/UserInput/QR_Number/Alliance")
	Aamp = get_node("/root/UserInput/QR_Number/Aamp")
	Aspeaker = get_node("/root/UserInput/QR_Number/Aspeaker")
	amp = get_node("/root/UserInput/QR_Number/Amp")
	speaker = get_node("/root/UserInput/QR_Number/Speaker")
	amplified = get_node("/root/UserInput/QR_Number/Amplified")
	defense = get_node("/root/UserInput/QR_Number/Defense_Rating")
	chainrobots = get_node("/root/UserInput/QR_Number/Robots_on_Chain")
	source_intake = get_node("/root/UserInput/QR_Number/Source_Intake")
	ground_intake = get_node("/root/UserInput/QR_Number/Ground_Intake")

func _on_text_changed():
	if tnum.text.length() > 5:
		tnum.text = "0"
	if str_to_var(mnum.text) > 80:
		mnum.text = "0"
	if alliance.text.length() > 4:
		alliance.text = "0"
	if aamp.text.length() > 1:
		aamp.text = "0"
	if Aspeaker.text.length() > 1:
		Aspeaker.text = "0"
	if amp.text.length() > 2:
		amp.text = "0"
	if speaker.text.length() > 2:
		speaker.text = "0"
	if amplified.text.length() > 2:
		amplified.text = "0"
	if str_to_var(defense.text) > 10:
		defense.text = "0"
	if str_to_var(chainrobots.text) > 2:
		chainrobots.text = "0"
	if source_intake.text.length() > 2:
		source_intake.text = "0"
	if ground_intake.text.length() > 2:
		ground_intake.text = "0"
