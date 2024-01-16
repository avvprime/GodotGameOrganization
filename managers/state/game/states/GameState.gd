class_name GameState extends Node

var StateManager: Node = null
var UIManager: Node = null
var GameManager: Node = null

func _ready() -> void:
	StateManager = owner

func enter() -> void:
	pass

func exit() -> void:
	pass

func _on_UIBtn_pressed(btn_id: int) -> void:
	pass
