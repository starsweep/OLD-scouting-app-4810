extends Node

var data = "00000111222333444555"
var arr = [ ]
var i = 0
var letter_count = 3
var team_number = 5

#5 numbers at the start for the team, 3 number segments for information (starting with match number)

func enter_button_clicked():
	while team_number + (i * letter_count) < data.length():
		arr.push_back( data.substr(team_number + (i * letter_count), letter_count) )
		i += 1
