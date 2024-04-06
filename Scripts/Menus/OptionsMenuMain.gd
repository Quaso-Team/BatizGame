extends Control

signal exit_vol_button
signal exit_menu
# Called when the node enters the scene tree for the first time.
@onready var FullWindow = $Panel/PanelContainer/CheckBox
func _ready():
	
	var mode = Variables.UI_DATA_GET
	print(mode)
	if mode == {	}:
		pass
	else:
		if mode.modeType == "MODE_FULLSCREEN":
			FullWindow.button_pressed = true
		if mode.modeType == "MODE_WINDOWED":
			FullWindow.button_pressed = false


func _on_check_box_toggled(toggled_on: bool):
	if toggled_on == true:
		const data = {
			modeType = "MODE_FULLSCREEN"
		}
		get_window().mode = Window.MODE_FULLSCREEN
		Addonsave.save_data(data, "ui_data", ".save")
	if toggled_on == false:
		const data = {
			modeType = "MODE_WINDOWED"
		}
		get_window().mode = Window.MODE_WINDOWED
		Addonsave.save_data(data, "ui_data", ".save")
	
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
	

