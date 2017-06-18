extends Area2D
var vel = 70
onready var anima = get_node("Bola de fogo")
export var canon_disp = false
var animacao = "fireing"
var disabled = false
func _ready():
	anima.play(animacao)
	set_process(true)
	pass
func _process(delta):
	disparo(delta)
func disparo(delta):
	set_pos(get_pos()+Vector2(-1,0)*vel*delta)
	if get_pos().x < 30:
		queue_free()
		print("somiu!!")
	pass
func disabled():
	if (disabled):
		return
	get_node("anima").play("aguaing")
	disabled = true
func _on_canon_area_enter( area ):
	if area.is_in_group(Global.INIMIGOS):
		anima.play("aguaing")
		
		pass
	pass 
