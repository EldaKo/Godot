extends Area2D


func _physics_process(delta):
	$AnimatedSprite2D.play("default")


func _on_body_entered(body):
	queue_free()
	Global.score +=5
