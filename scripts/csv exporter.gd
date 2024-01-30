extends Button

var QRnum
var arr = [ ]
var TeamLength = 5
var offset = 3

func _ready():
	
	QRnum = get_node("/root/UserInput/QR_Number/QRnum")

func _on_pressed():
	
	var i = 0
	
	arr.push_back(str_to_var(QRnum.text.substr(0, TeamLength)))
	
	while (i * offset) + TeamLength < QRnum.text.length():
		
		arr.push_back(str_to_var(QRnum.text.substr((i * offset) + TeamLength, offset)))
		i += 1
	
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
	
	var file = FileAccess.open("user://export.csv", FileAccess.WRITE)
	file.store_string("ass")
