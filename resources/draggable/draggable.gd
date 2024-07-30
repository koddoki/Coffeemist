extends Area2D

var draggable : bool = false
var max_velocity : Vector2 = Vector2(800,800)


func _ready():
	mouse_entered.connect(_on_area_2d_mouse_entered)
	mouse_exited.connect(_on_area_2d_mouse_exited)


func _process(delta):
	if Input.is_action_pressed("click") and draggable:
		get_parent().global_position = get_global_mouse_position()
		get_parent().linear_velocity = Input.get_last_mouse_velocity().clamp(-max_velocity,max_velocity)
	


func _on_area_2d_mouse_entered():
	get_parent().get_node("Sprite2D").scale *= 1.05
	print("entered")
	draggable = true


func _on_area_2d_mouse_exited():
	get_parent().get_node("Sprite2D").scale /= 1.05
	print("exited")
	draggable = false
