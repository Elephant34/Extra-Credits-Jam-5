extends MarginContainer

var game_scene = preload("res://scenes/gameScene/GameScene.tscn")

func _on_BackButton_pressed():
	if globals.credits_location == "MainMenu":
		get_tree().change_scene("res://scenes/mainMenu/MainMenu.tscn")
	else:
		get_tree().change_scene_to(game_scene)
