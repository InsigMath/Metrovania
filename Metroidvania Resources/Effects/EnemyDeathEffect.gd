extends Node2D

func _ready():
	SoundFx.play("EnemyDie", 1, -15)

func _on_DustEffect11_tree_exited():
	queue_free()
