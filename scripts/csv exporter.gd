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
var ampspeaker
var defense
var chainbots
var spotlit
var parked
var leftstart
var source
var ground

var filename

func _ready():
	
	QRnum = get_node("/root/UserInput/QR_Number/QRnum")

func _on_pressed():
	
	var i = 0
	
	print(QRnum.text)
	
	arr.push_back(str_to_var(QRnum.text.substr(0, TeamLength)))
	
	print(arr.size())
	print(arr)
	
	while (i * offset) + TeamLength < QRnum.text.length():
		
		arr.push_back(str_to_var(QRnum.text.substr((i * offset) + TeamLength, offset)))
		i += 1
		
		print(arr.size())
		print(arr)
	
	tnum = var_to_str(arr.pop_front())
	mnum = var_to_str(arr.pop_front())
	alliance = var_to_str(arr.pop_front())
	aamp = var_to_str(arr.pop_front())
	aspeaker = var_to_str(arr.pop_front())
	tamp = var_to_str(arr.pop_front())
	tspeaker = var_to_str(arr.pop_front())
	ampspeaker = var_to_str(arr.pop_front())
	defense = var_to_str(arr.pop_front())
	chainbots = var_to_str(arr.pop_front())
	spotlit = var_to_str(arr.pop_front())
	parked = var_to_str(arr.pop_front())
	leftstart = var_to_str(arr.pop_front())
	source = var_to_str(arr.pop_front())
	ground = var_to_str(arr.pop_front())
	
	#--------------------
	# Array slot legend: 
	# 0 - team number
	# 1 - match number
	# 2 - alliance (001 = red, 002 = blue)
	# 3 - auton amp scores
	# 4 - auton speaker scores
	# 5 - tele-op amp scores
	# 6 - tele-op speaker scores
	# 7 - amped speaker scores
	# 8 - defense score (subjective)
	# 9 - bots on chain (number)
	#10 - spotlit (001 = on, 000 = off)
	#12 - parked (001 = yes, 000 = no)
	#13 - Left starting area in auton (001 = yes, 000 = no)
	#14 - Notes collected from source
	#15 - notes collected from ground
	#--------------------
	
	filename = "res://team_" + tnum + "_match_" + "mnum" + ".csv"
	
	print(filename)
	
	var file = FileAccess.open(filename, FileAccess.WRITE)
	
	file.store_string(tnum + ", " + "mnum")
