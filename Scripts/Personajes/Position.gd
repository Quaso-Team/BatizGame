extends Timer
@onready var Nataly = $".."

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_timeout():
	var position = Nataly.position
	var x = position.x
	var y = position.y
	Variables.DATA_GAME.locate.x = x
	Variables.DATA_GAME.locate.y = y
	print(position)
