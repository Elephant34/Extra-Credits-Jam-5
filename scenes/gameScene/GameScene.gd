extends Node2D

func _ready():
	$Player.position = globals.player_pos

func _process(delta):
	if Input.is_action_pressed("pause"):
		get_tree().change_scene("res://scenes/pause/PauseGUI.tscn")
