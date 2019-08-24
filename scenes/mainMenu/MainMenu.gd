extends MarginContainer


func _on_CreditsButton_pressed():
	get_tree().change_scene("res://scenes/credits/Credits.tscn")


func _on_QuitButton_pressed():
	get_tree().quit()
