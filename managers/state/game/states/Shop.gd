extends GameState


func _ready() -> void:
	pass

func enter() -> void:
	print("GAME SHOP STATE STARTED")
	UIManager.on_game_shop_state_enter()

func exit() -> void:
	UIManager.on_game_shop_state_exit()
	print("GAME SHOP STATE FINISHED")

func _on_UIBtn_pressed(btn_id) -> void:
	match btn_id:
		Global.BUTTONS.BACK_IN_SHOP:
			StateManager.change_state(StateManager.States.MENU) 
