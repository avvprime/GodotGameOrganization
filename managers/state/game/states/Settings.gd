extends GameState


func _ready() -> void:
	pass

func enter() -> void:
	print("GAME SETTINGS STATE STARTED")
	UIManager.on_game_settings_state_enter()

func exit() -> void:
	UIManager.on_game_settings_state_exit()
	print("GAME SETTINGS STATE FINISIHED")

func _on_UIBtn_pressed(btn_id) -> void:
	match btn_id:
		Global.BUTTONS.BACK_IN_SETTINGS:
			StateManager.change_state(StateManager.States.MENU)
