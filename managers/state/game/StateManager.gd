extends Node


onready var States: Dictionary = {
	"INIT": preload("res://managers/state/game/states/Inıt.gd").new(),
	"MENU": preload("res://managers/state/game/states/Menu.gd").new(),
	"SHOP": preload("res://managers/state/game/states/Shop.gd").new(),
	"SETTINGS": preload("res://managers/state/game/states/Settings.gd").new(),
	"LEVELS": preload("res://managers/state/game/states/Levels.gd").new(),
	"LEVEL_LOAD": preload("res://managers/state/game/states/LevelLoad.gd").new(),
	"LEVEL_PLAY": preload("res://managers/state/game/states/LevelPlay.gd").new(),
	"LEVEL_PAUSE": preload("res://managers/state/game/states/LevelPause.gd").new(),
	"LEVEL_WIN": preload("res://managers/state/game/states/LevelWin.gd").new(),
	"LEVEL_LOSE": preload("res://managers/state/game/states/LevelLose.gd").new(),
	"LEVEL_RESTART": preload("res://managers/state/game/states/LevelRestart.gd").new(),
	"CUT_SCENE": preload("res://managers/state/game/states/CutScene.gd").new(),
	"AD_BREAK": preload("res://managers/state/game/states/AdBreak.gd").new(),
}


var GameManager: Node
var UIManager: Node

func _ready() -> void:
	pass

func init(game_manager: Node, ui_manager: Node) -> void:
	for state in States:
		var _state = States[state]
		_state.GameManager = game_manager
		_state.UIManager = ui_manager
		_state.StateManager = self
	change_state(States.INIT)

func change_state(new_state: GameState) -> void:
	if Global.game_state: Global.game_state.exit()
	Global.game_state = new_state
	Global.game_state.enter()

