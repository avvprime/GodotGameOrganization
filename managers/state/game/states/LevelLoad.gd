extends GameState



func _ready() -> void:
	pass

func enter() -> void:
	print("GAME LEVEL LOAD STATE STARTED")
	UIManager.on_game_level_load_state_enter()
	
	
	yield(get_tree().create_timer(1.0), "timeout")
	StateManager.change_state(StateManager.States.LEVEL_PLAY)

func exit() -> void:
	UIManager.on_game_level_load_state_exit()
	print("GAME LEVEL LOAD STATE FINISHED")
