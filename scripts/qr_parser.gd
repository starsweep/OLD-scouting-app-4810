extends Node

var text = "THIS IS YOUR STRING"
var arr = [ ]

var offset = 3

func called():
	
	var i = 0
	
	while i * 5 < text.length():
		arr.push_back( text.substr(i * offset, offset) )
		i += 1
