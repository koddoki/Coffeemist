extends Node2D

var aref = null


func _process(delta):
	if Input.is_action_just_released("click") and aref != null and aref.draggable and aref.get_parent().name == "BEAM":
		aref.get_parent().queue_free()
		
		var tween = create_tween()
		for i in range(10):
			tween.tween_property($Sprite2D, "position", Vector2(randi_range(-5, 5), randi_range(-5, 5)), .1)
		
		await get_tree().create_timer(1).timeout
		
		var b = preload("res://resources/bow_of_beans/bow_of_beans.tscn")
		var open_beans = b.instantiate()
		open_beans.global_position = global_position
		get_parent().add_child(open_beans)
		


func _on_grinder_area_entered(area):
	aref = area


func _on_grinder_area_exited(area):
	aref = null
