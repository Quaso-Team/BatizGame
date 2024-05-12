extends DirectionalLight2D

@onready var Light = $"."
# Called when the node enters the scene tree for the first time.
func _ready():
	var device = OS.get_name()
	print(device)
	if device == "Android":
		energy = 0.6
	
