extends KinematicBody2D

export var max_health := 5
export var speed := 150.0
var velocity := Vector2.ZERO#0,0
var direction = Vector2.RIGHT
var health = 5
var min_health = 1
onready var camera = get_node("/root/World/Player/Camera2D")

func _physics_process(delta):
	var input_direction = Vector2.ZERO
	input_direction.x = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	input_direction.y = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	speed = 150
	if input_direction != Vector2.ZERO:
		direction = input_direction.normalized()
		# update the animation based on the new direction
		if direction.x > 0 and direction.y <0:
			$AnimatedSprite.play("Running_UR")
		elif direction.x < 0 and direction.y >0:
			$AnimatedSprite.play("Running_DL")
		elif direction.y > 0 and direction.x >0:
			$AnimatedSprite.play("Running_DR")
		elif direction.y < 0 and direction.x <0:
			$AnimatedSprite.play("Running_UL")
		elif direction.x > 0:
			$AnimatedSprite.play("Running_R")
		elif direction.x < 0:
			$AnimatedSprite.play("Running_L")
		elif direction.y > 0:
			$AnimatedSprite.play("Running_D")
		elif direction.y < 0:
			$AnimatedSprite.play("Running_U")
	else:
		speed=0
		$AnimatedSprite.stop()
		if direction.x > 0 and direction.y<0:
			$AnimatedSprite.play("Idle_UR")
		elif direction.x < 0 and direction.y<0:
			$AnimatedSprite.play("Idle_UL")
		elif direction.y > 0 and direction.x<0:
			$AnimatedSprite.play("Idle_DL")
		elif direction.y < 0 and direction.x<0:
			$AnimatedSprite.play("Idle_DR")
		elif direction.x > 0:
			$AnimatedSprite.play("Idle_R")
		elif direction.x < 0:
			$AnimatedSprite.play("Idle_L")
		elif direction.y > 0:
			$AnimatedSprite.play("Idle_D")
		elif direction.y < 0:
			$AnimatedSprite.play("Idle_U")
	# move the AnimatedSprite based on the direction and speed
	move_and_slide(input_direction*150, Vector2.ZERO)
	
	
