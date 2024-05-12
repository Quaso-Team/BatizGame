extends Control

signal exit_vol_button
signal exit_menu
# Called when the node enters the scene tree for the first time.
@onready var FullWindow = $Panel/PanelContainer/CheckBox
func _ready():
	var mode = Variables.CONFIG_DATA.GRAPHICS.WINDOW.modeType
	print(mode)
	if mode == "MODE_FULLSCREEN":
		FullWindow.button_pressed = true
	if mode == "MODE_WINDOWED":
		FullWindow.button_pressed = false


func _on_check_box_toggled(toggled_on: bool):
	if toggled_on == true:
		Variables.CONFIG_DATA.GRAPHICS.WINDOW.modeType = "MODE_FULLSCREEN"
		get_window().mode = Window.MODE_FULLSCREEN
		Addonsave.save_data_not_encrypt(Variables.CONFIG_DATA, "game", ".config")
	if toggled_on == false:
		Variables.CONFIG_DATA.GRAPHICS.WINDOW.modeType = "MODE_WINDOWED"
		get_window().mode = Window.MODE_WINDOWED
		Addonsave.save_data_not_encrypt(Variables.CONFIG_DATA, "game", ".config")
	
@onready var ControlG = $"."
func _on_button_button_down():
	emit_signal("exit_vol_button")
	print("Salida_Volumen")
	ControlG.hide()
	pass # Replace with function body.
	
func _input(event):
	if event.is_action_pressed("pause"):
		emit_signal('exit_menu')
		ControlG.hide()
		pass
	

