extends Node

@export var mob_scene: PackedScene
var score

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func game_over() -> void:
	$Player/ScoreTimer.stop()
	$MobTimer.stop()
	
func new_game():
	score = 0
	$Player.start($Player/StartPosition.position)
	$StartTimer.start()

func _on_score_timer_timeout():
	score += 1
	
func _on_start_timer_timeout():
	$MobTimer.start()
	$ScoreTimer.start()
