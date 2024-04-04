extends Node

signal nu

enum ModeMenu {
	
}

var DATA_GAME = {
	vida = 48,
	locate = {
		escene = "null",
		x = 0,
		y = 0,
	},
	inv = {
		consumible = [
			null
		],
		equipable = [
			{
				id = null,
				type = null,
			}
		]
	},
	equip = {
		attack = {
			id = null, 
			attack_bonus = null
		},
		defense = {
			id = null,
			defense = null
		}
	}
}

var UI_DATA_INT = {
	modeType = "MODE_WINDOWED"
}

var UI_DATA_GET = Addonsave.edit_data("ui_data", ".save")
func _ready():
	print("INICIADO VARIABLES")
	if UI_DATA_GET == {	}:
		get_window().mode = Window.MODE_WINDOWED
		print("NO_UI_DATA")
	else: 
		UI_DATA_INT = UI_DATA_GET
		var mode = UI_DATA_INT.modeType
		if mode == "MODE_WINDOWED":
			get_window().mode = Window.MODE_WINDOWED
		if mode == "MODE_FULLSCREEN":
			get_window().mode = Window.MODE_FULLSCREEN

func SetData(data): 
	print(data)
	DATA_GAME = data
	print('DATA')
	pass
