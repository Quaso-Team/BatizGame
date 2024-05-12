extends Node

signal second_pass

var seconds := 00
var mins := 55
var hours := 6
var days := 05
var mounths := 02
var years := 0
var pause = true
var string_parts = []

enum day_name {
	MONDAY = 1,
	TUESDAY = 2,
	WEDNESDAY = 3,
	THURSDAY = 4,
	FRIDAY = 5,
	SATURDAY = 6,
	SUNDAY = 7
}

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
		match mounths:
			1:
				if days > 31:
					mounths = mounths + 1
					days = 1
			2:
				var bisiesto = year_bisiesto(years)
				if bisiesto == true:
					if days > 29:
						mounths = mounths + 1
						days = 1
				else:
					if days > 28:
						mounths = mounths + 1
						days = 1
			3:
				if days > 31:
					mounths = mounths + 1
					days = 1
			4:
				if days > 30:
					mounths = mounths + 1
					days = 1
			5:
				if days > 31:
					mounths = mounths + 1
					days = 1
			6:
				if days > 30:
					mounths = mounths + 1
					days = 1
			7:
				if days > 31:
					mounths = mounths + 1
					days = 1
			8:
				if days > 31:
					mounths = mounths + 1
					days = 1
			9:
				if days > 30:
					mounths = mounths + 1
					days = 1
			10: 
				if days > 31:
					mounths = mounths + 1
					days = 1
			11:
				if days > 30:
					mounths = mounths + 1
					days = 1
			12:
				if days > 31:
					mounths = mounths + 1
					days = 1
	
func year_bisiesto(year: int) -> bool:
	if year % 4 != 0:
		return false
	if year % 100 != 0:
		return false
		
	return true
	
func get_date() -> String:
	var hour_string = String.num(hours)
	var mins_string = String.num(mins)
	
	if hours <= 9:
		hour_string = "0{number}"
		hour_string = hour_string.format({ "number": String.num(hours)})
	if mins <= 9:
		mins_string = "0{number}"
		mins_string = mins_string.format({ "number": String.num(mins)})
	
	var text = "{hour}:{min}"
	var textFinal = text.format({ "hour": hour_string, "min": mins_string})
	
	emit_signal("second_pass")
	
	return textFinal
