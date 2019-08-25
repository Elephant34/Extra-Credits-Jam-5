extends MarginContainer


func _on_BackButton_pressed():
	if globals.credits_location == "MainMenu":
		get_tree().change_scene("res://scenes/mainMenu/MainMenu.tscn")
	else:
		get_tree().change_scene("res://scenes/gameScene/gameScene.tscn")
