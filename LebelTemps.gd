extends CanvasLayer
var tiempo_jugado := 0.0  # tiempo en segundos

func _process(delta):
	tiempo_jugado += delta  # suma el tiempo desde el último frame
	var minuts = int(tiempo_jugado) / 60
	var segons = int(tiempo_jugado) % 60
	$tempsLabel.text = "Tiempo: %02d:%02d" % [minuts, segons]
