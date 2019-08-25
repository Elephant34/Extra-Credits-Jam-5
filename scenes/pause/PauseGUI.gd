extends Control

var game_scene = preload("res://scenes/gameScene/GameScene.tscn")

func _ready():
	globals.credits_location = "Pause"
	

func _process(delta):
	if Input.is_action_just_pressed("pause"):
		get_tree().change_scene_to(game_scene)


func _on_ResumeButton_pressed():
	get_tree().change_scene_to(game_scene)


func _on_CreditsButton_pressed():
	get_tree().change_scene("res://scenes/credits/Credits.tscn")


func _on_QuitButton_pressed():
	get_tree().change_scene("res://scenes/mainMenu/MainMenu.tscn")
