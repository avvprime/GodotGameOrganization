extends GameState


func _ready() -> void:
	pass

func enter() -> void:
	print("GAME INIT STATE STARTED")
	UIManager.on_game_init_state_enter()
	yield(get_tree().create_timer(1.0), "timeout")
	StateManager.change_state(StateManager.States.MENU)

func exit() -> void:
	UIManager.on_game_init_state_exit()
	print("GAME INIT STATE FINISHED")
