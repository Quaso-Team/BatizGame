extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	TimeSystem.pause = false
	if Variables.OS_NAME == "Android" || Variables.OS_NAME == "iOS":
		var pauseEscene = preload("res://Escenas/Assets/Interfaces/PausaMobile.tscn").instantiate()
		await get_tree().create_timer(0.1).timeout
		get_tree().root.add_child(pauseEscene)
		MobileControls.show_controls_mobile()
	else:
		var pauseEscene = preload("res://Escenas/Assets/Interfaces/Pause2.tscn").instantiate()
		await get_tree().create_timer(0.1).timeout
		get_tree().root.add_child(pauseEscene)
		MobileControls.hide_controls_mobile()
	MobileControls.set_zoom(0.8,0.8)

@onready var TextLabel = $Label
func _process(delta):
	TextLabel.text = TimeSystem.get_date()

func _exit_tree():
	get_node("/root/Pausa").free()

func _input(event):
	if Variables.OS_NAME == "Android" || Variables.OS_NAME == "iOS":
		var input = event.is_action_pressed("ui_home")
		if input == true:
			get_node("/root/Pausa").show()
