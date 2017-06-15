extends Area2D

onready var Anim = get_node("BOSS")
var cannon
var rocket
var resp = false
var destroyed = false

func _ready():
	Anim.play("idle")
	pass

