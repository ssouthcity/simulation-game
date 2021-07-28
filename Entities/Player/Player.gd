extends KinematicBody2D


export var movement_speed := 200.0


func _physics_process(_delta: float) -> void:
	var direction := get_direction()
	move_and_slide(direction * movement_speed)


func get_direction() -> Vector2:	
	var x_strength := (Input.get_action_strength("right") - Input.get_action_strength("left"))
	var y_strength := Input.get_action_strength("down") - Input.get_action_strength("up")
	
	return Vector2(x_strength * 2, y_strength).normalized()
