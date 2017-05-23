extends Area2D

var resposta_errada = true
onready var Anima = get_node("anim")
var destroyed = false
var nova_anima = "idle"



func _ready():
	
	if resposta_errada:
		nova_anima = "rocket_atack"

	Anima.play(nova_anima)
	

func destroy():
	

	pass

