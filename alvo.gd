extends Area2D

var patoAtual

func _ready():
	pass

func _on_body_entered(body):
		patoAtual = body

func _input(event):
	if Input.is_action_just_pressed("Atirar"):
		$AudioStreamPlayer2D.play()
		if patoAtual == null:
			print("sem pato por aqui")
		else:
			patoAtual.mata()
