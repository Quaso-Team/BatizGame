extends HSlider

@export
var bus_name: String

var bus_index: int
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	bus_index = AudioServer.get_bus_index(bus_name)
	value_changed.connect(_on_value_changed)
		
	match bus_name:
		"Master":
			value = Variables.CONFIG_DATA.VOLUME.Master
		"Music":
			value = Variables.CONFIG_DATA.VOLUME.Music
		"Sfx": 
			value = Variables.CONFIG_DATA.VOLUME.Sfx
		_:
			value = db_to_linear(
					AudioServer.get_bus_volume_db(bus_index)
			)

func _on_value_changed(value):
	AudioServer.set_bus_volume_db(
		bus_index,
		linear_to_db(value)
	)
	match bus_name:
		"Master":
			Variables.CONFIG_DATA.VOLUME.Master = value
			Addonsave.save_data_not_encrypt(Variables.CONFIG_DATA, "game", ".config")
		"Music":
			Variables.CONFIG_DATA.VOLUME.Music = value
			Addonsave.save_data_not_encrypt(Variables.CONFIG_DATA, "game", ".config")
		"Sfx": 
			Variables.CONFIG_DATA.VOLUME.Sfx = value
			Addonsave.save_data_not_encrypt(Variables.CONFIG_DATA, "game", ".config")
	
	
	print("Value Changed to ", value)
