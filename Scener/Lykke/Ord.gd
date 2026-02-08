extends Area2D

var hover = false

func _input_event(viewport: Viewport, event: InputEvent, shape_idx: int):
	if event is InputEventMouseButton and event.pressed:
		hover = true
		print(hover)
		
func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.pressed and hover:
		global_position = get_global_mouse_position()
		hover = false
		print(hover)
