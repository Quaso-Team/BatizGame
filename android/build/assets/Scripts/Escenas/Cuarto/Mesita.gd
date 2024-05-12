extends StaticBody2D

@onready var Light = $PointLight2D
@onready var Light2 = $PointLight2D2
# Called when the node enters the scene tree for the first time.
func _ready():
	if OS.get_name() == "Android" || OS.get_name() == "iOS":
		Light.hide()
	else:
		Light2.hide()
		
