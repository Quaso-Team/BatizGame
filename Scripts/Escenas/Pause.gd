extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	TimeSystem.pause = false
	if Variables.OS_NAME == "Android" || Variables.OS_NAME == "iOS":
		MobileControls.show_controls_mobile()
	else:
		MobileControls.hide_controls_mobile()

@onready var TextLabel = $Label
func _process(delta):
	TextLabel.text = TimeSystem.get_date()

@onready var Audio = $AudioStreamPlayer
func _on_audio_stream_player_finished():
	await get_tree().create_timer(3).timeout
	Audio.play()
