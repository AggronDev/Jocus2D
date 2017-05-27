extends Area2D

var resposta_errada = true
onready var Anima = get_node("anim")
var destroyed = false
var nova_anima = "idle"



func _ready():
	Anima.play("idle")
	if resposta_errada:
		rocket_atack()
	

func rocket_atack():
	nova_anima = "rocket_atack"
	Anima.play(nova_anima)


	pass

