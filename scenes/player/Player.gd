extends KinematicBody2D

export (int) var speed = 200

var velocity = Vector2()

var movement = ""

func get_input():
	movement = ""
	velocity = Vector2()
	if Input.is_action_pressed('right'):
		movement += "Right"
		velocity.x += 1
	if Input.is_action_pressed('left'):
		movement += "Left"
		velocity.x -= 1
	if Input.is_action_pressed('down'):
		movement += "Down"
		velocity.y += 1
	if Input.is_action_pressed('up'):
		movement += "Up"
		velocity.y -= 1

	velocity = velocity.normalized() * speed
	
	if not movement or ("Left" in movement and "Right" in movement) or ("Up" in movement and "Down" in movement):
		$AnimatedSprite.stop()
	else:
		$AnimatedSprite.play(movement)

func _physics_process(delta):
	get_input()
	var collision = move_and_slide(velocity)
	globals.player_pos = self.position
	$test_pos_label.text = str(self.position)

