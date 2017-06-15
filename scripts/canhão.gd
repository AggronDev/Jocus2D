extends Node2D

var vel = 100

func _ready():
	set_process(true)
	
	pass

func _process(delta):
	set_pos(get_pos()+Vector2(-1,0)*vel*delta)
	pass