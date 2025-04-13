extends PathFollow2D
var v = 0.1

func _process(delta):
	progress_ratio += delta * v
