extends Node

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

func _ready():
	
	print("INICIADO VARIABLES")
	pass

func SetData(data): 
	print(data)
	DATA_GAME = data
	print('DATA')
	pass
