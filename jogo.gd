extends Node2D

@export var velocidade: int
func _process(delta: float) -> void:
	
	#contante desloca o sprite pra esquerda
	$fundo.position.x -= velocidade*delta*0.5
	$fundo2.position.x -= velocidade*delta*0.5
	if $fundo.position.x < -1152:
		$fundo.position.x = -1152
	if $fundo2.position.x < -1152:
		$fundo2.position.x = 1152
	
	#contante desloca o sprite prra esquerda
	$chao.position.x -= velocidade*delta*2
	$chao2.position.x -= velocidade*delta*2
	if $chao.position.x < -1152: # se o fundo sair de cena pela esquerda
		$chao.position.x = -1152 #coloque ele após a cena na direita
	if $chao2.position.x < -1152:
		$chao2.position.x = 1152
		$Fundo.position.x   -= velocidade*delta*0.05
		$Fundo2.position.x  -= velocidade*delta*0.05
		$Chao.position.x    -= velocidade*delta*2
		$Chao2.position.x   -= velocidade*delta*2
