extends Node2D


@onready var pivot = $Player/Pivot
@onready var pointA = $PointA.transform.y
@onready var pointB = $PointB.transform.y

@export var scalePointA = 1.0
@export var scalePointB = 5.0



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
