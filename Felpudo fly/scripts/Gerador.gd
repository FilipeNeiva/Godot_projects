extends Position2D

onready var cano = preload("res://scenes/Cano.tscn")

func _ready():
	randomize()


func _on_Timer_timeout():
	var novocano = cano.instance()
	novocano.position.x = position.x
	novocano.position.y = rand_range(position.y  + (-500), position.y + 500)
	get_parent().add_child(novocano)
