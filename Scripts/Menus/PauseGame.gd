extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


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
