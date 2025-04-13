extends Node2D
var punts = 0

func _ready() -> void:
	pass
	
func IncrementarPuntos(): 
	punts += 1
	get_node("MarginContainer/VBoxContainer/LabelPuntos").text = "Puntuació:" + str(punts)
