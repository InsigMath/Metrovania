extends "res://Metroidvania Resources/Enemies/Enemy.gd"

const EnemyBullet = preload("res://Metroidvania Resources/Player/EnemyBullet.tscn")

export(int) var BULLET_SPEED = 30
export(float) var SPREAD = 30

onready var fireDirection = $FireDirection
onready var bulleetSpawnPoint = $BulletSpawnPoint

func fire_bullet():
	var bullet = Utils.instance_scene_on_main(EnemyBullet, bulleetSpawnPoint.global_position)
	var velocity = (fireDirection.global_position - global_position).normalized() * BULLET_SPEED
	velocity = velocity.rotated(deg2rad(rand_range(-SPREAD/2, SPREAD/2)))
	bullet.velocity = velocity
