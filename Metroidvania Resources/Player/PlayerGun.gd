extends Node2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
# warning-ignore:unused_argument
func _process(delta):
	var player = get_parent()
	rotation = player.get_local_mouse_position().angle()
