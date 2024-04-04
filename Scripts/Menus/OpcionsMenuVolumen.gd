extends Control

signal exit_menu
signal exit_esc_menu
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

@onready var General = $"."
func _on_button_button_down():
	emit_signal("exit_menu")
	print('Regresando')
	General.hide()
	
	pass # Replace with function body.
	
func _input(event):
	if event.is_action_pressed("pause"):
		emit_signal("exit_esc_menu")
		General.hide()
		pass
