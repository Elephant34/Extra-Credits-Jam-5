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
	
	if not movement:
		$AnimatedSprite.stop()
	else:
		$AnimatedSprite.play(movement)

func _physics_process(delta):
	get_input()
	var collision = move_and_slide(velocity)

