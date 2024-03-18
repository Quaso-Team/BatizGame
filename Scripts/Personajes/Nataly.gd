extends CharacterBody2D

func _physics_process(delta):
	var direccion = Input.get_vector("ui_left", "ui_right", "ui_up","ui_down")
	
	velocity = direccion * 235
	move_and_slide()
