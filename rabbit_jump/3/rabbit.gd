extends CharacterBody2D

var speed = 300
var gravity = 300
var JUMP = -3000

func _physics_process(delta):
	if Input.is_action_pressed("right"):
		velocity.x = speed
		$Sprite2D.play("walk")
		$Sprite2D.flip_h = false
		
	elif Input.is_action_pressed("left"):
		velocity.x = -speed
		$Sprite2D.play("walk")
		$Sprite2D.flip_h = true
		
	else:
		$Sprite2D.play("idle")
		
	if not is_on_floor():
		$Sprite2D.play("jump")
		
	if Input.is_action_pressed("jump") and is_on_floor():
		velocity.y = JUMP
		$Sprite2D.play("jump")
		

		
	velocity.y = velocity.y + gravity
	velocity.x = lerpf(velocity.x, 0, 0.1)
	
	
	move_and_slide()

		
	
		

	


