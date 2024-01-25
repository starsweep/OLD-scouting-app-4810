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
var num
var numtype
var output = "fallthrough error"

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
#Team Number 
	num = str_to_var(tnum.text)
	numtype = typeof(num)
	
	print(var_to_str(numtype))
	
	if numtype == 2:
		if num < 10:
			output = "0000" + tnum.text
		elif num < 100:
			output = "000" + tnum.text
		elif num < 1000:
			output = "00" + tnum.text
		elif num < 10000:
			output = "0" + tnum.text
		elif num < 100000:
			output = tnum.text
		else:
			output = "overflow error"
	
	# some other shit
	defense_text = "00" + defense.text
	chainrobots_text = "00" + chainrobots.text
	if alliance.text.capitalize() == "R":
		alliance_text = "001"
	elif alliance.text.capitalize() == "B":
		alliance_text = "002"
	
	QRnum.text = output + mnum.text + alliance_text + Aamp_text
	#QRnum.text = QRnum.text + Aspeaker_text + Aleft_text + amp_text
	#QRnum.text = QRnum.text + speaker_text + amplified_text + defense_text
	#QRnum.text = QRnum.text + chainrobots.text # + spotlit_text + parked_text
