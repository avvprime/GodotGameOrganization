extends Node

var StateManager: Node
var UIManager: Node

func _ready() -> void:
	pass

func init(state_manager: Node, ui_manager: Node) -> void:
	StateManager = state_manager
	UIManager = ui_manager

func load_level_world() -> void:
	var world_scene: PackedScene = load("res://game_world/GameWorld.tscn")
	var world: Node2D = world_scene.instance()
	call_deferred("add_child", world)
