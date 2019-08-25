extends KinematicBody2D

var following_player = true

export var speed = 195

func _process(delta):
	if globals.ghost_moving and following_player:
		var direction = (globals.player_pos - self.position).normalized()
		var collision = move_and_slide(direction*speed)