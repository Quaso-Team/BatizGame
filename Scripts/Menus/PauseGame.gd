extends Control
var notPause = true

@onready var Parent = $"."
# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	

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
	if notPause == false:
		if buttonPress == true:
			Parent.show()
		else:
			Parent.hide()
	else:
		Parent.hide()
