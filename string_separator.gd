extends Node

var text = "THIS IS YOUR STRING"
var arr = [ ]
var i = 0
var letter_count = 3

func enter_button_clicked():
	while i * letter_count < text.length():
		arr.push_back( text.substr(i * letter_count, letter_count) )
		i += 1
