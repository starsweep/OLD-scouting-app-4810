extends Label

var tnum
var QRnum
var mnum
var alliance
var alliance_text = "000"
var Aamp
var Aamp_text = "000"
var Aspeaker
var Aspeaker_text = "000"
var Aleft
var Aleft_text = "000"
var amp
var amp_text = "000"
var speaker
var speaker_text = "000"
var amplified
var amplified_text = "000"
var defense
var defense_text
var chainrobots
var chainrobots_text
var spotlit
var spotlit_text = "000"
var parked
var parked_text = "000"

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
	
func _process(_delta):
	defense_text = "00" + defense.text
	chainrobots_text = "00" + chainrobots.text
	if alliance.text.capitalize() == "R":
		alliance_text = "001"
	elif alliance.text.capitalize() == "B":
		alliance_text = "002"
	
	QRnum.text = tnum.text + mnum.text + alliance_text + Aamp_text
	#QRnum.text = QRnum.text + Aspeaker_text + Aleft_text + amp_text
	#QRnum.text = QRnum.text + speaker_text + amplified_text + defense_text
	#QRnum.text = QRnum.text + chainrobots.text # + spotlit_text + parked_text
