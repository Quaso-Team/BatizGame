extends Node2D

var LastSlot = Addonsave.edit_data("last_slot", ".save")
var confirmStatus = false

@onready var Slot1Button = $Control/HBoxContainer/Slot1
@onready var Slot2Button = $Control/HBoxContainer/Slot2
@onready var Slot3Button = $Control/HBoxContainer/Slot3
@onready var DelButton1 = $Control/HBoxContainer2/DelButton1
@onready var DelButton2 = $Control/HBoxContainer2/DelButton2
@onready var DelButton3 = $Control/HBoxContainer2/DelButton3
@onready var time = $Timer
# Called when the node enters the scene tree for the first time.
func _ready():
	var Slot1 = Addonsave.edit_data("player_data_1", ".save")
	var Slot2 = Addonsave.edit_data("player_data_2", ".save")
	var Slot3 = Addonsave.edit_data("player_data_3", ".save")
	
	if Slot1 == {	}:
		print("DATA NOT FOUND")
		Slot1Button.disabled = false
		DelButton1.disabled = true
	else: 
		Slot1Button.disabled = true
		DelButton1.disabled = false
	if Slot2 == {	}:
		print("DATA NOT FOUND")
		Slot2Button.disabled = false
		DelButton2.disabled = true
	else: 
		Slot2Button.disabled = true
		DelButton2.disabled = false
	if Slot3 == {	}:
		print("DATA NOT FOUND")
		Slot3Button.disabled = false
		DelButton3.disabled = true
	else: 
		Slot3Button.disabled = true
		DelButton3.disabled = false
	
	pass # Replace with function body.

func _on_slot_1_button_down():
	get_tree().change_scene_to_file("res://Escenas/loading_start.tscn")
	var data = {
		vida = 48,
		locate = {
			escene = "cuarto_nataly",
			x = 0,
			y = 0,
		},
		inv = {
			consumible = [],
			equipable = [{}]
		},
		equip = {
			attack = {},
			defense = {}
		}
	}
	Addonsave.save_data(data, "player_data_1", ".save")
	Variables.SetData(data)
	Addonsave.save_data({ Id = 1 }, "last_slot", ".save")
	pass # Replace with function body.


func _on_slot_2_button_down():
	get_tree().change_scene_to_file("res://Escenas/loading_start.tscn")
	var data = {
		vida = 48,
		locate = {
			escene = "cuarto_nataly",
			x = 0,
			y = 0,
		},
		inv = {
			consumible = [],
			equipable = [{}]
		},
		equip = {
			attack = {},
			defense = {}
		}
	}
	Addonsave.save_data(data, "player_data_2", ".save")
	Variables.SetData(data)
	Addonsave.save_data({ Id = 2 }, "last_slot", ".save")
	pass # Replace with function body.


func _on_slot_3_button_down():
	get_tree().change_scene_to_file("res://Escenas/loading_start.tscn")
	var data = {
		vida = 48,
		locate = {
			escene = "cuarto_nataly",
			x = 0,
			y = 0,
		},
		inv = {
			consumible = [],
			equipable = [{}]
		},
		equip = {
			attack = {},
			defense = {}
		}
	}
	Addonsave.save_data(data, "player_data_3", ".save")
	Variables.SetData(data)
	Addonsave.save_data({ Id = 3 }, "last_slot", ".save")
	pass # Replace with function body.

@onready var popup = $ConfirmationDialog
func _on_del_button_1_button_down():
	popup.popup()
	time.start()
	await time.timeout
	if confirmStatus == true:
		Slot1Button.disabled = false
		DelButton1.disabled = true
		Addonsave.remove_data("player_data_1", ".save")
		if LastSlot.Id == 1:
			Addonsave.remove_data("last_slot", ".save")
	else: 
		null
		pass
	pass # Replace with function body.


func _on_del_button_2_button_down():
	Addonsave.remove_data("player_data_2", ".save")
	if LastSlot.Id == 2:
		Addonsave.remove_data("last_slot", ".save")
	Slot2Button.disabled = true
	DelButton2.disabled = true
	pass # Replace with function body.


func _on_del_button_3_button_down():
	
	Addonsave.remove_data("player_data_3", ".save")
	if LastSlot.Id == 3:
		Addonsave.remove_data("last_slot", ".save")
	Slot3Button.disabled = true
	DelButton3.disabled = true
	pass # Replace with function body.


func _on_confirmation_dialog_confirmed():
	print("BORRADO CONFIRMADO")
	confirmStatus = true
	pass # Replace with function body.


func _on_confirmation_dialog_canceled():
	var data = {
		locate = {
			escene = "NewGame"
		}
	}
	Variables.SetData(data)
	get_tree().change_scene_to_file("res://Escenas/loading_start.tscn")
	pass # Replace with function body.

func _input(event):
	
	pass
