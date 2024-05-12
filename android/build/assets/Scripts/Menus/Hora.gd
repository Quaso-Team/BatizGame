extends Label

func _process(delta):
	var text1 = "Hora: {h}"
	var textF = text1.format({ "h": TimeSystem.get_date() })
	text = textF

