extends Node2D

# Called when the node enters the scene tree for the first time.
@onready var button1 = $Control/VBoxContainer/TextureButton
func _ready():
	var lastSlot = Addonsave.edit_data("last_slot", ".save")
	if lastSlot == {	}:
		print("No data")
		button1.disabled = true
	pass # Replace with function body.
	
func _on_texture_button_button_down():
	var lastSlot = Addonsave.edit_data("last_slot", ".save")
	if lastSlot.Id == 1:
		var data = Addonsave.edit_data("player_data_1", ".save")
		Variables.SetData(data)
		get_tree().change_scene_to_file("res://Escenas/loading_start.tscn")
	pass # Replace with function body.


func _on_texture_button_2_button_down():
	get_tree().change_scene_to_file("res://Escenas/NewGame.tscn")
	pass # Replace with function body.


func _on_texture_button_3_button_down():
	print("Button3")
	pass # Replace with function body.


func _on_texture_button_4_button_down():
	print("Button4")
	pass # Replace with function body.


func _on_texture_button_5_button_down():
	print("Button5")
	pass # Replace with function body.


func _on_texture_button_6_button_down():
	get_tree().quit()
	pass # Replace with function body.
