extends Node
@onready var Pausa = $UI/Pausa
@onready var Izquierda = $UI/Node2D/Izquierda
@onready var Derecha = $UI/Node2D/Derecha
@onready var Abajo = $UI/Node2D/Abajo
@onready var Arriba = $UI/Node2D/Arriba
@onready var Controls = $"."
@onready var Movimiento = $UI/Node2D
@onready var Zoom = $Camera2D

signal move

func _ready():
	Pausa.hide()
	Movimiento.hide()

func hide_controls_mobile() -> void:
	Pausa.hide()
	Movimiento.hide()
	print("CONTROLS HIDE")
	
func show_controls_mobile() -> void:
	if Variables.OS_NAME == "Android" || Variables.OS_NAME == "IOS":
		Pausa.show()
		Movimiento.show()
	else:
		print("Only Mobile Devices")


func _on_joystick_data_move(direccion):
	emit_signal("move", direccion)
