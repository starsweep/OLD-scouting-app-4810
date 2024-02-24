extends Button

var QRnum
var arr = [ ]
var TeamLength = 5
var offset = 3

var tnum
var mnum
var alliance
var aamp
var aspeaker
var tamp
var tspeaker
var defense
var chainbots
var spotlit
var parked
var leftstart
var source
var ground
var trap
var aattempted
var ampatt
var speakeratt

var mobile_storage_path = "/storage/emulated/Documents/"
var tablet_storage_path = "/storage/self/primary/Documents/"
var testing_storage_path = "res://csv_exports/"

var current_os

var filename
var contents

var line = "\n"
var listpos = 0

func _ready():
	
	QRnum = get_node("/root/UserInput/QR_Number/QRnum")

func _on_pressed():
	
	print(QRnum.text)
	
	var i = 0
	
	arr.push_back(str_to_var(QRnum.text.substr(0, TeamLength)))
	
	while (i * offset) + TeamLength < QRnum.text.length():
		
		arr.push_back(str_to_var(QRnum.text.substr((i * offset) + TeamLength, offset)))
		i += 1
	
	tnum = var_to_str(arr.pop_front())
	mnum = var_to_str(arr.pop_front())
	alliance = var_to_str(arr.pop_front())
	aamp = var_to_str(arr.pop_front())
	aspeaker = var_to_str(arr.pop_front())
	tamp = var_to_str(arr.pop_front())
	tspeaker = var_to_str(arr.pop_front())
	defense = var_to_str(arr.pop_front())
	chainbots = var_to_str(arr.pop_front())
	spotlit = var_to_str(arr.pop_front())
	parked = var_to_str(arr.pop_front())
	leftstart = var_to_str(arr.pop_front())
	ground = var_to_str(arr.pop_front())
	source = var_to_str(arr.pop_front())
	trap = var_to_str(arr.pop_front())
	aattempted = var_to_str(arr.pop_front())
	ampatt = var_to_str(arr.pop_front())
	speakeratt = var_to_str(arr.pop_front())
	
	"""
	Array slot legend: 
	0 - team number
	1 - match number
	2 - alliance (001 = red, 002 = blue)
	3 - auton amp scores
	4 - auton speaker scores
	5 - tele-op amp scores
	6 - tele-op speaker scores
	7 - defense score (subjective)
	8 - bots on chain (number)
	9 - spotlit (001 = on, 000 = off)
	10 - parked (001 = yes, 000 = no)
	11 - Left starting area in auton (001 = yes, 000 = no)
	12 - Notes collected from source
	13 - notes collected from ground
	14 - note put in trap
	15 - auton scores attempted
	16 - amp scores attempted
	17 - speaker scores attempted
	"""
	
	if alliance == "1":
		alliance = "Red"
	elif alliance == "2":
		alliance = "Blue"
	
	if spotlit == "1":
		spotlit = "Yes"
	elif spotlit == "0":
		spotlit = "No"
	
	if parked == "1":
		parked = "Yes"
	elif parked == "0":
		parked = "No"
	
	if leftstart == "1":
		leftstart = "Yes"
	elif leftstart == "0":
		leftstart = "No"
	
	if trap == "1":
		trap = "Yes"
	elif trap == "2":
		trap = "No"
	#-----Detect OS-------------------------------
	
	match OS.get_name():
		"Windows":
			current_os = "Windows"
		"macOS":
			current_os = "macOS"
		"Linux", "FreeBSD", "NetBSD", "OpenBSD", "BSD":
			current_os = "Linux"
		"Android":
			current_os = "Android"
		"iOS":
			current_os = "iOS"
		"Web":
			current_os = "Web"
	
	#---------------------------------------------
	#ex.) team_4810_match_1.csv
	filename = tablet_storage_path + "team_" + tnum + "_match_" + mnum + ".csv"
	
	var file = FileAccess.open(filename, FileAccess.WRITE)
	
	contents = "Team,Match,Alliance,Auto Left Start,Auto Amp,Auto Speaker,Auto Shots Attempted,Tele-op Amp,Tele-op Amp Attempted,Tele-op Speaker,Tele-op Speaker Attempted,Source Pickup,Ground Pickup,Parked,Spotlit,On Chain,Trap Scored,Defense" + "
" + tnum + "," + mnum + "," + alliance + "," + leftstart + "," + aamp + "," + aspeaker + "," + aattempted + "," + tamp + "," + ampatt + "," + tspeaker + "," + speakeratt + "," + source + "," + ground + "," + parked + "," + spotlit + "," + chainbots  + "," + trap + "," + defense
	
	file.store_string(contents)
