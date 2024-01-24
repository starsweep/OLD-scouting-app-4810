extends Label

var tnum
var QRnum
var mnum
var alliance
var Aamp
var Aspeaker
var Aleft
var Aleft_text
var amp
var speaker
var amplified
var defense
var chainrobots
var spotlit
var spotlit_text
var parked
var parked_text

func _ready():
	tnum = get_node("/root/UserInput/QR_Number/Tnum")
	QRnum = get_node("/root/UserInput/QR_Number/QRnum")
	mnum = get_node("/root/UserInput/QR_Number/Mnum")
	alliance = get_node("/root/UserInput/QR_Number/Alliance")
	Aamp = get_node("/root/UserInput/QR_Number/Auto_Amp_Score")
	Aspeaker = get_node("/root/UserInput/QR_Number/Auto_Speaker_Score")
	Aleft = get_node("/root/UserInput/QR_Number/Area_left")
	amp = get_node("/root/UserInput/QR_Number/Amp_Score")
	speaker = get_node("/root/UserInput/QR_Number/Speaker_Score")
	amplified = get_node("/root/UserInput/QR_Number/Amplified_Score")
	defense = get_node("/root/UserInput/QR_Number/Defense_Rating")
	chainrobots = get_node("/root/UserInput/QR_Number/Robots_on_Chain")
	spotlit = get_node("/root/UserInput/QR_Number/Spotlit")
	parked = get_node("/root/UserInput/QR_Number/Parked")
	if alliance.text == "red" || alliance.text == "Red":
		alliance.text = "001"
	if alliance.text == "blue" || alliance.text == "Blue":
		alliance.text = "002"
	defense.text = "00" + defense.text
	chainrobots.text = "00" + chainrobots.text
func _process(_delta):
	QRnum.text = tnum.text + mnum.text + alliance.text + Aamp.text + Aspeaker.text
	QRnum.text = QRnum.text + Aleft_text.text + amp.text + speaker.text + amplified.text
	QRnum.text = QRnum.text + defense.text + chainrobots.text + spotlit_text.text
	QRnum.text = QRnum.text + parked_text.text
