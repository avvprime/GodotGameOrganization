extends GameState


func _ready() -> void:
	pass

func enter() -> void:
	print("GAME INIT STATE STARTED")
	UIManager.on_game_init_state_enter()
	
	var callback_func: FuncRef = funcref(StateManager, "change_state")
	GameManager.wait_for_a_while(callback_func, 1.0, StateManager.States.MENU)

func exit() -> void:
	UIManager.on_game_init_state_exit()
	print("GAME INIT STATE FINISHED")
