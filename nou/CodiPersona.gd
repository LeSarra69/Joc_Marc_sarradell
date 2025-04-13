extends CharacterBody2D

var velocitat:= 400
var gravetat := 900



func _process(delta: float) -> void:
	var direccio = Vector2.ZERO
	direccio.x = Input.get_axis("mou_esquerra", "mou_dreta")
	if Input.is_action_pressed("mou_dreta"):
		$Sprite2D.flip_h = true
	if Input.is_action_pressed("mou_esquerra"):
		$Sprite2D.flip_h = false

	velocity.x = direccio.x * velocitat
	velocity.y += gravetat * delta
	
	
	if Input.is_action_just_pressed("salta") and is_on_floor():
		velocity.y = -450
	
	move_and_slide()



	
	#$LeAmanecer/fill1. rotation += velocitat_angular * velocitat.x * delta
	#$LeAmanecer/fill2. rotation += velocitat_angular * velocitat.x * delta
