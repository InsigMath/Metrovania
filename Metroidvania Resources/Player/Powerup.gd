extends Area2D
class_name Powerup

var PlayerStats = ResourceLoader.PlayerStats

# Trying to follow a godot convention - this function will be used for all powerups
func _pickup():
	SoundFx.play("Powerup", 1, -15)
