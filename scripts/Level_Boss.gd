extends CanvasLayer
 
const Boss = preload ("res://scripts/RoboBoss.gd")
onready var boss = Boss.new()

var resposta = false 

func _ready():
	set_process(true)
	pass




