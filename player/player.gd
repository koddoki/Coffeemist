extends CharacterBody2D

@export var speed : float = 300
@onready var animatedSprite : = $AnimatedSprite2D


func _physics_process(delta):
	var direction = Input.get_vector("Left", "Rigth", "Up", "Down").normalized()
	velocity = direction * speed if direction != Vector2.ZERO else direction
	
	move_and_slide()
	animation(direction)
	direction(direction)
	
	scale = Vector2.ONE * (position.y / 768) * 1.25


func animation(direction : Vector2):
	var isMoving : bool = !(direction == Vector2.ZERO)
	if (isMoving):
		animatedSprite.play("moving")
	else:
		animatedSprite.play("idle")


func direction(direction : Vector2):
	if (direction.x > 0):
		animatedSprite.flip_h = false
	if (direction.x < 0):
		animatedSprite.flip_h = true
