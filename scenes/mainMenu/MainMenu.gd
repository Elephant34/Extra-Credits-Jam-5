extends MarginContainer

var game_scene = preload("res://scenes/gameScene/GameScene.tscn")

func _ready():
	globals.credits_location = "MainMenu"

func _on_CreditsButton_pressed():
	get_tree().change_scene("res://scenes/credits/Credits.tscn")


func _on_QuitButton_pressed():
	get_tree().quit()


func _on_PlayButton_pressed():
	get_tree().change_scene_to(game_scene)
