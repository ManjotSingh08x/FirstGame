extends Area2D

@onready var timer = $Timer

func _on_timer_timeout():
	get_tree().reload_current_scene()# Replace with function body.
	Engine.time_scale = 1

func _on_body_entered(body):
	body.get_node("CollisionShape2D").queue_free()
	timer.start()
	print("You died")
	Engine.time_scale = 0.5
