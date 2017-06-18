extends Area2D
onready var Anim = get_node("BOSS")
var resp = false
var destroyed = false
const pre_canhao = preload ("res://scenes/prefabs/canhão.tscn")
var ultimoDisparo = 0
var intervalo = .8
var painel = preload ("res://scenes/prefabs/Painel.tscn")

func _ready():
	add_to_group(Global.INIMIGOS)
	set_process(true)
	Anim.play("idle")
	var canhao = pre_canhao.instance()
	pass
func _process(delta):
	if Input.is_action_pressed("ui_accept"):
		canon(delta)
	pass
func canon(delta):
	if ultimoDisparo <=0:
		var canhao = pre_canhao.instance()
		canhao.set_global_pos(get_node("body/arm_right/cannon/PositionCannon").get_global_pos())
		canhao.set_z(5)
		canhao.disparo(delta)
		get_owner().add_child(canhao)
		ultimoDisparo = intervalo
	pass
	if ultimoDisparo > 0:
		ultimoDisparo -= delta
		pass


