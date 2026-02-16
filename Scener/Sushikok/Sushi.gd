extends Sprite2D

var gravity = -2000
var spin = randi_range(-10, 10)
var felt = randi_range(1, 4)
var landing = 200 + (felt * 200)
var xBoost = 1500 + (felt * 50)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Area2D.area_entered.connect(onAreaEntered)
	#position.x = landing / 2 + 800


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.y += gravity * delta
	rotation += spin * delta
	gravity += 20
	if gravity > 0:
		position.x += ((landing - position.x) / 0.8) * delta
		if (position.y > 600 && gravity > 0):
			queue_free()
	else:
		position.x -= ((xBoost - position.x) / 1) * delta

func onAreaEntered(area:Area2D) -> void:
	print(area, "Haps!")
	queue_free()
