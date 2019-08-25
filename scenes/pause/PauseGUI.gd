extends Control

func _process(delta):
	if Input.is_action_just_pressed("pause"):
		get_tree().change_scene("res://scenes/gameScene/gameScene.tscn")
