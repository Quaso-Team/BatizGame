extends CharacterBody2D


@onready var Nataly = $"."
func _physics_process(delta):
	var direccion = Input.get_vector("ui_left", "ui_right", "ui_up","ui_down")
	velocity = direccion * 235
	move_and_slide()
	
	if direccion.x == 0 || direccion.y == 0:
		stop()
	if direccion.x > 0:
		left_anime()
	if direccion.x < 0:
		right_anime()
	if direccion.y > 0:
		up_anime()
	if direccion.y < 0:
		down_anime()
		
@onready var Stop = $Stop
@onready var Frente = $Frente

func stop():
	Frente.hide()
	Frente.stop()
	Stop.show()
	
func left_anime():
	pass
	
func right_anime():
	pass
	
func down_anime():
	pass
	
func up_anime():
	if TimeSystem.pause == false:
		Stop.hide()
		Frente.show()
		Frente.play()
	
