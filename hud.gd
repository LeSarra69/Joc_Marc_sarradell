extends CanvasLayer

var patostocats = 0

func _ready():
	$punts.text = "Puntuació: " + str(patostocats)
	
func _process(delta):
	pass





func _on_anec_body_entered(body: Node2D) -> void:
	patostocats = patostocats+ 1
	$punts.text = "Puntuació: " + str(patostocats)
	if patostocats == 10:
		get_tree().change_scene_to_file("res://nou/final.tscn")
		
