extends CharacterBody2D

var movement = Vector2(0, 0)
var speed = 150

func _physics_process(delta):
	if  Input.is_action_just_pressed("ui_right"):
		movement = Vector2(speed, 0)
	elif Input.is_action_just_pressed("ui_left"):
		movement= Vector2(-speed, 0)
	elif Input.is_action_just_pressed("ui_up"):
		movement = Vector2(0, -speed)
	elif Input.is_action_just_pressed("ui_down"):
		movement = Vector2(0, speed)
	elif Input.is_action_just_released("ui_right") or Input.is_action_just_released("ui_left") or Input.is_action_just_released("ui_up") or Input.is_action_just_released("ui_down"):
		movement = Vector2(0, 0)

		
		
	move_and_collide(movement * delta)
	move_and_slide()
