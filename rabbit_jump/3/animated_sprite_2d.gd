extends CharacterBody2D

var speed = 300
var gravity = 300
var JUMP = - 2000

func _physics_process(delta):
	
	if Input.is_action_pressed("right"):
		velocity.x = speed
	
	if Input.is_action_pressed("left"):
		velocity.x = -speed
		
	if Input.is_action_pressed("jump") and is_on_floor():
		velocity.y = JUMP
		
	
	
		
		
		
		
