extends Node
var notPause = true
var pauseIsActive = false

@onready var Parent = $"."
# Called when the node enters the scene tree for the first time.
func _ready():
	print("Pausa activa")
	Parent.hide()
	
@onready var PersonajesPanel = $Panel/PanelContainer/Personajes
@onready var ObjetosPanel = $Panel/PanelContainer/Objetos
@onready var OpcionesPanel = $Panel/PanelContainer/Opciones
@onready var GuardarPartidaPanel = $Panel/PanelContainer/GuardarPartida
func _on_personajes_pressed():
	PersonajesPanel.show()
	ObjetosPanel.hide()
	OpcionesPanel.hide()
	GuardarPartidaPanel.hide()


func _on_objetos_pressed():
	PersonajesPanel.hide()
	ObjetosPanel.show()
	OpcionesPanel.hide()
	GuardarPartidaPanel.hide()


func _on_opciones_pressed():
	PersonajesPanel.hide()
	ObjetosPanel.hide()
	OpcionesPanel.show()
	GuardarPartidaPanel.hide()


func _on_guardar_partida_pressed():
	PersonajesPanel.hide()
	ObjetosPanel.hide()
	OpcionesPanel.hide()
	GuardarPartidaPanel.show()

func _input(event):
	var buttonPress = event.is_action_pressed("pause")
	if buttonPress == true:
		if pauseIsActive == false:
			print('active')
			Parent.show()
			pauseIsActive = true
			Engine.time_scale = 0
			TimeSystem.pause = true
		else:
			pauseIsActive = false
			Parent.hide()
			print('false')
			Engine.time_scale = 1
			TimeSystem.pause = false
