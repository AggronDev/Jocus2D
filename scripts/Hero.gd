extends Area2D

onready var anima = get_node("AnimaHero")
var animacao = "idle"

func _ready():
	anima.play(animacao)
	# Called every time the node is added to the scene.
	# Initialization here
	pass
