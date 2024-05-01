extends Node2D

func _ready():
	pass # Replace with function body.

func _process(delta):
	$Alvo.position.x = get_local_mouse_position().x
	$Alvo.position.y = get_local_mouse_position().y
