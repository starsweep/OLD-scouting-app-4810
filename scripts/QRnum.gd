extends Label

var QRnum
var tnum
var tnum_text = "00000"
var mnum
var mnum_text = "000"
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
var defense_text = "000"
var chainrobots
var chainrobots_text = "000"
var spotlit
var spotlit_text = "000"
var parked
var parked_text = "000"
var source_intake
var source_text = "000"
var ground_intake
var ground_text = "000"
var num
var numtype

func _ready():
	tnum = get_node("/root/UserInput/QR_Number/Tnum")
	QRnum = get_node("/root/UserInput/QR_Number/QRnum")
	mnum = get_node("/root/UserInput/QR_Number/Mnum")
	alliance = get_node("/root/UserInput/QR_Number/Alliance")
	Aamp = get_node("/root/UserInput/QR_Number/Aamp")
	Aspeaker = get_node("/root/UserInput/QR_Number/Aspeaker")
	Aleft = get_node("/root/UserInput/QR_Number/Area_left")
	amp = get_node("/root/UserInput/QR_Number/Amp")
	speaker = get_node("/root/UserInput/QR_Number/Speaker")
	amplified = get_node("/root/UserInput/QR_Number/Amplified")
	defense = get_node("/root/UserInput/QR_Number/Defense_Rating")
	chainrobots = get_node("/root/UserInput/QR_Number/Robots_on_Chain")
	spotlit = get_node("/root/UserInput/QR_Number/Spotlit")
	parked = get_node("/root/UserInput/QR_Number/Parked") 
	source_intake = get_node("/root/UserInput/QR_Number/Source_Intake")
	ground_intake = get_node("/root/UserInput/QR_Number/Ground_Intake")

func _on_area_left_toggled(toggled_on):
	if toggled_on == true:
		Aleft_text = "001"
	elif toggled_on == false:
		Aleft_text = "000"
func _on_spotlit_toggled(toggled_on):
	if toggled_on == true:
		spotlit_text = "001"
	elif toggled_on == false:
		spotlit_text = "000"
func _on_parked_toggled(toggled_on):
	if toggled_on == true:
		parked_text = "001"
	elif toggled_on == false:
		parked_text = "000"

func _process(_delta):
#Team Number 
	num = str_to_var(tnum.text)
	numtype = typeof(num)
	
	if numtype == 2:
		if tnum.text.length() < 2:
			tnum_text = "0000" + tnum.text
		elif tnum.text.length() < 3:
			tnum_text = "000" + tnum.text
		elif tnum.text.length() < 4:
			tnum_text = "00" + tnum.text
		elif tnum.text.length() < 5:
			tnum_text = "0" + tnum.text
		elif tnum.text.length() < 6:
			tnum_text = tnum.text
		else:
			tnum_text = "overflow error"
	
	# some other stuff
	if defense.text.length() > 1:
		defense_text = "0" + defense.text
	elif defense.text.length() > 0:
		defense_text = "00" + defense.text
	chainrobots_text = "00" + chainrobots.text
	if mnum.text.length() > 1:
		mnum_text = "0" + mnum.text
	elif mnum.text.length() > 0:
		mnum_text = "00" + mnum.text
	if alliance.text.capitalize() == "R":
		alliance_text = "001"
	elif alliance.text.capitalize() == "B":
		alliance_text = "002"
	if source_intake.text.length() > 1:
		source_text = "0" + source_intake.text
	elif source_intake.text.length() > 0:
		source_text = "00" + source_intake.text
	if ground_intake.text.length() > 1:
		ground_text = "0" + ground_intake.text
	elif ground_intake.text.length() > 0:
		ground_text = "00" + ground_intake.text
	
	QRnum.text = tnum_text + mnum_text + alliance_text + Aamp_text
	QRnum.text = QRnum.text + Aspeaker_text + amp_text
	QRnum.text = QRnum.text + speaker_text + amplified_text + defense_text
	QRnum.text = QRnum.text + chainrobots_text + spotlit_text + parked_text
	QRnum.text = QRnum.text + Aleft_text + source_text + ground_text
