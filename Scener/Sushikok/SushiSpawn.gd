extends Node2D

const sushi = preload("res://Scener/Sushikok/FaldendeSushi.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Timer.timeout.connect(onTimeout)
	$Timer.start()

func onTimeout() -> void:
	var instans = sushi.instantiate()
	add_child(instans)
	instans.position.x = 1500
	instans.position.y = 500
