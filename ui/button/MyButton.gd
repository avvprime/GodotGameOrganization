extends Button

export(Global.BUTTONS) var id

func _ready() -> void:
	self.connect("pressed", Messenger, "_on_UIBtn_pressed", [id])
