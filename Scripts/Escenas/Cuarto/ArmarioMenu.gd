extends StaticBody2D

var activeButton = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	pass

func _on_area_2d_body_entered(body):
	print('ok')
	activeButton = true
	pass # Replace with function body.


func _on_area_2d_body_exited(body):
	print('bye')
	activeButton = false
	pass # Replace with function body.
