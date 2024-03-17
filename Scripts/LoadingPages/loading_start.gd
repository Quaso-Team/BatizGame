extends Node2D

@onready var anime = $AnimationPlayer
@onready var temp = $Timer
# Called when the node enters the scene tree for the first time.
func _ready():
	anime.play("LoadingPage")
	temp.start()
	pass # Replace with function body.


func _on_timer_timeout():
	get_tree().quit()
	pass # Replace with function body.
