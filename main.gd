extends Node2D

var patosNaTela
var pato = preload("res://pato.tscn")
var flyAway = 0
var capturados = 0

func _ready():
	$gerapato.start()		

func _process(_delta):
	$HUD/Label.text = str(capturados)
	
	$Alvo.position.x = get_local_mouse_position().x
	$Alvo.position.y = get_local_mouse_position().y	

func nasce():
	var novoP = pato.instantiate()
	add_child(novoP)
	novoP.position.x = randf_range(50, 700)
	novoP.position.y = 700
	
func _on_gerapato_timeout():
	patosNaTela = int(randf_range(1,6))
	for n in patosNaTela:
		nasce()


func _on_espera_timeout():
	$novoTurno.play()
	$gerapato.start()


func _on_topo_body_entered(_body):
	$flyAway.play()
	flyAway = 1
	patosNaTela -= 1
	atualizaTurno()
	
func _on_chao_body_entered(_body):
	$colidiu.play()
	capturados += 1
	patosNaTela -= 1
	atualizaTurno()
	
func atualizaTurno():
	if(patosNaTela == 0):
		$espera.start()
		if(flyAway == 1):
			$cao.play("rindo");
			$cao_rindo.play()
			flyAway = 0
			capturados = 0
		else:
			$cao.play("captura")
			$cao_captura.play()
		
func _on_button_pressed():
	get_tree().change_scene_to_file("res://title_scene.tscn")
