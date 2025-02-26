extends Label

var QRnum
var tnum
var tnum_text = "00000"
var mnum
var mnum_text = "000"
var alliance
var alliance_text = "001"
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
var trap
var trap_text = "000"
var aattempted
var aattempted_text = "000"
var ampatt
var ampatt_text = "000"
var speakeratt
var speakeratt_text = "000"
var coral4
var coral4_text = "000"
var num
var numtype

func _ready():
	tnum = get_node("/root/UserInput/QR_Number/Tnum")
	QRnum = get_node("/root/UserInput/QR_Number/QRnum")
	mnum = get_node("/root/UserInput/QR_Number/Mnum")
	alliance = get_node("/root/UserInput/QR_Number/AllianceToggle")
	Aamp = get_node("/root/UserInput/QR_Number/Aamp")
	Aspeaker = get_node("/root/UserInput/QR_Number/Aspeaker")
	Aleft = get_node("/root/UserInput/QR_Number/Area_left")
	amp = get_node("/root/UserInput/QR_Number/Amp")
	speaker = get_node("/root/UserInput/QR_Number/Speaker")
	defense = get_node("/root/UserInput/QR_Number/Defense_Rating")
	chainrobots = get_node("/root/UserInput/QR_Number/Robots_on_Chain")
	spotlit = get_node("/root/UserInput/QR_Number/Spotlit")
	parked = get_node("/root/UserInput/QR_Number/Parked") 
	source_intake = get_node("/root/UserInput/QR_Number/Source_Intake")
	ground_intake = get_node("/root/UserInput/QR_Number/Ground_Intake")
	trap = get_node("/root/UserInput/QR_Number/trap")
	aattempted = get_node("/root/UserInput/QR_Number/AAttempted")
	ampatt = get_node("/root/UserInput/QR_Number/Ampatt")
	speakeratt = get_node("/root/UserInput/QR_Number/Speakeratt")
	coral4 = get_node("/root/UserInput/QR_Number/coral4")

func _on_area_left_toggled(toggled_on):
	if toggled_on == true:
		Aleft_text = "001"
	elif toggled_on == false:
		Aleft_text = "000"
func _on_spotlit_toggled(toggled_on):
	if toggled_on == true:
		spotlit_text = "001"
		trap.disabled = true
		parked.disabled = true
	elif toggled_on == false:
		spotlit_text = "000"
		trap.disabled = false
		parked.disabled = false
func _on_parked_toggled(toggled_on):
	if toggled_on == true:
		parked_text = "001"
		trap.disabled = true
		spotlit.disabled = true
	elif toggled_on == false:
		parked_text = "000"
		trap.disabled = false
		spotlit.disabled = false
func _on_trap_toggled(toggled_on):
	if toggled_on == true:
		trap_text = "001"
		parked.disabled = true
		spotlit.disabled = true
	elif toggled_on == false:
		trap_text = "000"
		parked.disabled = false
		spotlit.disabled = false
func _on_alliance_toggle_toggled(toggled_on):
	if toggled_on == true:
		alliance_text = "002"
	elif toggled_on == false:
		alliance_text = "001"

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
	
	if chainrobots.text.length() > 1:
		chainrobots_text = "0" + chainrobots.text
	elif chainrobots.text.length() > 0:
		chainrobots_text = "00" + chainrobots.text
	
	if mnum.text.length() > 1:
		mnum_text = "0" + mnum.text
	elif mnum.text.length() > 0:
		mnum_text = "00" + mnum.text
	
	if Aamp.text.length() > 1:
		Aamp_text = "0" + Aamp.text
	elif Aamp.text.length() > 0:
		Aamp_text = "00" + Aamp.text
	
	if Aspeaker.text.length() > 1:
		Aspeaker_text = "0" + Aspeaker.text
	elif Aspeaker.text.length() > 0:
		Aspeaker_text = "00" + Aspeaker.text
	
	if amp.text.length() > 1:
		amp_text = "0" + amp.text
	elif amp.text.length() > 0:
		amp_text = "00" + amp.text
	
	if speaker.text.length() > 1:
		speaker_text = "0" + speaker.text
	elif speaker.text.length() > 0:
		speaker_text = "00" + speaker.text
	
	if Aleft.text.length() > 1:
		Aleft_text = "0" + Aleft.text
	elif Aleft.text.length() > 0:
		Aleft_text = "00" + Aleft.text
	
	if source_intake.text.length() > 1:
		source_text = "0" + source_intake.text
	elif source_intake.text.length() > 0:
		source_text = "00" + source_intake.text
	
	if ground_intake.text.length() > 1:
		ground_text = "0" + ground_intake.text
	elif ground_intake.text.length() > 0:
		ground_text = "00" + ground_intake.text
		
	if aattempted.text.length() > 1:
		aattempted_text = "0" + aattempted.text
	elif aattempted.text.length() > 0:
		aattempted_text = "00" + aattempted.text
		
	if ampatt.text.length() > 1:
		ampatt_text = "0" + ampatt.text
	elif ampatt.text.length() > 0:
		ampatt_text = "00" + ampatt.text
		
	if speakeratt.text.length() > 1:
		speakeratt_text = "0" + speakeratt.text
	elif speakeratt.text.length() > 0:
		speakeratt_text = "00" + speakeratt.text
		
	if coral4.text.length() > 1:
		coral4_text = "0" + coral4.text
	elif coral4.text.length() > 0:
		coral4_text = "00" + coral4.text
	
	QRnum.text = tnum_text + mnum_text + alliance_text + Aamp_text
	QRnum.text = QRnum.text + Aspeaker_text + amp_text
	QRnum.text = QRnum.text + speaker_text + defense_text
	QRnum.text = QRnum.text + chainrobots_text + spotlit_text + parked_text
	QRnum.text = QRnum.text + Aleft_text + ground_text + source_text + trap_text
	QRnum.text = QRnum.text + aattempted_text + ampatt_text + speakeratt_text
	QRnum.text = QRnum.text + coral4_text
