extends Node2D



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_tree().paused = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_player_gamepass() -> void:
	get_tree().paused = true
	#timer.start()
	await get_tree().create_timer(1).timeout
	get_tree().change_scene_to_file("res://场景/ready.tscn")
	#get_tree().paused = false
