extends MarginContainer

var pause_scene = preload("res://scenes/pause/PauseGUI.tscn")

func _on_BackButton_pressed():
	if globals.credits_location == "MainMenu":
		get_tree().change_scene("res://scenes/mainMenu/MainMenu.tscn")
	else:
		get_tree().change_scene_to(pause_scene)
