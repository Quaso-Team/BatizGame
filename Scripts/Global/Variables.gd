extends Node

signal nu

var OS_NAME = OS.get_name()
var isControl = false

var DATA_GAME = {
	vida = 48,
	locate = {
		escene = "null",
		x = 0,
		y = 0,
	},
	time = {
		hour = 07,
		minute = 00,
		seconds = 00,
		day = 00,
		mes = 01,
		year = 2024,
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

var CONFIG_DATA = {
	GRAPHICS = {
		WINDOW = {
			modeType = "MODE_WINDOWED"
		}
	},
	VOLUME = {
		Master = 1,
		Music = 1,
		Sfx = 1
	},
	GAME = {
		AUTOSAVE = {
			active = true,
			time = 300
		}
	}
}
var CONFIG_DATA_GET = Addonsave.edit_data_not_encrypt("game", ".config")
func _ready():
	print("INICIADO VARIABLES")
	if CONFIG_DATA_GET == {	}:
		get_window().mode = Window.MODE_WINDOWED
		print("NO CONFIG DATA")
	else: 
		CONFIG_DATA = CONFIG_DATA_GET
		var mode = CONFIG_DATA.GRAPHICS.WINDOW.modeType
		if mode == "MODE_WINDOWED":
			get_window().mode = Window.MODE_WINDOWED
		if mode == "MODE_FULLSCREEN":
			get_window().mode = Window.MODE_FULLSCREEN
			
	
func SetData(data): 
	print(data)
	DATA_GAME = data
	print('DATA')
	pass
