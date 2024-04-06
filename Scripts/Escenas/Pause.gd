extends Node2D

var pauseEscene = preload("res://Escenas/Assets/Interfaces/Pause2.tscn").instantiate()
# Called when the node enters the scene tree for the first time.
func _ready():
	await get_tree().create_timer(0.01).timeout
	get_tree().root.add_child(pauseEscene)
	print('pausa')

func _exit_tree():
	get_node("/root/Pausa").free()
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
