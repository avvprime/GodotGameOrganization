extends GameState


func _ready() -> void:
	pass

func enter() -> void:
	print("GAME LEVELS STATE STARTED")
	UIManager.on_game_levels_state_enter()


func exit() -> void:
	UIManager.on_game_levels_state_exit()
	print("GAME LEVELS STATE FINISHED")

func _on_UIBtn_pressed(btn_id) -> void:
	match btn_id:
		Global.BUTTONS.BACK_IN_LEVELS:
			StateManager.change_state(StateManager.States.MENU)
		Global.BUTTONS.LOAD_LEVEL_IN_LEVELS:
			StateManager.change_state(StateManager.States.LEVEL_LOAD)
