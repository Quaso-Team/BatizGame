extends Node
@onready var Pausa = $Pausa
@onready var Izquierda = $Node2D/Izquierda
@onready var Derecha = $Node2D/Derecha
@onready var Abajo = $Node2D/Abajo
@onready var Arriba = $Node2D/Arriba
@onready var Controls = $"."
@onready var Movimiento = $Node2D
@onready var Zoom = $Camera2D

func _ready():
	if Variables.OS_NAME == "Android" || Variables.OS_NAME == "IOS":
		print("MOBILE DEVICE")
		hide_controls_mobile()
	else:
		hide_controls_mobile()

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
		
func set_zoom(x: float, y: float) -> void:
	if x == y:
		match x:
			0.8:
				Pausa.position = Vector2(4,3)
				Movimiento.position = Vector2(-249,-52)
				Zoom.zoom = Vector2(0.8, 0.8)
			1:
				Pausa.position = Vector2(144,79)
				Movimiento.position = Vector2(-135,-121)
				Zoom.zoom = Vector2(1,1)
	else: 
		pass

func _on_pausa_pressed():
	Input.action_press("ui_home")

func _on_izquierda_pressed():
	Input.action_press("ui_left")

func _on_derecha_pressed():
	Input.action_press("ui_right")

func _on_abajo_pressed():
	Input.action_press("ui_down")

func _on_arriba_pressed():
	Input.action_press("ui_up")

func _on_pausa_released():
	Input.action_release("ui_home")

func _on_izquierda_released():
	Input.action_release("ui_left")

func _on_derecha_released():
	Input.action_release("ui_right")

func _on_abajo_released():
	Input.action_release("ui_down")

func _on_arriba_released():
	Input.action_release("ui_up")
