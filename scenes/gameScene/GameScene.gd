extends Node2D

func _ready():
	if globals.player_pos != Vector2(0,0):
		$Player.position = globals.player_pos

func _process(delta):
	if Input.is_action_just_pressed("pause"):
		get_tree().change_scene("res://scenes/pause/PauseGUI.tscn")
