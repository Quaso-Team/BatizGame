extends Node2D

# Called when the node enters the scene tree for the first time.
@onready var button1 = $Botones/VBoxContainer/TextureButton
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
	get_tree().change_scene_to_file("res://Escenas/LoadGame.tscn")
	pass # Replace with function body.
@onready var OptionsUI = $Control
@onready var botones = $Botones
@onready var VolOptionsUI = $Control2
func _on_texture_button_4_button_down():
	botones.hide()
	OptionsUI.show()
	print("Button4")
	pass # Replace with function body.
	

func _on_control_exit_vol_button():
	VolOptionsUI.show()
	pass # Replace with function body.

func _on_control_2_exit_menu():
	OptionsUI.show()
	pass # Replace with function body.

func _on_texture_button_5_button_down():
	print("Button5")
	pass # Replace with function body.

func _on_texture_button_6_button_down():
	get_tree().quit()
	pass # Replace with function body.
	
func _on_control_exit_menu():
	botones.show()
	pass # Replace with function body.

func _on_control_2_exit_esc_menu():
	OptionsUI.show()
	pass # Replace with function body.
@onready var SalidaLabel = $Saliendo___
@onready var Anime = $AnimationPlayer
@onready var time = $Timer
var TimerActive = false
var TimerSeconds = 0

func _process(delta):
	var active = Input.is_action_just_pressed("pause")
	var disable = Input.is_action_just_released("pause")
	
	if active:
		SalidaLabel.show()
		Anime.play("new_animation")
		time.start()
		await time.timeout
		get_tree().quit()
	if disable: 
		Anime.stop()
		time.stop()
		SalidaLabel.hide()
