extends Node

var seconds := 00
var mins := 00
var hours := 6
var days := 05
var mounths := 02
var years := 0
var pause := false

@onready var timer = $Timer
func _on_timer_timeout():
	if pause == false:
		seconds = 1 + seconds
		if seconds == 60:
			seconds = 0
			mins = 1 + mins
		if mins == 60:
			mins = 0
			hours = 1 + hours
		if hours == 60:
			hours = 0
			mins = 0
			hours = 0
			days = days + 1
	
	print(hours, ":", mins, ":", seconds)
		
