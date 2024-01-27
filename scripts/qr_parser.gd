extends Node

var text = "THIS IS YOUR STRING"
var arr = [ ]

var offset = 3
var teamlength = 5

func called():
	
	var i = 0
	
	arr.push_back(text.substr(teamlength, 0))
	
	while teamlength + (i * 3) < text.length():
		
		arr.push_back(text.substr(teamlength + (i * offset), offset))
		
		i += 1
