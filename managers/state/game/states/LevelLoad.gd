extends GameState



func _ready() -> void:
	pass

func enter() -> void:
	print("GAME LEVEL LOAD STATE STARTED")
	UIManager.on_game_level_load_state_enter()
	
	var callback: FuncRef = funcref(StateManager, "change_state")
	GameManager.wait_for_a_while(callback, 1.0, StateManager.States.LEVEL_PLAY)

func exit() -> void:
	UIManager.on_game_level_load_state_exit()
	print("GAME LEVEL LOAD STATE FINISHED")
