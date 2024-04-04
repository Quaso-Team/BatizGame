extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
	var evento = event.is_action_pressed("pause")
	if evento == true: 
		print("oli")
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
