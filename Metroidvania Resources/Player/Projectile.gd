extends Node2D

const ExplosionEffect = preload("res://Metroidvania Resources/Effects/ExplosionEffect.tscn")

var velocity = Vector2.ZERO

func _process(delta):
	position += velocity * delta

# warning-ignore:unused_argument
func _on_VisibilityNotifier2D_viewport_exited(viewport):  # it is a function from a signal so it has to have viewport
	queue_free() # bullets die out so it is not kept in memory

# warning-ignore:unused_argument
func _on_Hitbox_body_entered(body):
	Utils.instance_scene_on_main(ExplosionEffect, global_position)
	queue_free()

# warning-ignore:unused_argument
func _on_Hitbox_area_entered(area):
	Utils.instance_scene_on_main(ExplosionEffect, global_position)
	queue_free()
