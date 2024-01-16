extends Node

onready var States: Dictionary = {
	"INIT": $Init as Node,
	"MENU": $Menu as Node,
	"SHOP": $Shop as Node,
	"SETTINGS": $Settings as Node,
	"LEVELS": $Levels as Node,
	"LEVEL_LOAD": $LevelLoad as Node,
	"LEVEL_PLAY": $LevelPlay as Node,
	"LEVEL_PAUSE": $LevelPause as Node,
	"LEVEL_WIN": $LevelWin as Node,
	"LEVEL_LOSE": $LevelLose as Node,
	"LEVEL_RESTART": $LevelRestart as Node,
	"CUT_SCENE": $CutScene as Node,
	"AD_BREAK": $AdBreak as Node
}

var GameManager: Node
var UIManager: Node

func _ready() -> void:
	pass

func init(game_manager: Node, ui_manager: Node) -> void:
	for state in States:
		States[state].GameManager = game_manager
		States[state].UIManager = ui_manager 
	change_state(States.INIT)

func change_state(new_state: Node) -> void:
	if Global.game_state: Global.game_state.exit()
	Global.game_state = new_state
	Global.game_state.enter()
