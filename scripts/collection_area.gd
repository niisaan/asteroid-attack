extends Area2D

@onready var collect_sound: AudioStreamPlayer2D = $CollectSound

# func _ready():
	# collect_sound = $CollectSound
	# collect_sound = get_node("CollectSound")

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("asteroids"):
		print("Asteroids are collected")
		body.queue_free()
		collect_sound.play()
	else:
		print("Not an asteroid")
