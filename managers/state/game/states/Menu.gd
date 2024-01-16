extends GameState


func _ready() -> void:
	pass

func enter() -> void:
	print("GAME MENU STATE STARTED")
	UIManager.on_game_menu_state_enter()

func exit() -> void:
	UIManager.on_game_menu_state_exit()
	print("GAME MENU STATE FINISHED")

func _on_UIBtn_pressed(btn_id: int) -> void:
	match btn_id:
		Global.BUTTONS.PLAY_IN_MAIN:
			StateManager.change_state(StateManager.States.LEVELS)
		Global.BUTTONS.SETTINGS_IN_MAIN:
			StateManager.change_state(StateManager.States.SETTINGS)
		Global.BUTTONS.SHOP_IN_MAIN:
			StateManager.change_state(StateManager.States.SHOP)
