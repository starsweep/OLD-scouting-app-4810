extends Node

var tnum
var mnum
var alliance
var defense
var chainrobots
var aamp
var aspeaker
var amp
var source
var ground
var amplified
var speaker

func _ready():
	tnum = get_node("/root/UserInput/QR_Number/Tnum")
	mnum = get_node("/root/UserInput/QR_Number/Mnum")
	alliance = get_node("/root/UserInput/QR_Number/Alliance")
	defense = get_node("/root/UserInput/QR_Number/Defense_Rating")
	chainrobots = get_node("/root/UserInput/QR_Number/Robots_on_Chain")
	aamp = get_node("/root/UserInput/QR_Number/Aamp")
	aspeaker = get_node("/root/UserInput/QR_Number/Aspeaker")
	amp = get_node("/root/UserInput/QR_Number/Amp")
	source = get_node("/root/UserInput/QR_Number/Source_Intake")
	ground = get_node("/root/UserInput/QR_Number/Ground_Intake")
	amplified = get_node("/root/UserInput/QR_Number/Amplified")
	speaker = get_node("/root/UserInput/QR_Number/Speaker")

func _process(_delta):
	if tnum.text.length() > 5:
		tnum.text = ""
	if typeof(str_to_var(mnum.text)) == 2:
		if str_to_var(mnum.text) > 80:
			mnum.text = ""
	if alliance.text.length() > 4:
		alliance.text = ""
	if typeof(str_to_var(defense.text)) == 2:
		if str_to_var(defense.text) > 10:
			defense.text = ""
	if typeof(str_to_var(chainrobots.text)) == 2:
		if str_to_var(chainrobots.text) > 2:
			chainrobots.text = ""
	if tnum.text.contains("a") == true || tnum.text.contains("b") == true || tnum.text.contains("c") == true || tnum.text.contains("d") == true || tnum.text.contains("e") == true:
		tnum.text = ""
	elif tnum.text.contains("f") == true || tnum.text.contains("g") == true || tnum.text.contains("h") == true || tnum.text.contains("i") == true || tnum.text.contains("j") == true:
		tnum.text = ""
	elif tnum.text.contains("k") == true || tnum.text.contains("l") == true || tnum.text.contains("m") == true || tnum.text.contains("n") == true || tnum.text.contains("o") == true || tnum.text.contains("p") == true:
		tnum.text = ""
	elif tnum.text.contains("q") == true || tnum.text.contains("r") == true || tnum.text.contains("s") == true || tnum.text.contains("t") == true || tnum.text.contains("u") == true:
		tnum.text = ""
	elif tnum.text.contains("v") == true || tnum.text.contains("w") == true || tnum.text.contains("x") == true || tnum.text.contains("y") == true || tnum.text.contains("z") == true:
		tnum.text = ""
	elif tnum.text.contains("`") == true || tnum.text.contains("~") == true || tnum.text.contains("!") == true || tnum.text.contains("@") == true || tnum.text.contains("#") == true:
		tnum.text = ""
	elif tnum.text.contains("$") == true || tnum.text.contains("%") == true || tnum.text.contains("^") == true || tnum.text.contains("&") == true || tnum.text.contains("*") == true:
		tnum.text = ""
	elif tnum.text.contains("(") == true || tnum.text.contains(")") == true || tnum.text.contains("_") == true || tnum.text.contains("-") == true || tnum.text.contains("+") == true:
		tnum.text = ""
	elif tnum.text.contains("=") == true || tnum.text.contains("[") == true || tnum.text.contains("{") == true || tnum.text.contains("]") == true || tnum.text.contains("}") == true:
		tnum.text = ""
	elif tnum.text.contains("|") == true || tnum.text.contains(";") == true || tnum.text.contains(":") == true || tnum.text.contains("'") == true || tnum.text.contains("") == true:
		tnum.text = ""
	elif tnum.text.contains("<") == true || tnum.text.contains(",") == true || tnum.text.contains(">") == true || tnum.text.contains(".") == true || tnum.text.contains("?") == true || tnum.text.contains("/") == true:
		tnum.text = ""
	
	if mnum.text.contains("a") == true || mnum.text.contains("b") == true || mnum.text.contains("c") == true || mnum.text.contains("d") == true || mnum.text.contains("e") == true:
		mnum.text = ""
	elif mnum.text.contains("f") == true || mnum.text.contains("g") == true || mnum.text.contains("h") == true || mnum.text.contains("i") == true || mnum.text.contains("j") == true:
		mnum.text = ""
	elif mnum.text.contains("k") == true || mnum.text.contains("l") == true || mnum.text.contains("m") == true || mnum.text.contains("n") == true || mnum.text.contains("o") == true || mnum.text.contains("p") == true:
		mnum.text = ""
	elif mnum.text.contains("q") == true || mnum.text.contains("r") == true || mnum.text.contains("s") == true || mnum.text.contains("t") == true || mnum.text.contains("u") == true:
		mnum.text = ""
	elif mnum.text.contains("v") == true || mnum.text.contains("w") == true || mnum.text.contains("x") == true || mnum.text.contains("y") == true || mnum.text.contains("z") == true:
		mnum.text = ""
	elif mnum.text.contains("`") == true || mnum.text.contains("~") == true || mnum.text.contains("!") == true || mnum.text.contains("@") == true || mnum.text.contains("#") == true:
		mnum.text = ""
	elif mnum.text.contains("$") == true || mnum.text.contains("%") == true || mnum.text.contains("^") == true || mnum.text.contains("&") == true || mnum.text.contains("*") == true:
		mnum.text = ""
	elif mnum.text.contains("(") == true || mnum.text.contains(")") == true || mnum.text.contains("_") == true || mnum.text.contains("-") == true || mnum.text.contains("+") == true:
		mnum.text = ""
	elif mnum.text.contains("=") == true || mnum.text.contains("[") == true || mnum.text.contains("{") == true || mnum.text.contains("]") == true || mnum.text.contains("}") == true:
		mnum.text = ""
	elif mnum.text.contains("|") == true || mnum.text.contains(";") == true || mnum.text.contains(":") == true || mnum.text.contains("'") == true || mnum.text.contains("") == true:
		mnum.text = ""
	elif mnum.text.contains("<") == true || mnum.text.contains(",") == true || mnum.text.contains(">") == true || mnum.text.contains(".") == true || mnum.text.contains("?") == true || mnum.text.contains("/") == true:
		mnum.text = ""
	
	if chainrobots.text.contains("a") == true || chainrobots.text.contains("b") == true || chainrobots.text.contains("c") == true || chainrobots.text.contains("d") == true || chainrobots.text.contains("e") == true:
		chainrobots.text = ""
	elif chainrobots.text.contains("f") == true || chainrobots.text.contains("g") == true || chainrobots.text.contains("h") == true || chainrobots.text.contains("i") == true || chainrobots.text.contains("j") == true:
		chainrobots.text = ""
	elif chainrobots.text.contains("k") == true || chainrobots.text.contains("l") == true || chainrobots.text.contains("m") == true || chainrobots.text.contains("n") == true || chainrobots.text.contains("o") == true || chainrobots.text.contains("p") == true:
		chainrobots.text = ""
	elif chainrobots.text.contains("q") == true || chainrobots.text.contains("r") == true || chainrobots.text.contains("s") == true || chainrobots.text.contains("t") == true || chainrobots.text.contains("u") == true:
		chainrobots.text = ""
	elif chainrobots.text.contains("v") == true || chainrobots.text.contains("w") == true || chainrobots.text.contains("x") == true || chainrobots.text.contains("y") == true || chainrobots.text.contains("z") == true:
		chainrobots.text = ""
	elif chainrobots.text.contains("`") == true || chainrobots.text.contains("~") == true || chainrobots.text.contains("!") == true || chainrobots.text.contains("@") == true || chainrobots.text.contains("#") == true:
		chainrobots.text = ""
	elif chainrobots.text.contains("$") == true || chainrobots.text.contains("%") == true || chainrobots.text.contains("^") == true || chainrobots.text.contains("&") == true || chainrobots.text.contains("*") == true:
		chainrobots.text = ""
	elif chainrobots.text.contains("(") == true || chainrobots.text.contains(")") == true || chainrobots.text.contains("_") == true || chainrobots.text.contains("-") == true || chainrobots.text.contains("+") == true:
		chainrobots.text = ""
	elif chainrobots.text.contains("=") == true || chainrobots.text.contains("[") == true || chainrobots.text.contains("{") == true || chainrobots.text.contains("]") == true || chainrobots.text.contains("}") == true:
		chainrobots.text = ""
	elif chainrobots.text.contains("|") == true || chainrobots.text.contains(";") == true || chainrobots.text.contains(":") == true || chainrobots.text.contains("'") == true || chainrobots.text.contains("") == true:
		chainrobots.text = ""
	elif chainrobots.text.contains("<") == true || chainrobots.text.contains(",") == true || chainrobots.text.contains(">") == true || chainrobots.text.contains(".") == true || chainrobots.text.contains("?") == true || chainrobots.text.contains("/") == true:
		chainrobots.text = ""
	
	if defense.text.contains("a") == true || defense.text.contains("b") == true || defense.text.contains("c") == true || defense.text.contains("d") == true || defense.text.contains("e") == true:
		defense.text = ""
	elif defense.text.contains("f") == true || defense.text.contains("g") == true || defense.text.contains("h") == true || defense.text.contains("i") == true || defense.text.contains("j") == true:
		defense.text = ""
	elif defense.text.contains("k") == true || defense.text.contains("l") == true || defense.text.contains("m") == true || defense.text.contains("n") == true || defense.text.contains("o") == true || defense.text.contains("p") == true:
		defense.text = ""
	elif defense.text.contains("q") == true || defense.text.contains("r") == true || defense.text.contains("s") == true || defense.text.contains("t") == true || defense.text.contains("u") == true:
		defense.text = ""
	elif defense.text.contains("v") == true || defense.text.contains("w") == true || defense.text.contains("x") == true || defense.text.contains("y") == true || defense.text.contains("z") == true:
		defense.text = ""
	elif defense.text.contains("`") == true || defense.text.contains("~") == true || defense.text.contains("!") == true || defense.text.contains("@") == true || defense.text.contains("#") == true:
		defense.text = ""
	elif defense.text.contains("$") == true || defense.text.contains("%") == true || defense.text.contains("^") == true || defense.text.contains("&") == true || defense.text.contains("*") == true:
		defense.text = ""
	elif defense.text.contains("(") == true || defense.text.contains(")") == true || defense.text.contains("_") == true || defense.text.contains("-") == true || defense.text.contains("+") == true:
		defense.text = ""
	elif defense.text.contains("=") == true || defense.text.contains("[") == true || defense.text.contains("{") == true || defense.text.contains("]") == true || defense.text.contains("}") == true:
		defense.text = ""
	elif defense.text.contains("|") == true || defense.text.contains(";") == true || defense.text.contains(":") == true || defense.text.contains("'") == true || defense.text.contains("") == true:
		defense.text = ""
	elif defense.text.contains("<") == true || defense.text.contains(",") == true || defense.text.contains(">") == true || defense.text.contains(".") == true || defense.text.contains("?") == true || defense.text.contains("/") == true:
		defense.text = ""
	
	if typeof(str_to_var(tnum.text)) == 2:
		if str_to_var(tnum.text) < 0 || str_to_var(tnum.text) > 99:
			tnum.text = ""
	if typeof(str_to_var(mnum.text)) == 2:
		if str_to_var(mnum.text) < 0 || str_to_var(mnum.text) > 99:
			mnum.text = ""
	if typeof(str_to_var(chainrobots.text)) == 2:
		if str_to_var(chainrobots.text) < 0 || str_to_var(chainrobots.text) > 99:
			chainrobots.text = ""
	if typeof(str_to_var(defense.text)) == 2:
		if str_to_var(defense.text) < 0 || str_to_var(defense.text) > 99:
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
	if typeof(str_to_var(amplified.text)) == 2:
		if str_to_var(amplified.text) < 0 || str_to_var(amplified.text) > 99:
			amplified.text = "0"
	if typeof(str_to_var(speaker.text)) == 2:
		if str_to_var(speaker.text) < 0 || str_to_var(speaker.text) > 99:
			speaker.text = "0"
