extends Node

onready var StateManager: Node = get_node("StateManager")
onready var GameManager: Node = get_node("GameManager")
onready var UIManager: Node = get_node("UIManager")

func _ready() -> void:
	StateManager.init(GameManager, UIManager)
	GameManager.init(StateManager, UIManager)
	UIManager.init(GameManager, StateManager)
