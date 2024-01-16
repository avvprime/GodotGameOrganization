extends Node


func _on_UIBtn_pressed(btn_id: int) -> void:
	Global.game_state._on_UIBtn_pressed(btn_id)
