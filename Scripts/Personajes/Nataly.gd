extends CharacterBody2D

var LastMove

@onready var Nataly = $"."
func _ready():
	if Variables.OS_NAME == "Android" || Variables.OS_NAME == "iOS" || Input.is_joy_known(1):
		MobileControls.connect("move", joystick)
		print("Conectado al joystick")
		Variables.isControl = false

func _physics_process(delta):
	if(Variables.isControl == false):
		var direccion = Input.get_vector("ui_left", "ui_right", "ui_up","ui_down")
		velocity = direccion * 235
		move_and_slide()
		if direccion.x > 0:
			right_anime()
		if direccion.x < 0:
			left_anime()
		if direccion.y > 0:
			up_anime()
		if direccion.y < 0:
			down_anime()
		if direccion.x == 0 && direccion.y == 0:
			stop()
		
func joystick(direccion):
	if(Variables.isControl == true):
		velocity = direccion * 235
		move_and_slide()
		
		if direccion.x > 0.75:
			right_anime()
		if direccion.x < -0.75:
			left_anime()
		if direccion.y > 0.75:
			up_anime()
		if direccion.y < -0.75:
			down_anime()
		if direccion.x == 0 && direccion.y == 0:
			stop()

	
@onready var FrenteG = $Frente
@onready var FrenteA = $Frente/Frente
@onready var FrenteS = $Frente/FrenteStop
@onready var EspaldaG = $Espalda
@onready var EspaldaA = $Espalda/Espalda
@onready var EspaldaS = $Espalda/EspaldaStop
@onready var IzquierdaG = $Izquierda
@onready var IzquierdaA = $Izquierda/Izquierda
@onready var IzquierdaS = $Izquierda/IzquierdaStop
@onready var DerechaG = $Derecha
@onready var DerechaA = $Derecha/Derecha
@onready var DerechaS = $Derecha/DerechaStop

func stop():
	DerechaA.stop()
	IzquierdaA.stop()
	FrenteA.stop()
	EspaldaA.stop()
	DerechaA.hide()
	IzquierdaA.hide()
	FrenteA.hide()
	EspaldaA.hide()
	DerechaS.hide()
	IzquierdaS.hide()
	FrenteS.hide()
	EspaldaS.hide()
	match LastMove:
		"frente":
			FrenteS.show()
		"espalda":
			EspaldaS.show()
		"izquierda":
			IzquierdaS.show()
		"derecha":
			DerechaS.show()
		_:
			FrenteS.show()
	
func left_anime():
	LastMove = "izquierda"
	if TimeSystem.pause == false:
		DerechaS.hide()
		IzquierdaS.hide()
		FrenteS.hide()
		EspaldaS.hide()
		DerechaA.hide()
		FrenteA.hide()
		EspaldaA.hide()
		IzquierdaA.show()
		IzquierdaA.play()
	
func right_anime():
	LastMove = "derecha"
	if TimeSystem.pause == false:
		DerechaS.hide()
		IzquierdaS.hide()
		FrenteS.hide()
		EspaldaS.hide()
		IzquierdaA.hide()
		FrenteA.hide()
		EspaldaA.hide()
		DerechaA.show()
		DerechaA.play()
	
func down_anime():
	LastMove = "espalda"
	if TimeSystem.pause == false:
		DerechaS.hide()
		IzquierdaS.hide()
		FrenteS.hide()
		EspaldaS.hide()
		DerechaA.hide()
		IzquierdaA.hide()
		FrenteA.hide()
		EspaldaA.show()
		EspaldaA.play()
	
func up_anime():
	LastMove = "frente"
	if TimeSystem.pause == false:
		DerechaS.hide()
		IzquierdaS.hide()
		FrenteS.hide()
		EspaldaS.hide()
		DerechaA.hide()
		IzquierdaA.hide()
		EspaldaA.hide()
		FrenteA.show()
		FrenteA.play()
	
