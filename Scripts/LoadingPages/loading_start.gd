extends Node2D

@onready var anime = $AnimationPlayer
@onready var temp = $Timer
# Called when the node enters the scene tree for the first time.
func _ready():
	anime.play("LoadingPage")
	temp.start()
	pass # Replace with function body.


func _on_timer_timeout():
	var data_game = Variables.DATA_GAME
	var escene = data_game.locate.escene
	if escene == "cuarto_nataly":
		get_tree().change_scene_to_file("res://Escenas/cuarto_nataly.tscn")
		pass
	else: 
		get_tree().change_scene_to_file("res://Escenas/Menu.tscn")
		pass
	pass # Replace with function body.
