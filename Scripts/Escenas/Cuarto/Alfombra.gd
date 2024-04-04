extends StaticBody2D

var active = false

signal puerta_1
signal puerta_c

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if active == true:
		var input = Input.is_action_just_pressed("ui_accept")
		if input == true:
			Variables.DATA_GAME.locate.escene = "escuela1"
			get_tree().change_scene_to_file("res://Escenas/loading_start.tscn")
	else:
		emit_signal("puerta_c")



func _on_area_2d_body_entered(body):
	active = true


