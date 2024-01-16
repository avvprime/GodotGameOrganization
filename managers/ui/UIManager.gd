extends Node

onready var UI: CanvasLayer = get_node("UI")

var GameManager: Node
var StateManager: Node

func _ready() -> void:
	pass

func init(game_manager: Node, state_manager: Node) -> void:
	GameManager = game_manager
	StateManager = state_manager

func on_game_init_state_enter() -> void:
	UI.Splash.show()

func on_game_init_state_exit() -> void:
	UI.Splash.hide()

func on_game_menu_state_enter() -> void:
	UI.MainMenu.show()

func on_game_menu_state_exit() -> void:
	UI.MainMenu.hide()

func on_game_levels_state_enter() -> void:
	UI.Levels.show()

func on_game_levels_state_exit() -> void:
	UI.Levels.hide()

func on_game_shop_state_enter() -> void:
	UI.Shop.show()

func on_game_shop_state_exit() -> void:
	UI.Shop.hide()

func on_game_settings_state_enter() -> void:
	UI.Settings.show()

func on_game_settings_state_exit() -> void:
	UI.Settings.hide()

func on_game_level_load_state_enter() -> void:
	UI.Transition.show()

func on_game_level_load_state_exit() -> void:
	UI.Transition.hide()

