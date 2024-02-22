extends Node

var counter
var currentvar

var tnum
var mnum
var defense
var chainrobots
var aamp
var aspeaker
var amp
var source
var ground
var amplified
var speaker
var aattempted
var ampatt
var speakeratt

func _ready():
	tnum = get_node("/root/UserInput/QR_Number/Tnum")
	mnum = get_node("/root/UserInput/QR_Number/Mnum")
	defense = get_node("/root/UserInput/QR_Number/Defense_Rating")
	chainrobots = get_node("/root/UserInput/QR_Number/Robots_on_Chain")
	aamp = get_node("/root/UserInput/QR_Number/Aamp")
	aspeaker = get_node("/root/UserInput/QR_Number/Aspeaker")
	amp = get_node("/root/UserInput/QR_Number/Amp")
	source = get_node("/root/UserInput/QR_Number/Source_Intake")
	ground = get_node("/root/UserInput/QR_Number/Ground_Intake")
	speaker = get_node("/root/UserInput/QR_Number/Speaker")
	aattempted = get_node("/root/UserInput/QR_Number/AAttempted")
	ampatt = get_node("/root/UserInput/QR_Number/Ampatt")
	speakeratt = get_node("/root/UserInput/QR_Number/Speakeratt")

func _process(_delta):
	
	counter = 4
	
	while counter > 0:
		
		if counter == 4:
			currentvar = tnum
		elif counter == 3:
			currentvar = mnum
		elif counter == 2:
			currentvar = chainrobots
		elif counter == 1:
			currentvar = defense
		
		if currentvar.text.contains("a") == true || currentvar.text.contains("b") == true || currentvar.text.contains("c") == true || currentvar.text.contains("d") == true || currentvar.text.contains("e") == true:
			currentvar.text = ""
		elif currentvar.text.contains("f") == true || currentvar.text.contains("g") == true || currentvar.text.contains("h") == true || currentvar.text.contains("i") == true || currentvar.text.contains("j") == true:
			currentvar.text = ""
		elif currentvar.text.contains("k") == true || currentvar.text.contains("l") == true || currentvar.text.contains("m") == true || currentvar.text.contains("n") == true || currentvar.text.contains("o") == true || currentvar.text.contains("p") == true:
			currentvar.text = ""
		elif currentvar.text.contains("q") == true || currentvar.text.contains("r") == true || currentvar.text.contains("s") == true || currentvar.text.contains("t") == true || currentvar.text.contains("u") == true:
			currentvar.text = ""
		elif currentvar.text.contains("v") == true || currentvar.text.contains("w") == true || currentvar.text.contains("x") == true || currentvar.text.contains("y") == true || currentvar.text.contains("z") == true:
			currentvar.text = ""
		elif currentvar.text.contains("`") == true || currentvar.text.contains("~") == true || currentvar.text.contains("!") == true || currentvar.text.contains("@") == true || currentvar.text.contains("#") == true:
			currentvar.text = ""
		elif currentvar.text.contains("$") == true || currentvar.text.contains("%") == true || currentvar.text.contains("^") == true || currentvar.text.contains("&") == true || currentvar.text.contains("*") == true:
			currentvar.text = ""
		elif currentvar.text.contains("(") == true || currentvar.text.contains(")") == true || currentvar.text.contains("_") == true || currentvar.text.contains("-") == true || currentvar.text.contains("+") == true:
			currentvar.text = ""
		elif currentvar.text.contains("=") == true || currentvar.text.contains("[") == true || currentvar.text.contains("{") == true || currentvar.text.contains("]") == true || currentvar.text.contains("}") == true:
			currentvar.text = ""
		elif currentvar.text.contains("|") == true || currentvar.text.contains(";") == true || currentvar.text.contains(":") == true || currentvar.text.contains("'") == true || currentvar.text.contains("") == true:
			currentvar.text = ""
		elif currentvar.text.contains("<") == true || currentvar.text.contains("\\") || currentvar.text.contains("\"") || currentvar.text.contains(",") == true || currentvar.text.contains(">") == true || currentvar.text.contains(".") == true || currentvar.text.contains("?") == true || currentvar.text.contains("/") == true:
			currentvar.text = ""
		
		counter -= 1
	
	if typeof(str_to_var(tnum.text)) == 2:
		if str_to_var(tnum.text) < 0 || str_to_var(tnum.text) > 99999:
			tnum.text = ""
	if typeof(str_to_var(mnum.text)) == 2:
		if str_to_var(mnum.text) < 0 || str_to_var(mnum.text) > 80:
			mnum.text = ""
	if typeof(str_to_var(chainrobots.text)) == 2:
		if str_to_var(chainrobots.text) < 0 || str_to_var(chainrobots.text) > 2:
			chainrobots.text = ""
	if typeof(str_to_var(defense.text)) == 2:
		if str_to_var(defense.text) < 0 || str_to_var(defense.text) > 10:
			defense.text = ""
	if typeof(str_to_var(aamp.text)) == 2:
		if str_to_var(aamp.text) < 0 || str_to_var(aamp.text) > 99:
			aamp.text = "0"
	if typeof(str_to_var(aspeaker.text)) == 2:
		if str_to_var(aspeaker.text) < 0 || str_to_var(aspeaker.text) > 99:
			aspeaker.text = "0"
	if typeof(str_to_var(amp.text)) == 2:
		if str_to_var(amp.text) < 0 || str_to_var(amp.text) > 99:
			amp.text = "0"
	if typeof(str_to_var(source.text)) == 2:
		if str_to_var(source.text) < 0 || str_to_var(source.text) > 99:
			source.text = "0"
	if typeof(str_to_var(ground.text)) == 2:
		if str_to_var(ground.text) < 0 || str_to_var(ground.text) > 99:
			ground.text = "0"
	if typeof(str_to_var(speaker.text)) == 2:
		if str_to_var(speaker.text) < 0 || str_to_var(speaker.text) > 99:
			speaker.text = "0"
	if typeof(str_to_var(aattempted.text)) == 2:
		if str_to_var(aattempted.text) < 0 || str_to_var(aattempted.text) > 99:
			aattempted.text = "0"
	if typeof(str_to_var(ampatt.text)) == 2:
		if str_to_var(ampatt.text) < 0 || str_to_var(ampatt.text) > 99:
			ampatt.text = "0"
	if typeof(str_to_var(speakeratt.text)) == 2:
		if str_to_var(speakeratt.text) < 0 || str_to_var(speakeratt.text) > 99:
			speakeratt.text = "0"
